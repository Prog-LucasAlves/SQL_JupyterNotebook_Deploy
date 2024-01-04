# O que é um banco de dados

Um banco de dados é uma coleção organizada de informações - ou dados - estruturadas, normalmente armazenadas eletronicamente em um sistema de computador. Um banco de dados é geralmente controlado por um sistema de gerenciamento de banco de dados (DBMS). Juntos, os dados e o DBMS, juntamente com os aplicativos associados a eles, são chamados de sistema de banco de dados, geralmente abreviados para apenas banco de dados.

## *Para realizar esse projeto vou(vamos) utilizar o postgresql(Docker)*

1) Usando a imagem oficial do PostgreSQL

    1. Pull da Imagem do PostgreSQL: Se você ainda não tem a imagem do PostgreSQL, pode obtê-la usando o comando `docker pull`:

    ```bash
    docker pull postgres
    ```

    2. Executando o Contêiner PostgreSQL: Para iniciar um contêiner com PostgreSQL, use o comando docker run. Você pode especificar a senha do superusuário, o nome do banco de dados e o nome de usuário como variáveis de ambiente:

    ```bash
    docker run --name meu_postgres -e POSTGRES_PASSWORD=minha_senha -e POSTGRES_USER=meu_usuario -e POSTGRES_DB=meu_banco -p 5432:5432 -v meu_volume_postgres:/var/lib/postgresql/data -d postgres
    ```

    Substitua minha_senha, meu_usuario e meu_banco meu_volume_postgres pelos valores desejados.

2) Criando um arquivo `Dockerfile`
   O Dockerfile é um arquivo de texto que contém todas as instruções necessárias para criar uma imagem Docker. Você pode criar uma imagem Docker do PostgreSQL usando um Dockerfile. Aqui, vou mostrar como criar uma imagem Docker do PostgreSQL usando um Dockerfile.

   1. Criando um Dockerfile: Crie um arquivo chamado Dockerfile e adicione o seguinte conteúdo:

   ```bash
    # Use the official PostgreSQL image as a base
    FROM postgres:latest

    # Set environment variables
    ENV POSTGRES_PASSWORD=minha_senha
    ENV POSTGRES_USER=meu_usuario
    ENV POSTGRES_DB=meu_banco

    # Expose the default PostgreSQL port
    EXPOSE 5432

    # Set the default command to run when starting the container
    CMD ["postgres"]
   ```
