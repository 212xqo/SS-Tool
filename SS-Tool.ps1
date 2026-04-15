# SS-Tool Downloader - Downloads to Downloads folder

$downloadsPath = [Environment]::GetFolderPath("Downloads")

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
"46=Network Usage View=https://www.nirsoft.net/utils/network_usage_view.zip",
"47=TimelineExplorer=https://download.ericzimmermanstools.com/net9/TimelineExplorer.zip",
"48=JumpListExplorer=https://download.ericzimmermanstools.com/net9/JumpListExplorer.zip",
"49=ShellBagsExplorer=https://download.ericzimmermanstools.com/net9/ShellBagsExplorer.zip",
"50=RegistryExplorer=https://download.ericzimmermanstools.com/net9/RegistryExplorer.zip",
"51=PECmd=https://download.ericzimmermanstools.com/net9/PECmd.zip",
"52=MFTECmd=https://download.ericzimmermanstools.com/net9/MFTECmd.zip",
"53=JLECmd=https://download.ericzimmermanstools.com/net9/JLECmd.zip",
"54=SrumECmd=https://download.ericzimmermanstools.com/net9/SrumECmd.zip",
"55=bstrings=https://download.ericzimmermanstools.com/net9/bstrings.zip",
"56=RecentFileCacheParser=https://download.ericzimmermanstools.com/net9/RecentFileCacheParser.zip",
"57=AppCompatCacheParser=https://github.com/EricZimmerman/AppCompatCacheParser/releases/latest/download/AppCompatCacheParser.exe",
"58=AmcacheParser=https://github.com/EricZimmerman/AmcacheParser/releases/latest/download/AmcacheParser.exe"
)

Clear-Host
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "          SS-Tool Downloader" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "`nAll files will be downloaded to your Downloads folder" -ForegroundColor Yellow
Write-Host "Downloads Path: $downloadsPath`n" -ForegroundColor Gray

Write-Host "Select the tool(s) you want to download:`n" -ForegroundColor Yellow

foreach($t in $tools) {
    $parts = $t -split '='
    $num = $parts[0]
    $name = $parts[1]
    Write-Host "$num. $name"
}

Write-Host "`n" 
$selection = Read-Host "Enter number(s) separated by comma (e.g. 1,5,12,23)"

$selected = $selection -split ',' | ForEach-Object { $_.Trim() }

foreach($num in $selected) {
    $idx = [int]$num - 1
    if($idx -ge 0 -and $idx -lt $tools.Count) {
        $entry = $tools[$idx]
        $parts = $entry -split '='
        $toolName = $parts[1]
        $url = $parts[2]
        $fileName = $url.Split('/')[-1]

        $fullPath = Join-Path $downloadsPath $fileName

        Write-Host "`nDownloading $toolName ..." -ForegroundColor Green
        try {
            Invoke-WebRequest -Uri $url -OutFile $fullPath -UseBasicParsing
            Write-Host "✓ Saved to Downloads: $fileName" -ForegroundColor Yellow
        } catch {
            Write-Host "✗ Failed to download $toolName" -ForegroundColor Red
        }
    } else {
        Write-Host "Invalid number: $num" -ForegroundColor Red
    }
}

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "All downloads completed!" -ForegroundColor Cyan
Write-Host "Files are saved in your Downloads folder." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Pause
