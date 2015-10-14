[OutputType([void])]
param(
	[Parameter()]
	$version = "1.0.0-beta18",
	[Parameter()]
	$config = "Release"
)

& nuget pack FubarDev.FtpServer\FubarDev.FtpServer.nuspec -Properties "Configuration=$config;clientversion=$version" -Version $version
& nuget pack FubarDev.FtpServer.AccountManagement\FubarDev.FtpServer.AccountManagement.nuspec -Properties "Configuration=$config;clientversion=$version" -Version $version
& nuget pack FubarDev.FtpServer.FileSystem\FubarDev.FtpServer.FileSystem.nuspec -Properties "Configuration=$config;clientversion=$version" -Version $version
& nuget pack FubarDev.FtpServer.FileSystem.GoogleDrive\FubarDev.FtpServer.FileSystem.GoogleDrive.nuspec -Properties "Configuration=$config;clientversion=$version" -Version $version
& nuget pack FubarDev.FtpServer.FileSystem.DotNet\FubarDev.FtpServer.FileSystem.DotNet.nuspec -Properties "Configuration=$config;clientversion=$version" -Version $version
