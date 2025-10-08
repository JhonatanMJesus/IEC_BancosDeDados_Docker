# 🐳 Ambientes de Banco de Dados com Docker
Este repositório contém três ambientes independentes para execução de bancos de dados em
containers Docker, ideais para desenvolvimento e testes locais.
## 📁 Estrutura do Repositório
```bash
├── postgres/
│ ├── docker-compose.yml
│ └── init.sql
│
├── mysql/
│ ├── docker-compose.yml
│ ├── init.sql
│
├── mongodb/
│ ├── docker-compose.yml
```

Cada pasta possui seu próprio `docker-compose.yml`, permitindo que você suba os serviços
separadamente.
---
## 🐘 PostgreSQL + Adminer
### 📄 Descrição
Container com o **PostgreSQL** e a interface **Adminer** para visualização e manipulação de
dados pelo navegador.
### ▶️ Como executar
```bash
cd postgresql-adminer
docker compose up -d
```
### 🌐 Acesso
- Adminer: [http://localhost:8080](http://localhost:8080)
### 🔐 Credenciais padrão
| Campo          | Valor       |
| -------------- | ----------- |
| Sistema        | PostgreSQL  |
| Servidor       | db          |
| Usuário        | postgres    |
| Senha          | jhonatan123 |
| Banco de dados | postgres    |
---
## 🐬 MySQL
### 📄 Descrição
Ambiente com **MySQL** configurado com senha de root e volume persistente de dados.
### ▶️ Como executar
```bash
cd mysql
docker compose up -d
```
### ⚙️ Credenciais padrão
| Campo          | Valor     |
| -------------- | --------- |
| Host           | localhost |
| Porta          | 3306      |
| Usuário        | root      |
| Senha          | root123   |
| Banco de dados | app_db    |
---
## 🍃 MongoDB
### 📄 Descrição
Container com **MongoDB**, pronto para uso com persistência de dados local.
### ▶️ Como executar
```bash
cd mongodb
docker compose up -d
```
### ⚙️ Conexão
- Host: `localhost`
- Porta: `27017`
- Banco padrão: `admin`
- Usuário/Senha: (se configurado no `docker-compose.yml`)
Para conectar via **Mongo Express** (caso adicionado):
- [http://localhost:8081](http://localhost:8081)
---
## 🧩 Comandos Úteis
Listar containers ativos:
```bash
docker ps
```
Parar os containers:
```bash
docker compose down
```
Remover volumes e dados:
```bash
docker compose down -v
```
Ver logs:
```bash
docker compose logs -f
```
---
## 💡 Dicas
- Os scripts `.sql` colocados em `/docker-entrypoint-initdb.d/` dentro dos containers **PostgreSQL**
e **MySQL** são executados automaticamente **apenas na primeira criação do volume**.
- Para recriar do zero, use:
```bash
docker compose down -v && docker compose up -d
```
---
## 📜 Licença
Este projeto é de uso livre para fins de estudo e desenvolvimento.
Sinta-se à vontade para modificar e expandir conforme necessário. 🚀
---
### 👨‍💻 Autor
**Seu Nome Aqui**
💼 GitHub: [@jhonatanmjesus](https://github.com/jhonatanmjesus)