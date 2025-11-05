# Demo Banco

Este é um projeto de demonstração de um sistema bancário simples, que permite a criação de contas, autenticação de usuários e transferências entre contas.

## Funcionalidades

- **Autenticação de Usuários**: Os usuários podem se registrar e fazer login utilizando o Devise.
- **Gerenciamento de Contas**: Os usuários podem visualizar suas contas e detalhes associados.
- **Transferências**: Os usuários podem realizar transferências entre suas contas.

## Estrutura do Projeto

- `app/controllers`: Contém os controladores da aplicação.
- `app/models`: Contém os modelos que representam os dados da aplicação.
- `app/views`: Contém as views que renderizam a interface do usuário.
- `app/javascript`: Contém os arquivos JavaScript da aplicação.
- `config`: Contém as configurações da aplicação, incluindo rotas e banco de dados.
- `db`: Contém as migrações e dados iniciais para o banco de dados.

## Configuração do Banco de Dados

Este projeto utiliza o SQLite3 como banco de dados. As configurações podem ser encontradas em `config/database.yml`.

## Instalação

1. Clone o repositório:
   ```
   git clone <url-do-repositorio>
   cd demo-banco
   ```

2. Instale as dependências:
   ```
   bundle install
   ```

3. Crie o banco de dados e execute as migrações:
   ```
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. Inicie o servidor:
   ```
   rails server
   ```

5. Acesse a aplicação em `http://localhost:3000`.

## Contribuição

Sinta-se à vontade para contribuir com melhorias ou correções. Crie um fork do repositório e envie um pull request com suas alterações.