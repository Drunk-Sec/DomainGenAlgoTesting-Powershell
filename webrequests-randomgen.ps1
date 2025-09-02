while ($true) {
Invoke-WebRequest "shenanigans-$(-join ((65..90) + (97..122) | Get-Random -Count 10 | % {[char]$_})).com": Start-Sleep 3 }
