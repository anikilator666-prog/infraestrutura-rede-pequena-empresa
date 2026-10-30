# Um destino por execucao. Nao altera configuracoes.
[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)]
    [ValidatePattern('^[a-zA-Z0-9][a-zA-Z0-9.-]{0,252}$')]
    [string]$Destino,

    [ValidateRange(1,65535)]
    [int]$Porta
)

$ErrorActionPreference = 'Stop'
try {
    $respondePing = Test-Connection -ComputerName $Destino -Count 2 -Quiet -ErrorAction Stop
    [pscustomobject]@{ Teste='ICMP'; Destino=$Destino; Responde=$respondePing }
}
catch {
    Write-Warning "ICMP sem resultado: $($_.Exception.Message)"
}

if ($PSBoundParameters.ContainsKey('Porta')) {
    try {
        Test-NetConnection -ComputerName $Destino -Port $Porta -InformationLevel Detailed -ErrorAction Stop |
            Select-Object ComputerName, RemoteAddress, RemotePort, TcpTestSucceeded
    }
    catch {
        Write-Warning "TCP sem resultado: $($_.Exception.Message)"
    }
}
