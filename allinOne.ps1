# Task 1: Create a new folder and a new file in your home directory
$folderPath = "$env:USERPROFILE\myfolder"
$fileContent = "This is some text content."

# Ensure the folder doesn't exist, then create it
if (-not (Test-Path -Path $folderPath -PathType Container)) {
    New-Item -Path $folderPath -ItemType Directory
}

# Create a new file and write text content into it
$fileContent | Out-File -FilePath "$folderPath\myfile.txt"

# Task 2: Create a new file and write some text contents into it
$additionalContent = "This is additional text content."
$additionalContent | Out-File -FilePath "$folderPath\additional_file.txt"

# Task 3: Print date of birth in the format of DD-MM-YYYY
$dateOfBirth = Read-Host "Enter your date of birth (DD MM YYYY)"
$day, $month, $year = $dateOfBirth -split ' '
$dateFormatted = "{0:D2}-{1:D2}-{2:D4}" -f $day, $month, $year
Write-Host "Date of Birth: $dateFormatted"

# Task 4: Add two input numbers and print 'Pass' or 'Fail'
$number1 = Read-Host "Enter the first number"
$number2 = Read-Host "Enter the second number"
$sum = [int]$number1 + [int]$number2

if ($sum -gt 70) {
    Write-Host "Result: Pass"
} else {
    Write-Host "Result: Fail"
}

# Task 5: Create folders and test files
$testingFolderPath = "$env:USERPROFILE\Testing"
$subfolder1Path = Join-Path -Path $testingFolderPath -ChildPath "SubFolder1"
$subfolder2Path = Join-Path -Path $testingFolderPath -ChildPath "SubFolder2"

# Create "Testing" folder if it doesn't exist
if (-not (Test-Path -Path $testingFolderPath -PathType Container)) {
    New-Item -Path $testingFolderPath -ItemType Directory
}

# Create SubFolder1 and SubFolder2 if they don't exist
if (-not (Test-Path -Path $subfolder1Path -PathType Container)) {
    New-Item -Path $subfolder1Path -ItemType Directory
}
if (-not (Test-Path -Path $subfolder2Path -PathType Container)) {
    New-Item -Path $subfolder2Path -ItemType Directory
}

# Create test files in SubFolder1
1..3 | ForEach-Object {
    $testFileName = "Test$_" + ".txt"
    $null | Out-File -FilePath (Join-Path -Path $subfolder1Path -ChildPath $testFileName)
}

# Create test files in SubFolder2
4..6 | ForEach-Object {
    $testFileName = "Test$_" + ".txt"
    $null | Out-File -FilePath (Join-Path -Path $subfolder2Path -ChildPath $testFileName)
}

Write-Host "Folders and test files created in 'Testing', 'SubFolder1', and 'SubFolder2'."