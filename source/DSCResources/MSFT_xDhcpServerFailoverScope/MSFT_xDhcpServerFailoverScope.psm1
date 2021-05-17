$script:resourceHelperModulePath = Join-Path -Path $PSScriptRoot -ChildPath '../../Modules/DscResource.Common'
$script:moduleHelperPath = Join-Path -Path $PSScriptRoot -ChildPath '../../Modules/DhcpServerDsc.Common'

Import-Module -Name $script:resourceHelperModulePath
Import-Module -Name $script:moduleHelperPath

$script:localizedData = Get-LocalizedData -DefaultUICulture 'en-US'

Function Get-TargetResource {
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param
    (
        [Parameter(Mandatory = $true)]
        [System.String]
        $ScopeId,

        [Parameter(Mandatory = $true)]
        [System.String]
        $PartnerServer,

        [Parameter(Mandatory = $true)]
        [System.String]
        $PrimaryServer,

        [Parameter(Mandatory = $true)]
        [System.String]
        $PrimaryServerRole,

        [Parameter(Mandatory = $true)]
        [System.String]
        $Name,

        [Parameter(Mandatory = $true)]
        [System.String]
        $SharedSecret,

        [Parameter(Mandatory = $true)]
        [System.String]
        $StateSwitchInterval
    )

    Write-Verbose -Message (
        $script:localizedData.GetServerScopeMessage -f $ScopeId
    )

    Assert-Module -ModuleName 'DHCPServer'
}

Function Set-TargetResource {

}

Function Test-TargetResource {

}
