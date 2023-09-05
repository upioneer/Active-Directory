<#

    Add array of users to array of groups

#>

$users = @(
'' # add users here
)

$groups = @(
'' # add groups here
)

foreach ($user in $users) {
    foreach ($group in $groups) {
        Add-ADGroupMember -Identity "$group" -Members "$user"
    }
}