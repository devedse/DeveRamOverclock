$readmeContent = Get-Content 'README.md'


Function InsertToArray($Array, $insertIndex, $valueToInsert){
    return @(
        for ($i = 0; $i -lt $insertIndex; $i++) {
            $Array[$i]
        }
        $valueToInsert
        for ($i = $insertIndex; $i -lt $Array.Length; $i++) {
            $Array[$i]
        }
    )
}


$highestNumber = 0
$currow = 0
$lastrow = 0
$regex = '^\| (?<number>\d+) \| \!.*$'
foreach ($line in $readmeContent) {
    if ($line -match $regex) {
        $digit = $Matches["number"]
        $number = [int]$digit
        
        $highestNumber = $number
        $lastrow = $currow
    }
    $currow++
}


while ($true) {
    $highestNumber++    
    $lastrow++

    $filesZen = @(Get-ChildItem -Path "benchmarks" -Filter "*Zen_$highestNumber*.png")
    $filesTM5 = @(Get-ChildItem -Path "benchmarks" -Filter "*TM5_$highestNumber*.png")

    if ($filesZen.Length -eq 0 -and $filesTM5.Length -eq 0) {
        break
    }

    $stringZen = $filesZen | ForEach-Object { "![](benchmarks/$($_.Name))"} | Join-String -Separator ' '
    $stringTM5 = $filesTM5 | ForEach-Object { "![](benchmarks/$($_.Name))"} | Join-String -Separator ' '
    $line = "| $highestNumber | $stringZen | $stringTM5 | ... | ... |"
    Write-Host $line

    $readmeContent = InsertToArray $readmeContent $lastrow $line
}

Set-Content -Path "README.md" $readmeContent