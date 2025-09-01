# Opret ny bruger på systemet
New-LocalUser -Name "Asshole" -Password (ConvertTo-SecureString "kode1234" -AsPlainText -Force)