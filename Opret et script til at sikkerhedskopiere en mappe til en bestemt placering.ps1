$kildeMappe = "C:\Users\Christoffer\Downloads\ServerAutomatisering H2"
$backupMappe = "C:\Users\Christoffer\OneDrive - EFIF\Dokumenter\backup"

# Opret backup-mappen hvis den ikke findes
if (!(Test-Path -Path $backupMappe)) {
    New-Item -ItemType Directory -Path $backupMappe
}

# Kopiér alle filer og undermapper
Copy-Item -Path $kildeMappe\* -Destination $backupMappe -Recurse -Force