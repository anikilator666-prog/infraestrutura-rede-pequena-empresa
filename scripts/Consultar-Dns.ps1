# Consulta registros A. Nao altera os servidores DNS do computador.
[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidatePattern('^[a-zA-Z0-9][a-zA-Z0-9.-]{0,252}$')]
    [string]$Nome,

    [ValidatePattern('^[a-zA-Z0-9][a-zA-Z0-9.-]{0,252}$')]
    [string]$Servidor
)

$ErrorActionPreference = 'Stop'
try {
    $consulta = @{ Name=$Nome; Type='A'; DnsOnly=$true; ErrorAction='Stop' }
    if ($PSBoundParameters.ContainsKey('Servidor')) {
        $consulta.Server = $Servidor
    }
    Resolve-DnsName @consulta | Select-Object Name, Type, IPAddress, NameHost
}
catch {
    Write-Error "Nao foi possivel resolver o nome: $($_.Exception.Message)"
}
