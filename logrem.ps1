
param(
[Parameter()]
[string]$path,
[double]$maxSize

)


$fileSize = (Get-Item $path).length/1KB

Write-Host($fileSize)
Write-Host($fileSize.GetType().Name)



if( $maxSize -le $fileSize) {
	Write-Host("The file size is high")
	Remove-Item -Path $path
	Write-Host("File deleted successfully")
} 

else {
	Write-Host("The file size is less")
}