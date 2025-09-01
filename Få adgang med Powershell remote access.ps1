# Opret forbindelse til en fjerncomputer med PowerShell Remoting

$computerName = "skriv ip til Maskine"   # Udskift med navnet eller IP-adressen på fjerncomputeren
$credential = Get-Credential      # Indtast brugernavn og adgangskode

# Start en interaktiv session
Enter-PSSession -ComputerName $computerName -Credential $credential
