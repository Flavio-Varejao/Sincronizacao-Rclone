# Sincronização com Rclone

## Executa as funcionalidades do Rclone

Site: <https://youtu.be/HtPT3anbCaU>  
Autor:      Flávio Varejão  
Manutenção: Flávio Varejão  

Esses scripts reúnem as opções e comandos mais utilizados na ferramenta Rclone.  

Configurar, sincronizar, montar, listar arquivos, verificar, exibir informações, exibir o manual, etc. Também é possível agendar sincronizações com a ferramenta crontab.  

Há dois scripts, o de funcionalidades e o de agendamento. A seguir, mais informações sobre eles.  

<a name="ancora"></a>
- [Script de Funcionalidades](#ancora1)
- [Script de Agendamento](#ancora2)

<a id="ancora1"></a>
## rclone-sync.sh  
>

Esse script executa as funcionalidades do Rclone.  

### Permissão  

Dê permissão de execução (primeiro acesso):  
```
    $ chmod +x rclone-sync.sh  
```

### Execução  

Neste exemplo o script vai realizar a sincronização de arquivos na nuvem  
```
    $ ./rclone-sync.sh -s
``` 

Na seção de variáveis você deve digitar o seu DIR_ORIGEM e DIR_DESTINO  
O DIR_ORIGEM é o diretório da máquina local/nuvem  
O DIR_DESTINO é o diretório da nuvem/máquina local  

A SINCRONIZAÇÃO SÓ VAI SER POSSÍVEL SE O RCLONE ESTIVER CONFIGURADO PARA O SERVIÇO REMOTO (google drive, dropbox, onedrive, etc).  

### Configuração

Para configurar inicie este script com a opção -c  
```
    $ ./rclone-sync.sh -c
```
 
### Dúvidas

Consulte o manual do rclone com o comando:  
```
    $ ./rclone-sync.sh -m
```

Para mais informações acesse a documentação no website:  

<https://rclone.org/docs>  

### Histórico:  

  Versão 1.0, Flávio:  
    31/03/2020  
      - Início do programa  
      - Adicionado variáveis, testes, funções e execução  
    01/04/2020  
      - Adicionado novas funções e menu de ajuda  
    02/04/2020  
      - Adicionado tratamento de erros (função Verifica_status)  
    27/09/2020  
      - Adicionado a opção de montagem de disco  
    23/10/2020  
      - Adicionado a opção de atualizar o rclone  

### Testado em:  

  bash 5.0.17  
  
[Topo](#ancora)

<a id="ancora2"></a>
## auto-sync.sh  
>

Esse script sincroniza automaticamente um diretório da sua máquina para a nuvem.  

### Permissão  

Dê permissão de execução (primeiro acesso):  
```
    $ chmod +x auto-sync.sh
```

### Execução  

ANTES DE EXECUTAR ESSE SCRIPT:  

1. Configure o Rclone para o dispositivo na nuvem (google drive, dropbox, onedrive, etc).  

2. No script, altere o caminho e o nome do seu diretório de origem e destino. Para sincronizar da nuvem para sua máquina, inverta os diretórios.  

3. Edite o crontab e faça o agendamento.  

Editando o crontab:  
```
    $ crontab -e  
```
Exemplo de agendamento no Crontab:  
```
    0 21 * * * /home/$USER/.auto-sync/auto-sync.sh  
```
Nesse exemplo a sincronização será feita todo dia as 21 horas.  

### Histórico:  

Versão 1.0, Flávio:  
    31/03/2020  
      - Início do programa  

### Testado em:  
  
  bash 5.0.17  

[Topo](#ancora)

