Function KillThatProcess
{
    $FileName = Ivan.txt
    if((get-Process. -Name "notepad") -ne $Null)
    {
        $UserResponse = [System.Windows.Forms.MessageBox]::Show("There are processes with the name $FileName, proceed?","Kill That Process",4) 

        if ($UserResponse -eq "Yes" ) 
        {
        get-Process -Name "notepad" | Stop-Process
        }
    
        else
        {
           [System.Windows.Forms.MessageBox]::Show("$FileName is not Running")
        }
    }
}


Fuction Bamboozle
{
    $FilePath = "C:\Users\Phill\Desktop\IT assignmentfolder\"
    [Char] $RandomLetter = Get-Random -Minimum 65 -Maximum 91

    [System.Windows.Forms.MessageBox]::Show("Good luck finding me Ivan -$RandomLetter")

    $FilesDeleted = Get-ChildItem -Path $location -Filter *$RandomLetter* -File

    if($FilesDeleted -eq $null)
    {
        Write-Host "Unfortunately, we haven't found any files containing the letter $($letter)"
    }
    else
    {
        $FilesDeleted | Remove-Item -WhatIf
    }
}