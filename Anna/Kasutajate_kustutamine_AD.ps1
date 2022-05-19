$firstname = Read-Host "Please enter user Firstname"
$lastname = Read-Host "Please enter user Lastname"

$username = $firstname + "." + $lastname
$username = $username.ToLower()
$username = Translit($username)

$displayname = $firstname + " " + $lastname

    if (Get-ADUser -F {SamAccountName -eq $Username})
       {
                Remove-ADUser -identity $username
              echo "User $displayname is removed succesfully."
       }
       else
       {
       Write-Warning "User not exists or problem is occuring during user removing, please try again."

        }



Function Translit {
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
        If ($Translit[$character] -cne $Null){
        $OutputString += $Translit[$character]
        }else {
            $outputString += $character
            }
            }
            Write-Output $outputString
            }