# Infraestrutura de rede para uma pequena empresa

Portfólio inicial na área de Infraestrutura de TI, preparado como apoio ao Projeto Integrador — Fase 1: Criando o Portfólio e Garantindo a Empregabilidade, da Gran Faculdade.

**Situação: projeto proposto. A rede ainda não foi implantada ou validada em laboratório.** Os testes dos arquivos entregues são descritos em [Validação da entrega](docs/validacao-entrega.md); eles não comprovam funcionamento da infraestrutura.

## Apresentação

Este estudo planeja uma rede para uma empresa fictícia com dez estações, uma impressora e um servidor de arquivos. O objetivo é demonstrar organização, endereçamento IPv4, entendimento de DHCP/DNS, segurança básica, diagnóstico e comunicação técnica.

Não representa uma implantação em empresa real. Nenhum resultado, equipamento adquirido, experiência profissional ou aprovação acadêmica é presumido. A aderência final deve ser conferida com o enunciado e a orientação docente.

## Navegação

- [Escopo, decisões e topologia](docs/topologia.md)
- [Plano de endereçamento](docs/enderecamento-ip.md) e [tabela CSV](dados/plano-ip.csv)
- [Procedimentos de implantação](docs/implantacao.md)
- [Plano de testes](docs/testes.md)
- [Boas práticas de segurança](docs/seguranca.md)
- [Registro de evidências](evidencias/README.md)
- [Apresentação acadêmica e publicação](docs/portfolio-e-publicacao.md)
- [Scripts PowerShell](scripts/README.md)

## Como começar

1. Leia a topologia e ajuste o plano a um laboratório isolado.
2. Execute a implantação apenas nos equipamentos autorizados.
3. Execute os testes e registre resultados reais, inclusive falhas.
4. Atualize a situação do projeto somente com evidências.

Para consultar a configuração local no Windows, abra o PowerShell na pasta do repositório:

```powershell
.\scripts\Consultar-Configuracao.ps1
```

Para testar um destino escolhido por você:

```powershell
.\scripts\Testar-Conectividade.ps1 -Destino 192.168.50.1
.\scripts\Consultar-Dns.ps1 -Nome exemplo.test
```

O primeiro destino corresponde ao gateway proposto; o segundo é um nome de exemplo e pode falhar. Consulte as instruções dos scripts antes de executar. Não desative políticas do Windows para contornar bloqueios.

## Competências demonstradas

Planejamento de rede local, documentação, identificação de riscos, interpretação de testes e uso básico de PowerShell. A proposta também exercita comunicação com usuários, registro de incidentes e transparência sobre limites técnicos.

## Próximas etapas

- Implantar em laboratório e anexar evidências anonimizadas.
- Validar restauração de um arquivo de teste.
- Evoluir o desenho com VLANs, rede de visitantes e monitoramento, após definir requisitos e equipamentos compatíveis.

Autor: Cristian Rockenbach Avila. Curso: Inteligência Artificial. Disciplina/turma: Projeto Integrador: Profissional de TI – Empregabilidade e Portfólio
. Data da proposta: 30/10/2026.
