# Validação da entrega — 30/10/2026

## Verificações dos arquivos

- Os três scripts passaram pela análise de sintaxe do PowerShell disponível no ambiente de preparação.
- A lógica de consulta de configuração, ICMP, TCP e DNS foi exercitada com funções locais que retornam dados fictícios. Nenhum pacote foi enviado por esses testes.
- Foram verificadas a rejeição de uma porta fora de 1–65535 e de um nome com espaços, e a existência dos destinos dos links Markdown locais.
- O plano foi conferido: rede /24, 254 hosts utilizáveis, pool de 50 concessões sem sobreposição com os quatro IPs fixos e 13 portas utilizadas no switch de 16 portas.
- O pacote ZIP foi reaberto e seus arquivos comparados byte a byte com a pasta de entrega.

## Limites

Os testes com dados simulados verificam o processamento dos scripts, mas não comprovam o comportamento dos cmdlets reais, compatibilidade em todas as versões do Windows ou acesso a equipamentos. A compatibilidade com Windows PowerShell 5.1 é pretendida; não houve execução nessa versão.

Não foram executadas consultas na rede do usuário, implantação, DHCP real, resolução DNS real, testes de firewall, acesso SMB, impressão ou restauração de backup. Não há evidências de desempenho ou disponibilidade. Todos os casos T01–T12 continuam pendentes.

Para declarar a infraestrutura implementada, execute o roteiro em laboratório e registre os resultados conforme o plano de testes. Não use esta validação de arquivos como evidência de implantação.
