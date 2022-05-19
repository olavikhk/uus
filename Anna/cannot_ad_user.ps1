$file = "C:\Users\Administrator\Documents\Skriptimine\Anna Karutina\adusers.csv"
#Impordi faili sisu
$users = Import-Csv $file -Encoding Default -Delimiter ";"
#foreach user row in file
foreach ($user in $users){
    $username = $user.FirstName + "." + $user.LastName
    $username = $username.ToLower()
    $username = Translit($username)
    $upname = $username + "@sv-kool.local"
    $displayname = $user.FirstName + " " + $user.LastName
    if (Get-ADUser -F {SamAccountName -eq $Username})
       {

               Write-Warning "User $Username already exist - can not add this user."
       }
       else
       {
        New-ADUser -Name $username `
        -DisplayName $displayname `
        -GivenName $user.FirstName `
        -Title $user.Role `
        -Surname $user.LastName `
        -Department $user.Department `
        -UserPrincipalName $upname `
        -AccountPassword (ConvertTo-SecureString $user.Password -AsPlainText -force) -Enabled $true
        }

}
Function Translit{
    param(
        [string] $inputString
    )

        $Translit = @{
        [char]'ä' = "a"
        [char]'õ' = "o"
        [char]'ü' = "u"
        [char]'ö' = "o"
        }
        $outputString=""
        foreach ($character in $inputCharacter = $inputString.ToCharArray())
    {   
        if ($Translit[$character] -cne $Null){
        $outputString += $Translit[$character]
        }else {
            $outputString += $character
            }
            }
            Write-Output $outputString
            }
