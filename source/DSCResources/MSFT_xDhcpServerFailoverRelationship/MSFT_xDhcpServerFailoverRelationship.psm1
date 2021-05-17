$script:resourceHelperModulePath = Join-Path -Path $PSScriptRoot -ChildPath '../../Modules/DscResource.Common'
$script:moduleHelperPath = Join-Path -Path $PSScriptRoot -ChildPath '../../Modules/DhcpServerDsc.Common'

Import-Module -Name $script:resourceHelperModulePath
Import-Module -Name $script:moduleHelperPath

$script:localizedData = Get-LocalizedData -DefaultUICulture 'en-US'

Function Get-TargetResource
{
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

        [System.String]
        $PrimaryServerRole,

        [Parameter(Mandatory = $true)]
        [System.String]
        $Name,

        [System.String]
        $SharedSecret,

        [Parameter(Mandatory = $true)]
        [System.Timespan]
        $StateSwitchInterval,

        [Parameter(Mandatory = $true)]
        [System.Boolean]
        $AutoStateTransition
    )

    Write-Verbose -Message (
        $script:localizedData.GetServerScopeMessage -f $ScopeId
    )

    Assert-Module -ModuleName 'DHCPServer'
}

Function Set-TargetResource
{
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

        [System.String]
        $PrimaryServerRole,

        [Parameter(Mandatory = $true)]
        [System.String]
        $Name,

        [System.String]
        $SharedSecret,

        [Parameter(Mandatory = $true)]
        [System.Timespan]
        $StateSwitchInterval,

        [Parameter(Mandatory = $true)]
        [System.Boolean]
        $AutoStateTransition,

        [Parameter()]
        [ValidateSet('Present', 'Absent')]
        [System.String]
        $Ensure = 'Present'



    )

    if ($Ensure -eq 'Present')
    {
    }
}

Function Test-TargetResource
{

}
