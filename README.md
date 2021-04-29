# Genesis - GitHub

Repositório com código para gerenciar o GitHub através do Terraform. Contém a criação de um repositório e de três times: Developers, DevOps e Tech Leads;

Para a configuração do projeto use os comandos abaixo:

1. Primeiramente gere um token no github com as permissões necessárias: [Documentação GitHub](https://docs.github.com/pt/github/authenticating-to-github/creating-a-personal-access-token)

2. Crie as variáveis de ambiente necessárias:

   ```shell
   export GITHUB_TOKEN=abcdefghijklm
   export GITHUB_OWNER=org-name
   ```

3. Edite o arquivo [terraforms.tfvars](terraform.tfvars);

4. Inicie o Terraform;

   ```shell
   terraform init
   ```

5. Execute o comando abaixo e verifique se todos os recursos estão corretos;

   ```shell
   terraform plan
   ```

6. Execute o comando terraform apply, verifique se todos os recursos estão corretos e confirme as alterações;

   ```shell
   terraform apply
   ```
