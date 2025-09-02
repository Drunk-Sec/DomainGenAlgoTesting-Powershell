$file = ".\wordlist.txt"
$content = (Get-Content -Path $file -Encoding UTF8) -join ''
[System.Collections.ArrayList\$words = $content -split ',\s' | ForEach-Object { "$_" }
while ($true) {
  $word1 = (Get-Random $words.ToArray());
  $word2 = (Get-Random $words.ToArray());
  $genDomain = $word1+$word2+"-shenanigans.com"
  $response = Invoke-WebRequest $genDomain;
  Start-Sleep 3
  }

#wordlist is just test file of words split with , could be easily modified to use csv but this was just easy for testing
#could also be handy to use randomly generated TLDs as well but this should be good enough to test basic DGA ML rules
