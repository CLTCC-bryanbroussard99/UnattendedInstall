# set Execution policy to unrestricted to allow installs
Set-ExecutionPolicy unrestricted

# Winget Documentation - https://learn.microsoft.com/en-us/windows/package-manager/winget/install
# URL for package searches - https://winget.run/pkg/Microsoft

# verify winget is upgraded (Already installed in Windows 11)
Write-Output "Upgrading winget if available"
winget upgrade "App Installer" --silent --accept-source-agreements

# array of programs to install
$programs =@(   
    # Browsers 
    'Brave.Brave', # Secure, Fast & Private Web Browser with Adblocker
    'Mozilla.Firefox', # Mozilla Firefox - Only non-profit-backed browser that is secure, private & fast.
    'Google.Chrome', # Google Chrome - A more simple, secure, and faster web browser than ever, with Google’s smarts built-in.
    'Opera.Opera', # Opera Stable - is a multi-platform web browser developed by Opera Software. Opera is a Chromium-based browser. It distinguishes itself from other browsers through its user interface, functionality, and other features
    
    #Tools
    'ApacheFriends.Xampp.8.2', # XAMPP is an easy to install Apache distribution containing MariaDB, PHP and Perl.
    'AnyDeskSoftwareGmbH.AnyDesk','CodecGuide.K-LiteCodecPack.Standard', # K-Lite Codec Pack Standard - is a collection of DirectShow filters, VFW/ACM codecs, and tools. Codecs and DirectShow filters are needed for encoding and decoding audio and video formats. The K-Lite Codec Pack is designed as a user-friendly solution for playing all your audio and movie files. With the K-Lite Codec Pack you should be able to play all the popular audio and video formats and even several less common formats.
    'dotPDNLLC.paintdotnet', # Paint.NET - is image and photo editing software for PCs that run Windows.
    'Easeware.DriverEasy', #
    'Famatech.AdvancedIPScanner', # Advanced IP Scanner - shows all network devices, gives you access to shared folders, and can even remotely switch computers off.
    'Git.Git', # Git - is a distributed version control system that tracks changes in any set of computer files, usually used for coordinating work among programmer
    'GitHub.GitHubDesktop', #
    'Google.GoogleDrive', #
    'Microsoft.DeploymentToolkit', # Microsoft Deployment Toolkit (MDT) - provides a unified collection of tools, processes, and guidance for automating desktop and server deployments.
    'Microsoft.DotNet.DesktopRuntime.7', # Microsoft .NET Windows Desktop Runtime 7.0 - .NET is a free, cross-platform, open-source developer platform for building many different types of applications.
    'Microsoft.LAPS', # Local Administrator Password Solution - Provides management of local account passwords of domain joined computers. Passwords are stored in Active Directory
    'Microsoft.Office', #
    'Microsoft.PowerShell', # PowerShell - is a cross-platform (Windows, Linux, and macOS) automation and configuration tool/framework that works well with your existing tools and is optimized for dealing with structured data (e.g. JSON, CSV, XML, etc.), REST APIs, and object models. It includes a command-line shell, an associated scripting language and a framework for processing cmdlets.
    'Microsoft.PowerToys', #
    'Microsoft.VCRedist.2015+.x64', #
    'Microsoft.VisualStudioCode', # Install VSCode - Microsoft Visual Studio Code is a code editor redefined and optimized for building and debugging modern web and cloud applications. Microsoft Visual Studio Code is free and available on your favorite platform - Linux, macOS, and Windows.
    'Notepad++.Notepad++', # Notepad++ - is a free (as in “free speech” and also as in “free beer”) source code editor and Notepad replacement that supports several languages. Running in the MS Windows environment, its use is governed by GNU General Public License.
    'Oracle.JavaRuntimeEnvironment', # Its also integral to the intranet applications and other e-business solutions that are the foundation of corporate computing.
    'Oracle.MySQL', # MySQL - delivers a very fast, multithreaded, multi-user, and robust SQL (Structured Query Language) database server.
    'Oracle.MySQLWorkbench', #
    'Oracle.VirtualBox', # VirtualBox - is a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use. Not only is VirtualBox an extremely feature rich, high performance product for enterprise customers, it is also the only professional solution that is freely available as Open Source Software under the terms of the GNU General Public License (GPL) version 3.
    'PowerSoftware.PowerISO', #
    'PuTTY.PuTTY', # PuTTY - A free implementation of SSH and Telnet, along with an xterm terminal emulator.
    'Python.Python.3.12', # Python - is a programming language that lets you work more quickly and integrate your systems more effectively.
    'RevoUninstaller.RevoUninstaller', # Revo Uninstaller - is a freeware uninstall utility. It has powerful features to uninstall programs scanning for leftover files, folders and registry entries after uninstall. With its unique 'Hunter mode' it offers you some simple, easy to use but effective and powerful approaches to manage (uninstall, stop, delete, disable from auto starting) and to get information about your installed and/or running application. Many cleaning tools included!
    'SumatraPDF.SumatraPDF', # Sumatra PDF - is a free PDF, eBook (ePub, Mobi), XPS, DjVu, CHM, Comic Book (CBZ and CBR) viewer for Windows. Sumatra PDF is powerful, small, portable and starts up very fast. Simplicity of the user interface has a high priority.
    'sysinternals', #
    'VideoLAN.VLC', #
    'WiresharkFoundation.Wireshark' # Wireshark - is the world's foremost and widely-used network protocol analyzer. It lets you see what's happening on your network at a microscopic level and is the de facto (and often de jure) standard across many commercial and non-profit enterprises, government agencies, and educational institutions.
    '7zip.7zip', # 7-zip - Free and open source file archiver with a high compression ratio.

    # Communication
    'Microsoft.Teams -e', #
    'tomlm.electron-outlook-365 -e' #
)

Foreach ($program in $programs)
    {
    winget install -e --id $program -h --silent --accept-package-agreements --accept-source-agreements
    }

#Upgrade All
winget upgrade --all

# set Execution policy back to restricted
Set-ExecutionPolicy restricted
