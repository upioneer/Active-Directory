$groups = @(
'' # add groups here
)

foreach ($group in $groups) {
    Write-Host $group -ForegroundColor Cyan
    (Get-ADGroupMember -Identity $group).name
    Write-Host
}