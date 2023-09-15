$folderPath = "$env:USERPROFILE/myfolder"
$fileContent = "This is some text content."

# Ensure the folder doesn't exist, then create it
if (-not (Test-Path -Path $folderPath -PathType Container)) {
    New-Item -Path $folderPath -ItemType Directory
}