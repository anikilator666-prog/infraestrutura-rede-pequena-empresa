# Plano de testes

**Todos os testes de infraestrutura estão pendentes.** A coluna “Esperado” é um critério, não um resultado observado. Execute em uma estação conectada ao laboratório, anotando data, equipamento, versão do sistema e responsável.

| ID | Procedimento | Esperado | Situação inicial |
|---|---|---|---|
| T01 | Conferir cabos, portas e estado do adaptador | Enlaces ativos | Não executado |
| T02 | Executar Consultar-Configuracao.ps1 | Cliente .100–.149, /24, gateway e DNS .1 | Não executado |
| T03 | Conferir tabela de concessões de R1 | Uma concessão correspondente ao cliente; IPs fixos fora do pool | Não executado |
| T04 | Testar-Conectividade.ps1 -Destino 192.168.50.1 | Resposta ICMP, se permitida | Não executado |
| T05 | Testar-Conectividade.ps1 -Destino 192.168.50.10 -Porta 445 | Porta SMB acessível de estação autorizada | Não executado |
| T06 | Consultar-Dns.ps1 -Nome example.com -Servidor 192.168.50.1 | Resposta A via DNS de R1, com saída à Internet | Não executado |
| T07 | Acessar compartilhamento com conta de leitura | Leitura permitida; criação/alteração negadas | Não executado |
| T08 | Acessar compartilhamento com conta de edição | Criar, ler e excluir arquivo fictício | Não executado |
| T09 | Tentar acesso com conta sem permissão, sem sessão SMB anterior | Acesso negado | Não executado |
| T10 | Imprimir página de teste pela estação | Página recebida na impressora correta | Não executado |
| T11 | Restaurar arquivo fictício de backup para outra pasta | Conteúdo restaurado confere com original | Não executado |
| T12 | Reiniciar uma estação do laboratório e repetir T02/T05 | Concessão válida e serviço acessível | Não executado |

Para T09, encerre a sessão de teste anterior pelo mecanismo do Windows antes de trocar de conta; credenciais em cache podem invalidar a observação. Não remova sessões de trabalho de terceiros.

Ausência de resposta ICMP pode indicar filtragem e não prova indisponibilidade. Porta TCP aberta não comprova autenticação, permissões, integridade ou segurança. DNS resolvido não comprova navegação. Se o laboratório não tiver Internet, registre T06 como não aplicável, justificando, e planeje um teste DNS com registro local configurado.

## Modelo de registro por execução

- ID / data / responsável:
- Equipamento e versão do sistema:
- Pré-condições e comando/procedimento:
- Resultado esperado:
- Resultado observado (texto fiel, sem inventar):
- Situação: aprovado / reprovado / não executado / não aplicável:
- Evidência anonimizada:
- Falha, correção e reteste:

Guarde as evidências conforme [orientações](../evidencias/README.md). Só altere a situação de um teste quando houver execução registrada.
