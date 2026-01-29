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

## Códigos

O projeto inclui os scripts SQL necessários para a criação da estrutura, povoamento e consulta do banco de dados.

- **[Script de Criação (DDL)](codigo/ddl-loja-virtual.sql)**
    - Contém os comandos `CREATE TABLE` para todas as entidades do banco de dados (`usuario`, `produtos`, `pedidos`, `categoria` `avaliacao`).
    - Define todas as colunas, tipos de dados, chaves primárias e restrições de integridade (`NOT NULL`, `CHECK`).
    - Estabelece os relacionamentos entre as tabelas através de `FOREIGN KEYs`, incluindo as regras de `ON DELETE CASCADE` e `ON DELETE RESTRICT` para garantir a consistência dos dados.

- **[Script de Consultas (DML)](codigo/consultas.sql)**
    - Apresenta uma série de consultas `SELECT` para demonstrar a utilidade do banco de dados e testar a integridade do esquema.
    - As consultas variam em complexidade, desde buscas simples e filtros até `JOINs`, agregações (`COUNT`, `SUM`, `AVG`) e subqueries para gerar relatórios e análises de negócio.

## Continuidade do Banco de Dados

A ideia do banco de dados é uma continuidade do projeto da disciplina de Programação Orientada a Objetos, o projeto pode
ser encontrado no seguinte repositório:

- [Loja Virtual com JavaFX](https://github.com/JoseArthurAlmeida/ProjetoPOO)

## Tecnologias e Ferramentas Utilizadas

- brModelo - Ferramenta para modelagem de banco de dados
- PostgreSQL - Sistema de gerenciamento de banco de dados
- DataGrip e DBeaver - Cliente de Banco de Dados
- Neon - Serverless Postgres
