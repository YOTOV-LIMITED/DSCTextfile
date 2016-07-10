configuration TextFile
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    node $AllNodes.Where{$_.Role -eq "TextFile"}.NodeName
    {
        File TempFolder
        {
            Ensure      = 'Present'
            DestinationPath = 'c:\Temp'
            Type = 'Directory'
        }        
        File DataFile
        {
            Ensure      = 'Present'
            DestinationPath = 'c:\Temp\hello.txt'
            Contents = 'Hello World!'
            Type = 'File'
            DependsOn = '[File]TempFolder'
        }
    }
}

$configData = @{
    AllNodes = @(
        @{
            NodeName = 'localhost'
            Role = 'TextFile'
        }
    )
}

