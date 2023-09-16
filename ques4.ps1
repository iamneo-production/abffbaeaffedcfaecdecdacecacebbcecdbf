$n1 =[int] (read-host "Enter first number: ")
$n2 =[int] (read-host "Enter second number: ")
$sum = $n1 + $n2
if($sum -gt 70){
    write-host "Pass"
}
else {
    write-host "Fail"
}