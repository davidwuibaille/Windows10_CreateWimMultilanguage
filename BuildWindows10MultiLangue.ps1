[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = @'
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Build Windows 10 ISO v1.6" Height="901.038" Width="955.157">
    <Grid Margin="0,0,2,4">
        <Label Name="ChoiceVersion" Content="Choice Windows Version" HorizontalAlignment="Left" Margin="10,265,0,0" VerticalAlignment="Top" Width="232" FontWeight="Bold"/>

        <Border BorderBrush="Black" BorderThickness="1" HorizontalAlignment="Right" Height="108" Margin="0,680,613,0" VerticalAlignment="Top" Width="320" Background="#FFE26464"/>

        <Label Name="Options" Content="Options" HorizontalAlignment="Left" Margin="7,652,0,0" VerticalAlignment="Top" Width="232" FontWeight="Bold"/>
        <Button Name="Run" Content="Run" HorizontalAlignment="Left" Margin="8,804,0,0" VerticalAlignment="Top" Width="919" Background="#FF0DAC2C" FontWeight="Bold" BorderBrush="#FFFDBABA" OpacityMask="Black" Height="39"/>

        <TextBox HorizontalAlignment="Left" Name="ISOWindows10" Height="23" Margin="156,12,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="711"/>
        <TextBox HorizontalAlignment="Left" Name="ExportFolder" Height="23" Margin="156,40,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="711"/>
        <TextBox HorizontalAlignment="Left" Name="MSUUpdate" Height="23" Margin="156,125,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="711"/>
        <TextBox HorizontalAlignment="Left" Name="MSUOther" Height="23" Margin="156,154,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="711"/>
        <TextBox HorizontalAlignment="Left" Name="DriversFolder" Height="23" Margin="156,186,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="711"/>

        <Label Content="Folder Content ISO" HorizontalAlignment="Left" Margin="10,12,0,0" VerticalAlignment="Top" Width="120" FontWeight="Bold"/>
        <Label Content="Folder export MUI" HorizontalAlignment="Left" Margin="10,37,0,0" VerticalAlignment="Top" Width="118" FontWeight="Bold"/>

        <ListBox HorizontalAlignment="Left" Name="Appx" Height="474" Margin="363,296,0,0" VerticalAlignment="Top" Width="261"  SelectionMode="Extended" Background="#FFE6F305"/>
        <ListBox HorizontalAlignment="Left" Name="ListRelease" Height="344" Margin="12,296,0,0" VerticalAlignment="Top" Width="320" SelectionMode="Extended" Background="#FF8686C1"/>
        <ListBox HorizontalAlignment="Left" Name="ListLangues" Height="474" Margin="655,296,0,0" VerticalAlignment="Top" Width="256"  SelectionMode="Extended" Background="#FF34BF26"/>

        <Button Content="Browse" Name="BrowseISO" HorizontalAlignment="Left" Margin="877,14,0,0" VerticalAlignment="Top" Width="50" Background="#FF69A0F0"/>
        <Button Content="Browse" Name="BrowseExport" HorizontalAlignment="Left" Margin="877,41,0,0" VerticalAlignment="Top" Width="50" Background="#FF69A0F0"/>
        <Button Content="Browse" Name="BrowseMSUUpdate" HorizontalAlignment="Left" Margin="877,127,0,0" VerticalAlignment="Top" Width="50" Background="#FF69A0F0"/>
        <Button Content="Browse" Name="BrowseMSUOther" HorizontalAlignment="Left" Margin="877,156,0,0" VerticalAlignment="Top" Width="50" Background="#FF69A0F0"/>
        <Button Content="Browse" Name="BrowseDrivers" HorizontalAlignment="Left" Margin="877,186,0,0" VerticalAlignment="Top" Width="50" Background="#FF69A0F0"/>
        <Button Content="Check Windows Version" Name="CheckWindowsVersion" HorizontalAlignment="Left" Margin="12,227,0,0" VerticalAlignment="Top" Width="915"  Background="#FF0DAC2C" Height="24"/>

        <CheckBox Name="InjectDrivers" Content="Inject Drivers" HorizontalAlignment="Left" Margin="22,727,0,0" VerticalAlignment="Top"/>
        <CheckBox Name="NetFX3" Content="Enable NetFX3" HorizontalAlignment="Left" Margin="22,687,0,0" VerticalAlignment="Top" Width="187"/>
        <CheckBox Name="MSU" Content="Inject MSU" HorizontalAlignment="Left" Margin="22,707,0,0" VerticalAlignment="Top"/>

        <Label Content="Folder Content Drivers" HorizontalAlignment="Left" Margin="10,182,0,0" VerticalAlignment="Top" Width="132" FontWeight="Bold"/>
        <Label Content="MSU Update" HorizontalAlignment="Left" Margin="10,124,0,0" VerticalAlignment="Top" Width="132" FontWeight="Bold"/>
        <Label Content="MSU Other" HorizontalAlignment="Left" Margin="10,153,0,0" VerticalAlignment="Top" Width="132" FontWeight="Bold"/>
        <Label Content="Remove AppxProvisionedPackage" HorizontalAlignment="Left" Margin="363,265,0,0" VerticalAlignment="Top" Width="232" FontWeight="Bold"/>

        <RadioButton Name="MultiLanguage" Content="MultiLanguage" HorizontalAlignment="Left" Margin="22,754,0,0" VerticalAlignment="Top"/>
        <RadioButton Name="WIMindex" Content="WIMindex" HorizontalAlignment="Left" Margin="125,754,0,0" VerticalAlignment="Top"/>
        <RadioButton Name="monoLangue" Content="monoLangue" HorizontalAlignment="Left" Margin="203,754,0,0" VerticalAlignment="Top"/>

        <Label Content="Language" HorizontalAlignment="Left" Margin="655,265,0,0" VerticalAlignment="Top" Width="232" FontWeight="Bold"/>
        <Button Content="?" Name="Help1" HorizontalAlignment="Left" Margin="142,15,0,0" VerticalAlignment="Top" Width="12" RenderTransformOrigin="3.81,-2.343" Background="#FF7AF513"/>
        <Button Content="?" Name="Help2" HorizontalAlignment="Left" Margin="142,41,0,0" VerticalAlignment="Top" Width="12" RenderTransformOrigin="3.81,-2.343" Background="#FF7AF513"/>
        <Button Content="?" Name="Help3" HorizontalAlignment="Left" Margin="142,128,0,0" VerticalAlignment="Top" Width="12" RenderTransformOrigin="3.81,-2.343" Background="#FF7AF513"/>
        <Button Content="?" Name="Help4" HorizontalAlignment="Left" Margin="142,156,0,0" VerticalAlignment="Top" Width="12" RenderTransformOrigin="3.81,-2.343" Background="#FF7AF513"/>
        <Button Content="?" Name="Help5" HorizontalAlignment="Left" Margin="142,188,0,0" VerticalAlignment="Top" Width="12" RenderTransformOrigin="3.81,-2.343" Background="#FF7AF513"/>
        <Button Content="?" Name="Help6" HorizontalAlignment="Left" Margin="297,754,0,0" VerticalAlignment="Top" Width="12" RenderTransformOrigin="3.81,-2.343" Background="#FF7AF513"/>

        <TextBox HorizontalAlignment="Left" Name="MSUSSU" Height="23" Margin="156,92,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="711"/>
        <Button Content="Browse" Name="BrowseMSUSSU" HorizontalAlignment="Left" Margin="877,94,0,0" VerticalAlignment="Top" Width="50" Background="#FF69A0F0"/>
        <Label Content="MSU SSU" HorizontalAlignment="Left" Margin="10,91,0,0" VerticalAlignment="Top" Width="132" FontWeight="Bold"/>
        <Button Content="?" Name="Help7" HorizontalAlignment="Left" Margin="142,95,0,0" VerticalAlignment="Top" Width="12" RenderTransformOrigin="3.81,-2.343" Background="#FF7AF513"/>
    </Grid>
</Window>


    
'@
#Read XAML
$reader=(New-Object System.Xml.XmlNodeReader $xaml) 
try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch{Write-Host "Unable to load Windows.Markup.XamlReader. Some possible causes for this problem include: .NET Framework is missing PowerShell must be launched with PowerShell -sta, invalid XAML code was encountered."; exit}

#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================
$xaml.SelectNodes("//*[@Name]") | %{Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)}



    
# language code
$LanguageCode = "bg-bg","cs-cz","da-dk","de-de","el-gr","en-gb","en-us","es-es","es-mx","et-ee","fi-fi","fr-ca","fr-fr","hr-hr","hu-hu","it-it","ja-jp","ko-kr","lt-lt","lv-lv","nb-no","nl-nl","pl-pl","pt-br","pt-pt","ro-ro","ru-ru","sk-sk","sl-si","sv-se","tr-tr","uk-ua","zh-cn","zh-tw"

# Language code with additionnal WinPE-FontSupport
$SpecificCode = "ja-jp", "ko-kr", "zh-hk", "zh-cn", "zh-tw"

$NetFX3.IsChecked = $true
$MultiLanguage.IsChecked = $true

$xmlpath = $PSScriptRoot + "\buildwindows10MultiLangue.xml"
write-host "-------------------------------------------"
write-host "read : $xmlpath"
write-host "-------------------------------------------"

If (test-path $xmlpath) {
    [xml]$xml = get-content ("$xmlpath")

    #Puis j'affiche mes données.
    foreach ($valeurxml in $xml.Buildw10) {
        $ValueISOWindows10 =  $valeurxml.Text.ISOWindows10
        write-host $ValueISOWindows10
        $ISOWindows10.Text = $ValueISOWindows10

        $ValueExportFolder = $valeurxml.Text.ExportFolder
        Write-Host $ValueExportFolder
        $ExportFolder.Text = $ValueExportFolder

        $ValueDriversFolder = $valeurxml.Text.DriversFolder
        Write-Host $ValueDriversFolder
        $DriversFolder.Text = $ValueDriversFolder

        $ValueMSUUpdate = $valeurxml.Text.MSUUpdate
        Write-Host $ValueMSUUpdate
        $MSUUpdate.Text = $ValueMSUUpdate
        if ($ValueMSUUpdate -ne "") { $MSU.IsChecked = $true }

        $ValueMSUOther = $valeurxml.Text.MSUOther
        Write-Host $ValueMSUOther
        $MSUOther.Text = $ValueMSUOther
        if ($ValueMSUOther -ne "") { $MSU.IsChecked = $true }

        $ValueMSUSSU = $valeurxml.Text.MSUSSU
        Write-Host $ValueMSUSSU
        $MSUSSU.Text = $ValueMSUSSU
        if ($ValueMSUSSU -ne "") { $MSU.IsChecked = $true }

    }
}


function Check-IsAdmin {
    # Get the ID and security principal of the current user account
    $myWindowsID=[System.Security.Principal.WindowsIdentity]::GetCurrent()
    $myWindowsPrincipal=new-object System.Security.Principal.WindowsPrincipal($myWindowsID)
     
    # Get the security principal for the Administrator role
    $adminRole=[System.Security.Principal.WindowsBuiltInRole]::Administrator
     
    # Check to see if we are currently running "as Administrator"
    if ($myWindowsPrincipal.IsInRole($adminRole))
       {
       # We are running "as Administrator" - so change the title and background color to indicate this
       $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Elevated)"
       $Host.UI.RawUI.BackgroundColor = "DarkBlue"
       clear-host
       }
    else
       {
       # We are not running "as Administrator" - so relaunch as administrator
        $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
       
        # Specify the current script path and name as a parameter
        $newProcess.Arguments = "& '" + $script:MyInvocation.MyCommand.Path + "'"
       
        # Indicate that the process should be elevated
        $newProcess.Verb = "runas";
       
        # Start the new process
        [System.Diagnostics.Process]::Start($newProcess);
       
       # Exit from the current, unelevated, process
       exit
       }
    }
$BrowseISO.add_Click({
    Add-Type -AssemblyName System.Windows.Forms
    $FolderBrowser1 = New-Object System.Windows.Forms.FolderBrowserDialog -Property @{
        ShowNewFolderButton = $True
    }
    [void]$FolderBrowser1.ShowDialog()
    $path1 = $FolderBrowser1.SelectedPath

    $ISOWindows10.Text =  $path1
})

$BrowseExport.add_Click({
    Add-Type -AssemblyName System.Windows.Forms
    $FolderBrowser2 = New-Object System.Windows.Forms.FolderBrowserDialog -Property @{
        ShowNewFolderButton = $True
    }
    [void]$FolderBrowser2.ShowDialog()
    $path2 = $FolderBrowser2.SelectedPath

    $ExportFolder.Text = $path2
})


$BrowseMSUUpdate.add_Click({
    Add-Type -AssemblyName System.Windows.Forms
    $FileBrowser4 = New-Object System.Windows.Forms.OpenFileDialog -Property @{
        Multiselect = $false # Multiple files can be chosen
    }
    [void]$FileBrowser4.ShowDialog()
    $path4 = $FileBrowser4.FileNames;

    $MSUUpdate.Text = $path4
    $MSU.IsChecked = $true
})

$BrowseMSUSSU.add_Click({
    Add-Type -AssemblyName System.Windows.Forms
    $FileBrowser5 = New-Object System.Windows.Forms.OpenFileDialog -Property @{
        Multiselect = $false # Multiple files can be chosen
    }
    [void]$FileBrowser5.ShowDialog()
    $path5 = $FileBrowser5.FileNames;

    $MSUSSU.Text = $path5
    $MSU.IsChecked = $true
})

$BrowseMSUOther.add_Click({
    Add-Type -AssemblyName System.Windows.Forms
    $FileBrowser5 = New-Object System.Windows.Forms.OpenFileDialog -Property @{
        Multiselect = $false # Multiple files can be chosen
    }
    [void]$FileBrowser5.ShowDialog()
    $path5 = $FileBrowser5.FileNames;

    $MSUOther.Text = $path5
    $MSU.IsChecked = $true
})

$BrowseDrivers.add_Click({
    Add-Type -AssemblyName System.Windows.Forms
    $FolderBrowser6 = New-Object System.Windows.Forms.FolderBrowserDialog -Property @{
        ShowNewFolderButton = $True
    }
    [void]$FolderBrowser6.ShowDialog()
    $path6 = $FolderBrowser6.SelectedPath

    $DriversFolder.Text = $path6
})


$Help1.add_Click({
    $Message = "Dossier contenant une ou plusieurs ISO Windows 10. Pour l'option ISOmultilangue => AJouter ISO features_on_demand => Version Avant 1903:Ajouter en plus ISO language pack. Version Depuis 1903 Ajouter en plus ISO Local Experience PAck"
    $Title = "Aide"
    $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
    $Icon = "Information" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
    $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
    $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
})

$Help2.add_Click({
    $Message = "Ou sera exporter l'iso pour la wim générée par le script"
    $Title = "Aide"
    $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
    $Icon = "Information" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
    $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
    $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
})

$Help3.add_Click({
    $Message = "Le fichier MSU qui sera injecté dans le WIM"
    $Title = "Aide"
    $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
    $Icon = "Information" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
    $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
    $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
})

$Help4.add_Click({
    $Message = "un second MSU a injecter"
    $Title = "Aide"
    $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
    $Icon = "Information" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
    $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
    $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
})

$Help7.add_Click({
    $Message = "Le MSU Service Stack Update"
    $Title = "Aide"
    $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
    $Icon = "Information" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
    $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
    $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
})

$Help5.add_Click({
    $Message = "Un dossier avec des drivers. Note le script ne vérifie pas la compatibilité"
    $Title = "Aide"
    $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
    $Icon = "Information" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
    $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
    $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
})


$Help6.add_Click({
    $Message = "Multilangue=une ISO multilangue sur une base EN-US. WimIndex=une WIM avec un index par langue. MonoLangue=une ISO par langue"
    $Title = "Aide"
    $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
    $Icon = "Information" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
    $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
    $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
})

$CheckWindowsVersion.add_Click({
    cleanupMountFolder
    PrepareMountFolder

    $ENUSISO = ""
    $ListRelease.Clear()
    $Appx.Clear()


    if ($ISOWindows10.Text -eq "") {
        Write-Host "Error Path Content"
    } Else {
            $Appx.Items.Clear()
            $ListRelease.Items.Clear()
            $ListLangues.Items.Clear()
            Write-Host "**************** Check ISO Folder ****************"
            $ListISO = Get-ChildItem -Path $ISOWindows10.Text | Where-Object {$_.Name -like "*.ISO*" -and $_.Name -like "*.iso*"}
            
            $ISOAnalyse = "XXXX"
            $ENUSISO = "XXXX"
            
            foreach ($ISO in $ListISO) {
                $PatchISO = $ISOWindows10.Text + "\" + $ISO.Name
                write-host "Analyse:$PatchISO"
                dismount-diskImage -ImagePath $PatchISO
                $vol = Mount-DiskImage -ImagePath $PatchISO -PassThru | Get-DiskImage | Get-Volume
                
                #Find En-US ISO
                $TestEnUS                = $vol.DriveLetter + ":\sources\en-US" #nom du dossier a trouver pour une ISO EN-US
                $TestMUI                 = $vol.DriveLetter + ":\x64\langpacks"  #nom du dossier a trouver pour une ISO MUI
                $TestLocalExperiencepack = $vol.DriveLetter + ":\LocalExperiencePack"  #nom du dossier a trouver pour une ISO local experience pack
                $TestFeatureOnDemand     = $vol.DriveLetter + ":\FoDMetadata_Client.cab" # nom du fichier pour detecter feature on demande ISO
                
                # sauvegarde de l'ISO US
                if(Test-Path -Path $TestEnUS){
                    $ENUSISO = $ISO.Name
                    Write-host "Found EN-US:$ENUSISO"
                }

                # sauvegarde de l'iso MUI
                if(Test-Path -Path $TestMUI){
                    $ListLangues.Items.Add("ISO_language_pack")
                    Write-host "language_pack:$($ISO.Name)"
                }

                if(Test-Path -Path $TestLocalExperiencepack){
                    $ListLangues.Items.Add("ISO_local_experience_packs")
                    Write-host "local_experience_packs:$($ISO.Name)"
                }

                if(Test-Path -Path $TestFeatureOnDemand){
                    $ListLangues.Items.Add("ISO_features_on_demand")
                    Write-host "features_on_demand:$($ISO.Name)"
                }

                # recherche des autres langues et les affichent dans la listbox
                foreach ($Item in $LanguageCode) {
                    $TestLP = $vol.DriveLetter + ":\sources\" + $Item
                    
                    if(Test-Path -Path $TestLP){
                        $ListLangues.Items.Add($Item)
                        $ISOAnalyse = $ISO.Name #enregistre l'ISO a analyser
                    } 

                }
                dismount-diskImage -ImagePath $PatchISO
            }

            # je prefere analyser l'iso EN-US si elle existe
            If ($ENUSISO -ne "XXXX") { $ISOAnalyse = $ENUSISO }
            $PatchISO = $ISOWindows10.Text
            $PatchISO = "$PatchISO\$ISOAnalyse"

            Write-Host "**************** Copy ISO to local ****************"
            dismount-diskImage -ImagePath $PatchISO
            $vol = Mount-DiskImage -ImagePath $PatchISO -PassThru | Get-DiskImage | Get-Volume
            $ISOLetter = $vol.DriveLetter + ":\"
            Write-host "Mount pour analyse: $PatchISO=$ISOLetter"
    

            Write-host "Robocopy $ISOLetter c:\mount\ISO /MIR"
            Robocopy "$ISOLetter" "c:\mount\ISO" /MIR
            Set-ItemProperty -Path "c:\mount\ISO\sources\install.wim" -Name IsReadOnly -Value $false
            dismount-diskImage -ImagePath $PatchISO
    
            Write-Host "**************** GET Release ****************"
            $IndexCheck = 1
            $listwim = Get-WindowsImage -ImagePath "c:\mount\ISO\sources\install.wim"
            foreach ($Version in $listwim) {
                $NameWindowsVersion = $Version.ImageName

                # obligé de changer le nom des version pour les ISO Francaises
                $NameWindowsVersion = $NameWindowsVersion.replace("Éducation","Education")
                $NameWindowsVersion = $NameWindowsVersion.replace("Entreprise","Enterprise")
                $NameWindowsVersion = $NameWindowsVersion.replace("Professionnel","Pro")
                $NameWindowsVersion = $NameWindowsVersion.replace("pour les Stations de travail","for Workstations")

                write-host $NameWindowsVersion
                $ListRelease.Items.Add($NameWindowsVersion) | out-null
                If (($NameWindowsVersion -like "*Desktop*") -or ($NameWindowsVersion -like "*Pro*") -or ($NameWindowsVersion -like "*Enterprise*")) { 
                    If (($NameWindowsVersion -notlike "* N*") -and ($NameWindowsVersion -notlike "*ducatio*") -and ($NameWindowsVersion -notlike "*Pro Edu*") -and ($NameWindowsVersion -notlike "*Pro for*") -and ($NameWindowsVersion -notlike "*Station*")) {
                        $IndexCheck =  $Version.ImageIndex 
                    }
                }   
            }

            Write-Host "**************** GET Provisionning ****************"
            write-host "Index for AppxProvisionedPackage : $IndexCheck"
            Mount-WindowsImage -ImagePath "c:\mount\ISO\sources\install.wim" -Index $IndexCheck -Path "C:\mount\Windows"
            $ProvisionedPackageName = Get-AppxProvisionedPackage -Path "c:\mount\Windows"
            foreach ($Provisioned in $ProvisionedPackageName) {
                $NameProvisionned = $Provisioned.DisplayName
                write-host $NameProvisionned
                $Appx.Items.Add($NameProvisionned)
            }

            Dismount-WindowsImage -Path "C:\mount\Windows" -Discard

            write-host "---------------- XML ------------------------"
            If (test-path $xmlpath) {

                $AppxDelete = $Appx.Items
                foreach ($DelectAppx in $AppxDelete) {
                    [xml]$xml = get-content ("$xmlpath")
                    foreach ($valeurxml in $xml.Buildw10.Appx.Select) {
                        $ValueAppx =  $valeurxml
                        If ($ValueAppx -eq $DelectAppx) {
                            #Write-Host "Select $DelectAppx"
                            #$DelectAppx.SelectedItem
                        }
                    }                    
                }

                $Releases = $ListRelease.Items
                foreach ($Release in $Releases) {
                    [xml]$xml = get-content ("$xmlpath")
                    foreach ($valeurxml in $xml.Buildw10.Version.Select) {
                        $ValueVersion =  $valeurxml
                        If ($ValueVersion -eq $Release) {
                            #Write-Host "Select $Release"
                            #$Release.SelectedItem
                        }
                    }
                }

                $Langues = $ListLangues.Items
                foreach ($Langue in $Langues) {
                    [xml]$xml = get-content ("$xmlpath")
                    foreach ($valeurxml in $xml.Buildw10.Langues.Select) {
                        $ValueVersion =  $valeurxml
                        If ($ValueVersion -eq $Langue) {
                            #Write-Host "Select $Langue"
                            #$Langue.SelectedItem
                        }
                    }
                }
            }
            write-host "---------------- XML ------------------------"
            Write-Host "**************** end Analyse ****************"            
            if(!(Test-Path -Path "C:\Program Files (x86)\Windows Kits\10")) {
                $Message = "Windows ADK Non present. Installer la version qui correspond a la version de Windows 10"
                $Title = "Error"
                $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
                $Icon = "Error" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
                $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
                $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
            } Else {
                $Message = "Windows ADK present verifier la version avant de continuer. Electionnez les version de Windows 10 et Clic sur RUN"
                $Title = "Information"
                $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
                $Icon = "Information" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
                $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
                $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
            }

        }
})

$Run.add_Click({

    # cleanup
    cleanupMountFolder
    PrepareMountFolder
    CreateXMLGUI

    if ($ISOWindows10.Text -eq "" -or $ExportFolder.Text -eq "") {
        Write-Host "Error Path Content or export folder"
    } Else {
        # run
        # List All ISO to FolderDownloadISO
        Write-Host ""
        Write-Host "**************** List ISO ****************"
        $ListISO = Get-ChildItem -Path $ISOWindows10.Text | Where-Object {$_.Name -like "*.ISO*" -and $_.Name -like "*.iso*"}

        # Get ISO en-uS and Mui
        $ENUSISO    = ""
        $MUIISO     = ""
        $LocalLP    = ""
        $FeatureISO = ""

        foreach ($ISO in $ListISO) {
            $PatchISO = $ISOWindows10.Text + "\" + $ISO.Name
            dismount-diskImage -ImagePath $PatchISO
            $vol = Mount-DiskImage -ImagePath $PatchISO -PassThru | Get-DiskImage | Get-Volume

            #Find En-US ISO
            $TestEnUS = $vol.DriveLetter + ":\sources\en-US"
            if(Test-Path -Path $TestEnUS) { 
                $ENUSISO = $ISO.Name
                $PatchISOENUS = $PatchISO
            } 

            #Find MUI ISO
            $TestMUI = $vol.DriveLetter + ":\x64\langpacks"
            if(Test-Path -Path $TestMUI) { 
                $MUIISO = $ISO.Name
                $PatchISOMUI = $PatchISO
            }

            #Find Local Language Pack
            $TestLLP = $vol.DriveLetter + ":\LocalExperiencePack"
            if(Test-Path -Path $TestLLP) { 
                $LocalLP = $ISO.Name
                $PatchLocalLP = $PatchISO
            }
            
            #Find Optionnal Feature
            $TestOF = $vol.DriveLetter + ":\FoDMetadata_Client.cab"
            if(Test-Path -Path $TestOF) { 
                $FeatureISO = $ISO.Name
                $PatchISOfeature = $PatchISO
            }            

            dismount-diskImage -ImagePath $PatchISO
        }

        if ($MultiLanguage.IsChecked) { 
            If($ENUSISO -ne "" -or $MUIISO -ne "") {
                ###################################### montage de l'ISO EN-US ########################################## 
                $PatchISOENUS = $ISOWindows10.Text + "\" + $ENUSISO
                $vol = Mount-DiskImage -ImagePath $PatchISOENUS -PassThru | Get-DiskImage | Get-Volume
                $DriveENUS = $vol.DriveLetter + ":\"
                Write-Host "Mount ISO $PatchISOENUS to $DriveENUS"

                ###################################### montage de l'ISO language pack si existant ############################# 
                $DriveMUI = ""
                $PatchISOfeature = ""
                if ($MUIISO -ne ""){
                    $PatchISOfeature = $ISOWindows10.Text + "\" + $MUIISO
                    $vol = Mount-DiskImage -ImagePath $PatchISOfeature -PassThru | Get-DiskImage | Get-Volume
                    $DriveMUI = $vol.DriveLetter + ":\"
                    Write-Host "Mount ISO $PatchISOMUI to $DriveMUI"  
                }

                ###################################### montage de l'ISO Local language pack ############################# 
                $DriveLocalLP = ""
                $PatchISOfeature = ""
                if ($LocalLP -ne ""){
                    $PatchISOfeature = $ISOWindows10.Text + "\" + $LocalLP
                    $vol = Mount-DiskImage -ImagePath $PatchISOfeature -PassThru | Get-DiskImage | Get-Volume
                    $DriveLocalLP = $vol.DriveLetter + ":\"
                    Write-Host "Mount ISO $PatchLocalLP to $DriveLocalLP"  
                }

                ###################################### montage de l'ISO feature Update si existant ############################# 
                $DriveFeature = ""
                $PatchISOfeature = ""
                if ($FeatureISO -ne ""){
                    $PatchISOfeature = $ISOWindows10.Text + "\" + $FeatureISO
                    $vol = Mount-DiskImage -ImagePath $PatchISOfeature -PassThru | Get-DiskImage | Get-Volume
                    $DriveFeature = $vol.DriveLetter + ":\"
                    Write-Host "Mount ISO $PatchISOfeature to $DriveFeature"  
                }


                ####################################### Preparation des dossiers de travail ####################################
                Write-Host ""
                Write-Host "**************** Copy ISO to local ****************"
                # Copie ISO en-US to localdistribution
                Write-host "Robocopy $DriveENUS c:\mount\ISO /MIR"
                Robocopy "$DriveENUS"  "c:\mount\ISO" /MIR

                ###################################### GEstion du WinPE ######################################################## 
                # Add Language to WinPE
                Write-Host ""
                Write-Host "**************** Gestion du WinPE ****************"
                Write-Host "Mount WinPE Index Microsoft Windows Setup (x64)"
                Set-ItemProperty -Path "c:\mount\ISO\sources\boot.wim" -Name IsReadOnly -Value $false
                Mount-WindowsImage -ImagePath "c:\mount\ISO\sources\boot.wim" -Name "Microsoft Windows Setup (x64)" -Path "C:\mount\WinPE"

                # List all ISO to identify language to WinPE
                foreach ($ISO in $ListISO) {
                    If (($ISO.Name -ne $ENUSISO) -And ($ISO.Name -ne $MUIISO) -and ($ISO.Name -ne $FeatureISO)) {

                        # Check is ISO content LanguaCode
                        $CurrentISO = ""
                        $PatchISO = $ISOWindows10.Text + "\" + $ISO.Name
                        $vol = Mount-DiskImage -ImagePath $PatchISO -PassThru | Get-DiskImage | Get-Volume
                        $CurrentISO = $vol.DriveLetter + ":\"
                        Write-Host "Check ISO =>" $PatchISO " Letter:" $CurrentISO

                        $Langues = $ListLangues.SelectedItems | Sort-Object
                        foreach ($Langue in $Langues) {
                            foreach ($Item in $LanguageCode) {
                                $TestLP = $vol.DriveLetter + ":\sources\" + $Item
                                if(Test-Path -Path $TestLP){
                                    if ($Item -eq $Langue) {
                                        Write-Host "Install Language WinPE Found =>" $ISO.Name "=>" $Item
                                        Add-WindowsPackage -Path "C:\mount\WinPE" -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\$Item\lp.cab"
                                        Add-WindowsPackage -Path "C:\mount\WinPE" -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\$Item\WinPE-Setup_$Item.cab"
                                        Add-WindowsPackage -Path "C:\mount\WinPE" -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\$Item\WinPE-Setup-Client_$Item.cab"
                                    
                                    }
                                }
                            }
                            # check is WinPE-Font is necessary
                            foreach ($ItemFont in $SpecificCode) {
                                $TestLP = $vol.DriveLetter + ":\sources\" + $ItemFont
                                if(Test-Path -Path $TestLP){
                                    if ($Item -eq $Langue) {
                                        Write-Host "Install Language WinPE Specific Font Found =>" $ISO.Name "=>" $ItemFont
                                        Add-WindowsPackage -Path "C:\mount\WinPE" -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-FontSupport-$Item.cab"
                                    }
                                }
                            }  
                        }
                        Write-Host "Unmount ISO"
                        Write-Host " "
                        dismount-diskImage -ImagePath $PatchISO
                    }
                }
                Write-Host "Unmount WinPE WIM"
                Write-Host " "

                Dismount-WindowsImage -Path "C:\mount\WinPE" -Save


                ############################################# Gestion du install.wim ###############################################
                # >>>>> For all version in VersionWindows
                Write-Host ""
                Write-Host "**************** Gestion du install.wim ****************"
                $listwim = Get-WindowsImage -ImagePath "c:\mount\ISO\sources\install.wim"
                foreach ($Version in $listwim) {
                    $Nomversion = $Version.ImageName
                    # obligé de changer le nom des version pour les ISO Francaises
                    $Nomversion = $Nomversion.replace("Éducation","Education")
                    $Nomversion = $Nomversion.replace("Entreprise","Enterprise")
                    $Nomversion = $Nomversion.replace("Professionnel","Pro")
                    $Nomversion = $Nomversion.replace("pour les Stations de travail","for Workstations")
                    
                    Write-Host " "
                    Write-Host "ImageName=>$Nomversion"
                    
                    $Releases = $ListRelease.SelectedItems | Sort-Object
                    foreach ($Release in $Releases) {
                        If ($Nomversion -eq $Release) { 
                            Write-Host ""
                            Write-Host "Modify WindowsVersion=" $Version.ImageName
                            Set-ItemProperty -Path "c:\mount\ISO\sources\install.wim" -Name IsReadOnly -Value $false
                            
                            write-host Mount-WindowsImage -ImagePath "c:\mount\ISO\sources\install.wim" -Index $Version.ImageIndex -Path "C:\mount\Windows"
                            Mount-WindowsImage -ImagePath "c:\mount\ISO\sources\install.wim" -Index $Version.ImageIndex -Path "C:\mount\Windows"
                            
                            InjectMSUdrivers
    
                            DeleteAppx
    
                            # Chech All Exist ISO to Add Language pack
                            Write-Host "**************** Add Language pack ****************"
                            foreach ($ISO in $ListISO) {
                                If (($ISO.Name -ne $ENUSISO) -And ($ISO.Name -ne $MUIISO) -and ($ISO.Name -ne $FeatureISO)) {
                                    
                                    $CurrentISO = ""
                                    $PatchISO = $ISOWindows10.Text + "\" + $ISO.Name
                                    $vol = Mount-DiskImage -ImagePath $PatchISO -PassThru | Get-DiskImage | Get-Volume
                                    $CurrentISO = $vol.DriveLetter + ":\"
                                    Write-Host "Mount $PatchISO To $CurrentISO"
                                    $Langues = $ListLangues.SelectedItems | Sort-Object
                                    foreach ($Langue in $Langues) {
                                        foreach ($Item in $LanguageCode) {
                                            $TestLP = $vol.DriveLetter + ":\sources\" + $Item
                                            if(Test-Path -Path $TestLP){
                                                if ($Item -eq $Langue) {
                                                    if ($DriveMUI -ne "") {
                                                        $PatchLPcab = $DriveMUI + "x64\langpacks\Microsoft-Windows-Client-Language-Pack_x64_" + $Item + ".cab"
                                                        Write-Host "Integrate" $PatchLPcab
                                                        Add-WindowsPackage -Path "C:\mount\Windows" -ScratchDirectory "C:\Scratch" -PackagePath $PatchLPcab
                                                    }

                                                    if ($DriveLocalLP -ne "") {     
                                                        $PatchLLPCab = $DriveLocalLP+"LocalExperiencePack\"+$Item+"\LanguageExperiencePack."+$Item+".Neutral.appx"
                                                        $PatchLLPlic = $DriveLocalLP+"LocalExperiencePack\"+$Item+"\License.xml"
                                                        Write-Host "Integrate" $PatchLLPCab
                                                        Add-AppxProvisionedPackage -Path "c:\mount\Windows" -PackagePath $PatchLLPCab -LicensePath $PatchLLPlic
                                                    }
    
                                                    If ($DriveFeature -ne "") {
                                                        $InstallFeature = Get-WindowsCapability -Path "c:\mount\Windows" | Where-Object {$_.Name -like "Language.*$Item*"}
                                                        Foreach ($Install in $InstallFeature) {
                                                            $FullNameFeature = $Install.Name
                                                            Write-host "Install $FullNameFeature depuis $DriveFeature"
                                                            Add-WindowsCapability -Path "c:\mount\Windows" -Name $FullNameFeature -Source "$DriveFeature"   
                                                        }
                                                    }

                                                    $DestinationLP = "c:\mount\ISO\Sources\" + $Item
                                                    Write-Host "Copy " $TestLP " to " $DestinationLP
                                                    Write-Host " "
                                                    Robocopy "$TestLP" "$DestinationLP" /MIR
                                                }
                                            }
                                        }
                                    }
                                    dismount-diskImage -ImagePath $PatchISO
                                }
                            }
                            ######################## Genaration du lang.ini ######################################################
                            Write-Host "**************** generate gen-langINI ****************"
                            Set-ItemProperty -Path "c:\mount\ISO\sources\lang.ini" -Name IsReadOnly -Value $false
                            Dism /image:C:\mount\Windows /gen-langINI /distribution:"c:\mount\ISO"
                            Copy-Item "c:\mount\ISO\sources\lang.ini" -Destination "C:\mount\WinPE\sources" -Force
    
                            # unmount Windows version
                            Write-Host "unmount Windows Version"
                            Write-Host " "
                            Dismount-WindowsImage -Path "C:\mount\Windows" -Save
                        }
                    }
                }
                
                ############################# Copy Build to Destination #############################################
                Write-Host "**************** Copy Build to Destination ****************"
                $FinalDest = $ExportFolder.Text
                Write-host "Robocopy c:\mount\ISO $FinalDest /MIR"
                robocopy "c:\mount\ISO" $FinalDest /MIR

                Write-host "unmount $PatchISOENUS"
                Write-Host " "
                dismount-diskImage -ImagePath $PatchISOENUS

                if ($PatchISOMUI -ne "") {               
                    write-host "unmount $PatchISOMUI"
                    Write-Host " "
                    dismount-diskImage -ImagePath $PatchISOMUI -ErrorAction SilentlyContinue
                }

                if ($PatchISOfeature -ne "") {
                    write-host "unmount $PatchISOfeature"
                    Write-Host " "
                    dismount-diskImage -ImagePath $PatchISOfeature -ErrorAction SilentlyContinue
                }

                if ($PatchLocalLP -ne "") {
                    write-host "unmount $PatchLocalLP"
                    Write-Host " "
                    dismount-diskImage -ImagePath $PatchLocalLP -ErrorAction SilentlyContinue
                }

            } Else {

                Write-Host "Abord Create W10 MUI => ISO not found"
            }
        }

        if (($WIMindex.IsChecked) -or ($monoLangue.IsChecked)) { 
            if ($WIMindex.IsChecked) {
                $FinalDest = $ExportFolder.Text
                $FinalISO  = $ExportFolder.Text
                $FinalDest = $FinalDest+"\IndexMUI.wim"

                ###################################### montage de l'ISO EN-US ########################################## 
                $PatchISOENUS = $ISOWindows10.Text + "\" + $ENUSISO
                Write-Host "Mount ISO $PatchISOENUS to $DriveENUS"
                $vol = Mount-DiskImage -ImagePath $PatchISOENUS -PassThru | Get-DiskImage | Get-Volume
                $DriveENUS = $vol.DriveLetter + ":\"
                write-host " "
                
                Write-Host "Robocopy ""$DriveENUS""  ""$FinalISO"" /MIR"
                Robocopy "$DriveENUS"  "$FinalISO" /MIR
                write-host " "

                Write-host "unmount $PatchISOENUS"
                dismount-diskImage -ImagePath $PatchISOENUS
                Write-Host " "

                Write-host "remove $FinalISO\Sources\install.wim"
                Remove-item "$FinalISO\Sources\install.wim" -Force -Recurse
                Write-Host " "

                Write-host "remove $FinalISO\Sources\lang.ini"
                Remove-item "$FinalISO\Sources\lang.ini" -Force -Recurse
                Write-Host " "

                ""                          | Out-File "$FinalISO\Sources\lang.ini" -Append -Encoding UTF8 -Force
                "[Available UI Languages]"  | Out-File "$FinalISO\Sources\lang.ini" -Append -Encoding UTF8 -Force
                "en-US = 3"                 | Out-File "$FinalISO\Sources\lang.ini" -Append -Encoding UTF8 -Force

                ###################################### GEstion du WinPE ######################################################## 
                # Add Language to WinPE
                Write-Host ""
                Write-Host "**************** Gestion du WinPE ****************"
                Write-Host "Mount WinPE $FinalISO\Sources\boot.wim"
                Set-ItemProperty -Path "$FinalISO\Sources\boot.wim" -Name IsReadOnly -Value $false
                Mount-WindowsImage -ImagePath "$FinalISO\Sources\boot.wim" -Name "Microsoft Windows Setup (x64)" -Path "C:\mount\WinPE"

                # List all ISO to identify language to WinPE
                foreach ($ISO in $ListISO) {
                    If (($ISO.Name -ne $ENUSISO) -And ($ISO.Name -ne $MUIISO) -and ($ISO.Name -ne $FeatureISO)) {

                        # Check is ISO content LanguaCode
                        $CurrentISO = ""
                        $PatchISO = $ISOWindows10.Text + "\" + $ISO.Name
                        $vol = Mount-DiskImage -ImagePath $PatchISO -PassThru | Get-DiskImage | Get-Volume
                        $CurrentISO = $vol.DriveLetter + ":\"
                        Write-Host "Check ISO =>" $PatchISO " Letter:" $CurrentISO

                        $Langues = $ListLangues.SelectedItems | Sort-Object
                        foreach ($Langue in $Langues) {
                            foreach ($Item in $LanguageCode) {
                                $TestLP = $vol.DriveLetter + ":\sources\" + $Item
                                if(Test-Path -Path $TestLP){
                                    if ($Item -eq $Langue) {
                                        Write-Host "Install Language WinPE Found =>" $ISO.Name "=>" $Item
                                        Add-WindowsPackage -Path "C:\mount\WinPE" -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\$Item\lp.cab"
                                        Add-WindowsPackage -Path "C:\mount\WinPE" -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\$Item\WinPE-Setup_$Item.cab"
                                        Add-WindowsPackage -Path "C:\mount\WinPE" -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\$Item\WinPE-Setup-Client_$Item.cab"
                                    
                                    }
                                }
                            }
                            # check is WinPE-Font is necessary
                            foreach ($ItemFont in $SpecificCode) {
                                $TestLP = $vol.DriveLetter + ":\sources\" + $ItemFont
                                if(Test-Path -Path $TestLP){
                                    if ($Item -eq $Langue) {
                                        Write-Host "Install Language WinPE Specific Font Found =>" $ISO.Name "=>" $ItemFont
                                        Add-WindowsPackage -Path "C:\mount\WinPE" -PackagePath "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\amd64\WinPE_OCs\WinPE-FontSupport-$Item.cab"
                                    }
                                }
                            }  
                        }
                        Write-Host "Unmount ISO"
                        dismount-diskImage -ImagePath $PatchISO
                        Write-Host " "
                    }
                }
                Write-Host "Unmount WinPE WIM"
                Dismount-WindowsImage -Path "C:\mount\WinPE" -Save
                Write-Host " "
            }
            
            foreach ($ISO in $ListISO) {
                $PatchISO = $ISOWindows10.Text + "\" + $ISO.Name
                dismount-diskImage -ImagePath $PatchISO
                $vol = Mount-DiskImage -ImagePath $PatchISO -PassThru | Get-DiskImage | Get-Volume
                $DriveVol = $vol.DriveLetter + ":\"

                foreach ($Item in $LanguageCode) {
                    $TestLP = $vol.DriveLetter + ":\sources\" + $Item
                    if(Test-Path -Path $TestLP){
                        $Langues = $ListLangues.SelectedItems | Sort-Object
                        foreach ($Langue in $Langues) {
                            If($Item -eq $Langue) {


                                if ($WIMindex.IsChecked) {
                                    $DestinationLP = "$FinalISO\Sources\"+$Item
                                    Write-Host "Copy " $TestLP " to " $DestinationLP
                                    Write-Host " "
                                    Robocopy "$TestLP" "$DestinationLP" /MIR

                                    if ($Langue -notlike "*en-us*") { "$Langue = 2"                 | Out-File "$FinalISO\Sources\lang.ini" -Append -Encoding UTF8 -Force  }
                                       
                                }


                                write-host "ISO:$PatchISO"
                                Write-host "Robocopy $DriveVol c:\mount\ISO /MIR"
                                Robocopy "$DriveVol"  "c:\mount\ISO" /MIR        
                                Set-ItemProperty -Path "c:\mount\ISO\sources\install.wim" -Name IsReadOnly -Value $false

  


                                Write-Host ""
                                Write-Host "**************** Gestion du install.wim $Item ****************"
                               
                                $listwim = Get-WindowsImage -ImagePath "c:\mount\ISO\sources\install.wim"
                                foreach ($Version in $listwim) {
                                    $Nomversion = $Version.ImageName
                                    # obligé de changer le nom des version pour les ISO Francaises
                                    $Nomversion = $Nomversion.replace("Éducation","Education")
                                    $Nomversion = $Nomversion.replace("Entreprise","Enterprise")
                                    $Nomversion = $Nomversion.replace("Professionnel","Pro")
                                    $Nomversion = $Nomversion.replace("pour les Stations de travail","for Workstations")
                                    
                                    Write-Host " "
                                    Write-Host "ImageName=>$Nomversion"
                                    
                                    $IndexExport = 0
                                    $NameExport  = "xxxx"
                                    $Releases = $ListRelease.SelectedItems | Sort-Object
                                    foreach ($Release in $Releases) {
                                        If ($Nomversion -eq $Release) { 
                                            $IndexExport = $Version.ImageIndex
                                            $NameExport  = $Langue+" - "+$Release

                                            write-host Mount-WindowsImage -ImagePath "c:\mount\ISO\sources\install.wim" -Index $Version.ImageIndex -Path "C:\mount\Windows"
                                            Mount-WindowsImage -ImagePath "c:\mount\ISO\sources\install.wim" -Index $Version.ImageIndex -Path "C:\mount\Windows"
                                            
                                            InjectMSUdrivers
                    
                                            DeleteAppx  
                                            
                                            # unmount Windows version
                                            Write-Host "unmount Windows Version"
                                            Write-Host " "
                                            Dismount-WindowsImage -Path "C:\mount\Windows" -Save

                                            if ($monoLangue.IsChecked) {
                                                $FinalDest = $ExportFolder.Text
                                                $FinalDest = $FinalDest+"\"+$Langue
                                                robocopy "c:\mount\ISO" $FinalDest /MIR
                                            }
    
                                            if ($WIMindex.IsChecked) {
                                                write-host Dism /export-image /SourceImageFile="c:\mount\ISO\sources\install.wim" /Sourceindex=$IndexExport /DestinationImageFile=$FinalDest /DestinationName=$NameExport
                                                Dism /export-image /SourceImageFile="c:\mount\ISO\sources\install.wim" /Sourceindex=$IndexExport /DestinationImageFile=$FinalDest /DestinationName=$NameExport
                                                write-host " "
                                            }
 
                                        }
                                    }
                                }
                            }
                        }
                    } 
                }
                dismount-diskImage -ImagePath $PatchISO
            }

            ""                          | Out-File "$FinalISO\Sources\lang.ini" -Append -Encoding UTF8 -Force
            "[Fallback Languages]"      | Out-File "$FinalISO\Sources\lang.ini" -Append -Encoding UTF8 -Force
            "en-US = en-us"             | Out-File "$FinalISO\Sources\lang.ini" -Append -Encoding UTF8 -Force
        }

        cleanupMountFolder
        Write-Host "Build OK"
        
        $Message = "Fin de construction"
        $Title = "Information"
        $Button = "OK" #valeurs possibles  OK OKCancel YesNo YesNoCancel
        $Icon = "Information" #Valeurs possibles Asterisk Error Exclamation Hand Information None Question Stop Warning
        $DefaultButton = "None" #=> resultat par defaut de $Button, les valeurs possibles sont donc les mêmes
        $result = [System.Windows.MessageBox]::Show($Message,$Title,$Button,$Icon,$DefaultButton)
    }
})

function Pause ($Message="Press any key to continue") {
    Write-Host -NoNewLine $Message
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    Write-Host ""
}

Function DeleteAppx {
    # Delete appx provisionning
    Write-Host "**************** Delete appx provisionning ****************"
    $AppxDelete = $Appx.SelectedItems | Sort-Object
    foreach ($DelectAppx in $AppxDelete) {
        Write-Host "Delete $DelectAppx"
        $ProvisionedPackage = Get-AppxProvisionedPackage -Path "c:\mount\Windows" | Where-Object {$_.DisplayName -eq $DelectAppx}
        Remove-AppxProvisionedPackage -Path "c:\mount\Windows" -PackageName $ProvisionedPackage.PackageName
    }
}

function InjectMSUdrivers {
    if ($MSU.IsChecked ) {
        if ($MSUSSU.Text -ne "")    { ADDWinMSU "C:\mount\Windows" $MSUSSU.Text    }
        if ($MSUUpdate.Text -ne "") { ADDWinMSU "C:\mount\Windows" $MSUUpdate.Text }
        if ($MSUOther.Text -ne "")  { ADDWinMSU "C:\mount\Windows" $MSUOther.Text  }
    }

    if ($NetFX3.IsChecked ) {
        # Activate NetFx3
        $Sourcesxs = "c:\mount\ISO\sources\sxs"
        ActivateNetFX3 "c:\mount\Windows" $Sourcesxs
    }

    if ($InjectDrivers.IsChecked ) {
        # Inject Drivers
        Write-Host "**************** Inject Drivers ****************"
        $DriversInject = $DriversFolder.Text
        if(Test-Path -Path $DriversInject){
            Write-Host "Folder Drivers => " $DriversInject
            Add-WindowsDriver -Path "c:\mount\Windows" -Driver $DriversInject -Recurse
        }
    }
}

function CreateXMLGUI {
    $xmlpath = $PSScriptRoot + "\buildwindows10Multilangue.xml"
    write-host "-------------------------------------------"
    write-host "create : $xmlpath"
    write-host "-------------------------------------------"

    if (test-path $xmlpath) { Remove-item $xmlpath -Force -Recurse }
    # Set The Formatting
    $xmlsettings = New-Object System.Xml.XmlWriterSettings
    $xmlsettings.Indent = $true
    $xmlsettings.IndentChars = "    "

    # Set the File Name Create The Document
    $XmlWriter = [System.XML.XmlWriter]::Create($xmlpath, $xmlsettings)

    # Write the XML Decleration and set the XSL
    $xmlWriter.WriteStartDocument()
    $xmlWriter.WriteProcessingInstruction("xml-stylesheet", "type='text/xsl' href='style.xsl'")

    $ValueISOWindows10  = $ISOWindows10.Text
    $ValueExportFolder  = $ExportFolder.Text
    $valueDriversFolder = $DriversFolder.Text
    $ValueMSUUpdate     = $MSUUpdate.Text
    $ValueMSUOther      = $MSUOther.Text
    $ValueMSUSSU        = $MSUSSU.Text
    # Start the Root Element
    $xmlWriter.WriteStartElement("Buildw10")
        $xmlWriter.WriteStartElement("Text") # <-- Start <Object>
            $xmlWriter.WriteElementString("ISOWindows10","$ValueISOWindows10")
            $xmlWriter.WriteElementString("ExportFolder","$ValueExportFolder")
            $xmlWriter.WriteElementString("DriversFolder","$valueDriversFolder")
            $xmlWriter.WriteElementString("MSUUpdate","$ValueMSUUpdate")
            $xmlWriter.WriteElementString("MSUOther","$ValueMSUOther")
            $xmlWriter.WriteElementString("MSUSSU","$ValueMSUSSU")
        $xmlWriter.WriteEndElement() # <-- End <Object>

        $xmlWriter.WriteStartElement("Appx") # <-- Start <Object>
        $AppxDelete = $Appx.SelectedItems | Sort-Object
        foreach ($DelectAppx in $AppxDelete) {
            $xmlWriter.WriteElementString("Select","$DelectAppx")
        }
        $xmlWriter.WriteEndElement()

        $xmlWriter.WriteStartElement("Version") # <-- Start <Object>
        $Releases = $ListRelease.SelectedItems | Sort-Object
        foreach ($Release in $Releases) {
            $xmlWriter.WriteElementString("Select","$Release")
        }
        $xmlWriter.WriteEndElement()

        $xmlWriter.WriteStartElement("Langues") # <-- Start <Object>
        $Langues = $ListLangues.SelectedItems | Sort-Object
        foreach ($Langue in $Langues) {
            $xmlWriter.WriteElementString("Select","$Langue")
        }
        $xmlWriter.WriteEndElement()

    $xmlWriter.WriteEndElement() # <-- End <Root> 



    # End, Finalize and close the XML Document
    $xmlWriter.WriteEndDocument()
    $xmlWriter.Flush()
    $xmlWriter.Close()


}


function ADDWinMSU {
    param(
        [string] $MountF,
        [string] $FileMSU
    )

    if (Test-Path $FileMSU) {
        Write-Host "integrate : $MountF => $FileMSU"
        Add-WindowsPackage -Path "C:\mount\Windows" -PackagePath $FileMSU
    }
}

function ActivateNetFX3 {
    param(
        [string] $MountF,
        [string] $SourceF
    )
    Write-Host "Enable Netfx3 : $MountF => $SourceF"
    Enable-WindowsOptionalFeature -Path $MountF -FeatureName "NetFx3" -All -LimitAccess -Source $SourceF
}

function CleanupMountFolder {
    # create local directory
    $ErrorActionPreference = "SilentlyContinue"
    Get-WindowsImage -Mounted | Dismount-WindowsImage -Discard
    dism /cleanup-wim
    Dismount-WindowsImage -Path "c:\mount\WinPE" -Discard
    Dismount-WindowsImage -Path "c:\mount\Windows" -Discard
    Remove-Item "c:\mount\ISO" -Force -Recurse
    Remove-Item "c:\mount\Windows" -Force -Recurse
    Remove-Item "c:\mount" -Force -Recurse
    Remove-Item "C:\Scratch" -Force -Recurse
    $ErrorActionPreference = "Continue"
}

function PrepareMountFolder {
    New-Item -ItemType directory -Path "C:\mount"
    New-Item -ItemType directory -Path "C:\mount\WinPE"
    New-Item -ItemType directory -Path "C:\mount\Windows"
    New-Item -ItemType directory -Path "C:\Scratch"
}

    
#Open Powershell Under Administrator context
Check-IsAdmin

# Display UI object
$Form.ShowDialog() | out-null
