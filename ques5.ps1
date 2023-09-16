#first part
new-item Testing -itemType directory
#second part
cd Testing
new-item SubFolder1 -itemType directory
new-item SubFolder2 -itemType directory
#third part
cd SubFolder1
new-item Test1.text
new-item Test2.txt
new-item Test3.txt
#fourth part
cd ..
cd SubFolder2
new-item Test4.text
new-item Test5.txt
new-item Test6.txt
#writing a statement.
write-host "All the folders and files are created as mentioned."