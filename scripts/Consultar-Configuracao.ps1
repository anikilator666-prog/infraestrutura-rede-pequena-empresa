# Consulta somente leitura. Nao grava relatorios nem altera a rede.
[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
try {
    Get-NetIPConfiguration -ErrorAction Stop |
        Select-Object InterfaceAlias, InterfaceIndex,
            @{Name='IPv4';Expression={($_.IPv4Address | ForEach-Object { "$($_.IPAddress)/$($_.PrefixLength)" }) -join ', '}},
            @{Name='GatewayIPv4';Expression={($_.IPv4DefaultGateway.NextHop) -join ', '}},
            @{Name='DNS';Expression={($_.DNSServer.ServerAddresses) -join ', '}}
}
catch {
    Write-Error "Nao foi possivel consultar a configuracao: $($_.Exception.Message)"
}
