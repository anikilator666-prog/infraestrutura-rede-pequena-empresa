# Roteiro de implantação — ainda não executado

Execute apenas em laboratório ou ambiente autorizado. O roteiro exige adaptação ao sistema do servidor e ao modelo do roteador; não é uma configuração pronta para qualquer fabricante.

## 1. Preparar e registrar

1. Inventarie equipamentos, interfaces e versões. Confirme compatibilidade, licenças e ausência de conflito com a faixa proposta.
2. Salve as configurações atuais e identifique como restaurá-las. Em VMs, crie um ponto de retorno adequado ao laboratório.
3. Separe o laboratório da rede existente. Mantenha o DHCP do laboratório fora da rede doméstica/empresa.
4. Registre a configuração anterior, janela de mudança e responsável. Não publique senhas, chaves ou backups de configuração.

## 2. Montar a rede

1. Ligue a LAN de R1 ao switch e conecte os demais equipamentos conforme a topologia.
2. Identifique os cabos e confira indicadores de enlace.
3. Configure a LAN de R1 em 192.168.50.1/24. Configure a WAN conforme o ambiente, mantendo a administração pela LAN.
4. Configure o switch em 192.168.50.2/24. Use credenciais próprias, firmware adequado e administração restrita à LAN.

## 3. Configurar serviços e hosts

1. No roteador, configure DHCP .100–.149, máscara /24, gateway e DNS .1 e concessão de 8 horas.
2. Habilite o encaminhamento DNS para os resolvedores do ambiente. Confirme que R1 atende consultas DNS na LAN. Se não oferecer essa função, revise o plano antes de continuar.
3. Configure SRV1 em .10 e PRN1 em .20, com máscara /24, gateway e DNS .1.
4. Nas estações, selecione obtenção automática de endereço e DNS. Confirme a concessão recebida; não force mudanças na rede principal do computador usado para estudar.
5. Mantenha firewall e atualizações ativos. Não crie redirecionamentos de portas para SMB ou administração.

## 4. Disponibilizar arquivos

1. Em SRV1, crie uma pasta de laboratório, por exemplo `Dados-Lab`, sem dados pessoais.
2. Crie contas individuais de teste e grupos com leitura ou edição, conforme a necessidade. Não use acesso anônimo.
3. Configure o compartilhamento SMB e as permissões do sistema de arquivos. Ambas devem autorizar o acesso necessário.
4. Libere SMB no firewall somente para a LAN autorizada. Não desative o firewall inteiro.
5. Em uma estação, acesse `\\192.168.50.10\Dados-Lab` com conta de teste. Verifique leitura, escrita e negação de acesso usando os perfis do plano de testes.
6. Configure uma cópia de segurança em destino separado e valide a restauração de um arquivo fictício.

## 5. Validar e reverter

Execute os casos de [testes](testes.md). Se houver falha, registre sintoma, hipótese, alteração e novo resultado. Confirme se a falha é de enlace, IP, rota, DNS, serviço ou permissão antes de mudar configurações.

Se precisar reverter, desconecte o laboratório, restaure os backups de configuração ou snapshots, devolva os hosts ao modo anterior e confirme a conectividade original. Não faça restauração de fábrica sem conhecer o procedimento e possuir as configurações necessárias.
