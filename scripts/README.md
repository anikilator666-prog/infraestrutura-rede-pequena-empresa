# Diagnósticos PowerShell

Projetados para Windows PowerShell 5.1 ou PowerShell 7 no Windows com os comandos de rede disponíveis. Execute como usuário comum; não é esperado precisar de administrador. A disponibilidade de cmdlets depende do Windows instalado.

| Script | Ação |
|---|---|
| Consultar-Configuracao.ps1 | Exibe IPs, gateways e DNS dos adaptadores |
| Testar-Conectividade.ps1 | Envia dois pings e, opcionalmente, testa uma porta TCP |
| Consultar-Dns.ps1 | Consulta registros IPv4 A de um nome |

Execute a partir da raiz do repositório:

```powershell
.\scripts\Consultar-Configuracao.ps1
.\scripts\Testar-Conectividade.ps1 -Destino 192.168.50.1
.\scripts\Testar-Conectividade.ps1 -Destino 192.168.50.10 -Porta 445
.\scripts\Consultar-Dns.ps1 -Nome example.com -Servidor 192.168.50.1
```

Escolha destinos sob sua autorização. Não há varredura de faixas nem portas em lote. Ping e consulta DNS geram tráfego; teste TCP tenta estabelecer conexão. Os scripts não alteram interfaces, firewall, DNS, DHCP ou políticas, não instalam programas e não salvam resultados automaticamente.

Revise o conteúdo antes da execução. Se a política bloquear scripts, respeite as regras do computador e solicite orientação ao responsável; este projeto não orienta a desativação da proteção. As consultas podem levar alguns segundos e falhar conforme a rede.

Mensagens de falha são diagnósticos, não um parecer de segurança. Confira os campos retornados: o término do script sem erro não significa conectividade aprovada. Nunca publique saídas sem revisar os dados.
