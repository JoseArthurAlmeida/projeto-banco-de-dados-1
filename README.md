<h1 align="center">Projeto de Banco de Dados - Loja Virtual</h1>

Este repositório contém a modelagem de banco de dados para uma loja virtual, desenvolvida como parte do projeto da
disciplina de Banco de Dados.

## Documentação

- [Minimundo](docs/Mini%20mundo%20-%20Loja%20Virtual.md) - Descrição detalhada do domínio do problema

## Esquemas

O projeto inclui:

- **Esquema Conceitual**
  <img src="modelagens/Conceitual.png">

- **Esquema Lógico**
  <img src="modelagens/Logico.png">

## URL de Conexão com o Banco de Dados

O projeto utiliza a plataforma Neon para hospedagem do banco dados. Abaixo, a URL de conexão com nível de acesso somente leitura (Read-Only):
### Conexão por Variáveis
- PGHOST:
```bash
ep-calm-fog-acmtx5gl-pooler.sa-east-1.aws.neon.tech
```
- PGDATABASE:
```bash
neondb
```

- PGUSER:
```bash
read_only_user
```
- PGPASSWORD:
```bash
npg_t7p5IbShXUwz
```

### URL de Conexão (Formato URI)
**Connection String (URI):**
```bash
postgresql://read_only_user:npg_t7p5IbShXUwz@ep-calm-fog-acmtx5gl-pooler.sa-east-1.aws.neon.tech/neondb?sslmode=require&channel_binding=require
```

## Continuidade do Banco de Dados

A ideia do banco de dados é uma continuidade do projeto da disciplina de Programação Orientada a Objetos, o projeto pode
ser encontrado no seguinte repositório:

- [Loja Virtual com JavaFX](https://github.com/JoseArthurAlmeida/ProjetoPOO)

## Tecnologias e Ferramentas Utilizadas

- brModelo - Ferramenta para modelagem de banco de dados
- PostgreSQL - Sistema de gerenciamento de banco de dados
- DataGrip e DBeaver - Cliente de Banco de Dados
- Neon - Serverless Postgres
