<#

    Add array of users to array of groups
    
    USAGE
        Add users to c:\temp\users.txt
        Add groups to c:\temp\groups.txt
        Run from elevated prompt
        Run from account that has access to modify users

#>

$users = $null
$users = Get-Content -Path 'c:\temp\users.txt'
$groups = $null
$groups = Get-Content -Path 'c:\temp\groups.txt'

foreach ($group in $groups) {
    foreach ($user in $users) {
        Write-Host "Adding $user to $group" -ForegroundColor Cyan
        
        try {
            #Add-QADGroupMember -Identity $groups -Member $user
            Add-ADGroupMember -Identity $group -Members $user -Verbose
        }
        catch {
            $Error[0]
        }
    }
}