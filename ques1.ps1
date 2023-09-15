# Define the folder name and file name
$folderName = "NewFolder"
$fileName = "NewFile.txt"

# Create a new folder in the home directory
New-Item -ItemType Directory -Name $folderName

# Create a new file in the home directory
New-Item -ItemType File -Name $fileName

# Confirm the creation of the folder and file
Write-Host "New folder '$folderName' and file '$fileName' created successfully."
