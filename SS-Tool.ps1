# SS-Tool Downloader - Saves to real Downloads folder
$shell = New-Object -ComObject Shell.Application
$downloadsPath = $shell.Namespace('shell:Downloads').Self.Path

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " SS-Tool Downloader" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "`nFiles will be saved to your Downloads folder:" -ForegroundColor Yellow
Write-Host $downloadsPath -ForegroundColor White
Write-Host "`n"

$tools = @(
"1=SystemInformer=https://github.com/winsiderss/si-builds/releases/download/3.2.25275.112/systeminformer-build-canary-setup.exe",
"2=Everything=https://www.voidtools.com/Everything-1.4.1.1029.x64-Setup.exe",
"3=FTK Imager=https://d1kpmuwb7gvu1i.cloudfront.net/AccessData_FTK_Imager_4.7.1.exe",
"4=DIE Engine=https://github.com/horsicq/DIE-engine/releases/download/3.10/die_win64_portable_3.10_x64.zip",
"5=HxD Portable=https://mh-nexus.de/downloads/HxDPortableSetup.zip",
"6=PEStudio=https://www.winitor.com/tools/pestudio/current/pestudio.zip",
"7=Strings=https://download.sysinternals.com/files/Strings.zip",
"8=Luyten=https://github.com/deathmarine/Luyten/releases/download/v0.5.4_Rebuilt_with_Latest_depenencies/luyten-0.5.4.jar",
"9=Recaf=https://github.com/Col-E/Recaf/releases/download/2.21.14/recaf-2.21.14-J8-jar-with-dependencies.jar",
"10=ProcessExplorer=https://download.sysinternals.com/files/ProcessExplorer.zip",
"11=Autoruns=https://download.sysinternals.com/files/Autoruns.zip",
"12=ProcessMonitor=https://download.sysinternals.com/files/ProcessMonitor.zip",
"13=TCPView=https://download.sysinternals.com/files/TCPView.zip",
"14=Hayabusa=https://github.com/Yamato-Security/hayabusa/releases/download/v3.7.0/hayabusa-3.7.0-win-aarch64.zip",
"15=JournalTrace=https://github.com/spokwn/JournalTrace/releases/latest/download/JournalTrace.exe",
"16=PathsParser=https://github.com/spokwn/PathsParser/releases/latest/download/PathsParser.exe",
"17=BAMParser=https://github.com/spokwn/BAM-parser/releases/latest/download/BAMParser.exe",
"18=PrefetchParser=https://github.com/spokwn/prefetch-parser/releases/latest/download/PrefetchParser.exe",
"19=PcaSvcExecuted=https://github.com/spokwn/pcasvc-executed/releases/download/v0.8.7/PcaSvcExecuted.exe",
"20=ActivitiesCacheParser=https://github.com/spokwn/ActivitiesCache-execution/releases/download/v0.6.5/ActivitiesCacheParser.exe",
"21=Replaceparser=https://github.com/spokwn/Replaceparser/releases/latest/download/Replaceparser.exe",
"22=BamDeletedKeys=https://github.com/spokwn/BamDeletedKeys/releases/latest/download/BamDeletedKeys.exe",
"23=espouken=https://github.com/spokwn/Tool/releases/latest/download/espouken.exe",
"24=Kernel Live Dump Tool=https://github.com/spokwn/KernelLiveDumpTool/releases/latest/download/KernelLiveDumpTool.exe",
"25=WinPrefetchView=https://www.nirsoft.net/utils/winprefetchview-x64.zip",
"26=LastActivityView=https://www.nirsoft.net/utils/lastactivityview.zip",
"27=ExecutedProgramsList=https://www.nirsoft.net/utils/executedprogramslist.zip",
"28=UserAssistView=https://www.nirsoft.net/utils/userassistview.zip",
"29=AlternateStreamView=https://www.nirsoft.net/utils/alternatestreamview-x64.zip",
"30=HashMyFiles=https://www.nirsoft.net/utils/hashmyfiles-x64.zip",
"31=JumpListsView=https://www.nirsoft.net/utils/jumplistsview.zip",
"32=OpenSaveFilesView=https://www.nirsoft.net/utils/opensavefilesview-x64.zip",
"33=USBDeview=https://www.nirsoft.net/utils/usbdeview-x64.zip",
"34=TurnedOnTimesView=https://www.nirsoft.net/utils/turnedontimesview.zip",
"35=RegScanner=https://www.nirsoft.net/utils/regscanner-x64.zip",
"36=BrowserDownloadsView=https://www.nirsoft.net/utils/browserdownloadsview-x64.zip",
"37=Clipboardic=https://www.nirsoft.net/utils/clipboardic.zip",
"38=DriverView=https://www.nirsoft.net/utils/driverview-x64.zip",
"39=FileAccessErrorView=https://www.nirsoft.net/utils/fileaccesserrorview-x64.zip",
"40=PreviousFilesRecovery=https://www.nirsoft.net/utils/previousfilesrecovery-x64.zip",
"41=RecentFilesView=https://www.nirsoft.net/utils/recentfilesview.zip",
"42=ShellBagsView=https://www.nirsoft.net/utils/shellbagsview.zip",
"43=TaskSchedulerView=https://www.nirsoft.net/utils/taskschedulerview-x64.zip",
"44=UninstallView=https://www.nirsoft.net/utils/uninstallview-x64.zip",
"45=USBDriveLog=https://www.nirsoft.net/utils/usbdrivelog.zip",
"46=TimelineExplorer=https://download.ericzimmermanstools.com/net9/TimelineExplorer.zip",
"47=JumpListExplorer=https://download.ericzimmermanstools.com/net9/JumpListExplorer.zip",
"48=ShellBagsExplorer=https://download.ericzimmermanstools.com/net9/ShellBagsExplorer.zip",
"49=RegistryExplorer=https://download.ericzimmermanstools.com/net9/RegistryExplorer.zip",
"50=PECmd=https://download.ericzimmermanstools.com/net9/PECmd.zip",
"51=MFTECmd=https://download.ericzimmermanstools.com/net9/MFTECmd.zip",
"52=JLECmd=https://download.ericzimmermanstools.com/net9/JLECmd.zip",
"53=SrumECmd=https://download.ericzimmermanstools.com/net9/SrumECmd.zip",
"54=bstrings=https://download.ericzimmermanstools.com/net9/bstrings.zip",
"55=RecentFileCacheParser=https://download.ericzimmermanstools.com/net9/RecentFileCacheParser.zip",
"56=EchoEasyJournalViewer=https://dl.echo.ac/tool/journal",
"57=LECmd=https://download.ericzimmermanstools.com/net9/LECmd.zip",
"58=EvtxECmd=https://download.ericzimmermanstools.com/net9/EvtxECmd.zip",
"59=RECmd=https://download.ericzimmermanstools.com/net9/RECmd.zip",
"60=RBCmd=https://download.ericzimmermanstools.com/net9/RBCmd.zip",
"61=Hasher=https://download.ericzimmermanstools.com/hasher.zip",
"62=EZViewer=https://download.ericzimmermanstools.com/net9/EZViewer.zip",
"63=MFTExplorer=https://download.ericzimmermanstools.com/net9/MFTExplorer.zip",
"64=SDBExplorer=https://download.ericzimmermanstools.com/net9/SDBExplorer.zip",
"65=SQLECmd=https://download.ericzimmermanstools.com/net9/SQLECmd.zip",
"66=WxTCmd=https://download.ericzimmermanstools.com/net9/WxTCmd.zip",
"67=ChromeCacheView=https://www.nirsoft.net/utils/chromecacheview.zip",
"68=BrowsingHistoryView=https://www.nirsoft.net/utils/browsinghistoryview-x64.zip",
"69=VideoCacheView=https://www.nirsoft.net/utils/videocacheview-x64.zip"
)

Write-Host "Select tool(s) to download:`n" -ForegroundColor Yellow
foreach($t in $tools) {
    $parts = $t -split '='
    Write-Host "$($parts[0]). $($parts[1])"
}
Write-Host "70. Download All`n" -ForegroundColor Green

$selection = Read-Host "Enter number(s) separated by comma (or 70 for all)"

if ($selection.Trim() -eq "70") {
    $selected = 1..69
} else {
    $selected = $selection -split ',' | ForEach-Object { $_.Trim() }
}

foreach($num in $selected) {
    $idx = [int]$num - 1
    if($idx -ge 0 -and $idx -lt $tools.Count) {
        $entry = $tools[$idx]
        $parts = $entry -split '='
        $toolName = $parts[1]
        $url = $parts[2]

        Write-Host "`nDownloading $toolName ..." -ForegroundColor Green
        
        if ($toolName -eq "Journal" -or $toolName -eq "FTK Imager") {
            Write-Host "⚠️ Opening in browser..." -ForegroundColor Magenta
            Start-Process $url
            Write-Host "✓ Link opened - check your browser/downloads" -ForegroundColor Yellow
            continue
        }
        
        $fileName = $url.Split('/')[-1]
        if (-not $fileName) { $fileName = "$toolName.zip" }
        $fullPath = Join-Path $downloadsPath $fileName

        try {
            $wc = New-Object System.Net.WebClient
            $wc.Headers.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36")
            $wc.DownloadFile($url, $fullPath)
            Write-Host "✓ Saved: $fileName" -ForegroundColor Yellow
        } catch {
            Write-Host "✗ Failed to download $toolName" -ForegroundColor Red
            Write-Host " $($_.Exception.Message)" -ForegroundColor Red
            Write-Host " Try manually from: $url" -ForegroundColor Yellow
        }
    } elseif ($num -ne 70) {
        Write-Host "Invalid number: $num" -ForegroundColor Red
    }
}

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "All done! Open your Downloads folder:" -ForegroundColor Cyan
Write-Host $downloadsPath -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Pause
