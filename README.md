# terraform-infraIII-t1

Trabalhando com Terraform - atividade de Infraestrutura III - DH
Primeiro Passo:
https://docs.google.com/document/d/1m2OLyw8H_mFAUzGhXWzEU-GKB-EbRwtaK08eODEt5T0/edit#
Segundo Passo:
https://docs.google.com/document/d/1j1jmPdGHFn20Tf-pS2oRY7rU0XiQ57XthebUgRWv0HA/edit#heading=h.dqwa0t8yrq0e

1 - Primeiro Passo:
Preparar ambiente para Infraestrutura como código
Vamos preparar o ambiente para aula de IaC usando Terraform e Ansible. 
Criando chave SSH
Primeiramente vamos criar uma chave que vamos importar para as instâncias EC2 e depois usá-las no acesso via SSH.
digitalhouse@digitalhouse:~$ ssh-keygen -f .ssh/terraform-aws -t rsa

Agora liste o diretório .ssh e veja sua chave, nós iremos utilizar a .pub no projeto do Terraform, crie uma chave chamada terraform-aws.
Vamos instalar o Terraform.
No Windows basta baixar o executável e adicionar em variáveis de ambiente, PATH:
https://www.terraform.io/downloads
Para Linux e macOS tem os comandos no mesmo link.


2 - Segundo Passo:

Preparar ambiente para Infraestrutura como código
Vamos preparar o ambiente para aula de IaC usando Terraform e Ansible. 

Acesse o portal da AWS, clique no seu usuário e depois em credenciais de segurança.
Clique em criar chave de acesso

Instalar AWS CLI e configurar AWS CLI - Interface de linha de comando - Amazon Web Services
https://aws.amazon.com/pt/cli/

Configure o aws com a informações da AWS
digitalhouse@digitalhouse:~$ aws configure
ACESS_KEY:
SECRET_KEY:
REGION:
OUTPUT: json



Crie o projeto do Terraform e inicie
digitalhouse@digitalhouse:~$ terraform init


Vamos planificar e depois aplicar as configurações na aws:
digitalhouse@digitalhouse:~$ terraform plan
digitalhouse@digitalhouse:~$ terraform apply


Verifique na aws a instância criada e depois:
digitalhouse@digitalhouse:~$ terraform destroy



