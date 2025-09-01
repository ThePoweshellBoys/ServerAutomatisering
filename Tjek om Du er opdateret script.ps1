# Tjekker om der er ventende Windows-opdateringer

$UpdateSession = New-Object -ComObject Microsoft.Update.Session
$UpdateSearcher = $UpdateSession.CreateUpdateSearcher()
$SearchResult = $UpdateSearcher.Search("IsInstalled=0")

if ($SearchResult.Updates.Count -eq 0) {
    Write-Output "Din maskine er opdateret."
} else {
    Write-Output "Der er $($SearchResult.Updates.Count) opdateringer, der mangler at blive installeret."
}