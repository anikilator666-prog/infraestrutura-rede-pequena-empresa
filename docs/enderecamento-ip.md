# Plano de endereçamento IPv4

Rede privada proposta: **192.168.50.0/24**, máscara **255.255.255.0**. Existem 254 endereços de host utilizáveis, de .1 a .254. .0 é a rede e .255 é broadcast; nenhum deles deve ser atribuído a equipamento.

| Uso | Endereço/faixa | Atribuição |
|---|---|---|
| R1 / gateway e DNS dos clientes | 192.168.50.1 | Fixo na LAN |
| SW1 / administração | 192.168.50.2 | Fixo |
| SRV1 / arquivos | 192.168.50.10 | Fixo |
| PRN1 / impressora | 192.168.50.20 | Fixo |
| Infraestrutura futura | .3–.9, .11–.19, .21–.99 | Não atribuir sem atualizar inventário |
| Clientes DHCP | 192.168.50.100–192.168.50.149 | Dinâmica, 50 concessões |
| Expansão | 192.168.50.150–192.168.50.254 | Fora do pool; ainda sem uso |

Todos os hosts usam /24, gateway 192.168.50.1 e DNS 192.168.50.1. R1 encaminha consultas para resolvedores definidos no laboratório/provedor. A concessão proposta é de 8 horas. Configure um único servidor DHCP por domínio de broadcast.

O pool não contém os IPs fixos. PC01–PC10 não têm IP individual garantido: a concessão pode mudar. Reservas DHCP são uma evolução possível, exigindo registro dos endereços MAC reais.

Antes de configurar, verifique se essa faixa conflita com redes existentes, VPNs ou interfaces do host. Nesse caso, escolha outra rede privada e atualize todos os documentos. Um ping sem resposta não garante que um IP esteja livre: confira inventário, concessões e dispositivos.

IPv6 está fora do escopo do plano; não é necessário desabilitá-lo nos equipamentos.
