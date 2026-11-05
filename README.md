# 🗄️ Database Transactions & Design Lab

Repositório prático desenvolvido para documentar conceitos fundamentais de bases de dados relacionais, abrangendo controle de transações SQL e normalização de dados.

---

## 📂 Estrutura do Repositório

| Diretório / Ficheiro | Descrição |
| :--- | :--- |
| [`sql/01-schema-normalizado.sql`](sql/01-schema-normalizado.sql) | Criação de tabelas estruturadas para evitar anomalias. |
| [`sql/02-transacoes-exemplo.sql`](sql/02-transacoes-exemplo.sql) | Scripts demonstrando `START TRANSACTION`, `COMMIT`, `ROLLBACK` e `DROP TABLE`. |
| [`docs/boas-praticas-acid.md`](docs/boas-praticas-acid.md) | Resumo teórico sobre as propriedades **ACID** e anomalias de design. |

---

## 🛠️ Comandos Chave Estudados
* `START TRANSACTION` / `BEGIN`: Inicia uma nova transação[cite: 16].
* `COMMIT`: Salva e consolida todas as alterações bem-sucedidas[cite: 17].
* `ROLLBACK`: Reverte o banco de dados ao estado original em caso de erro[cite: 17].
* `DROP TABLE`: Remove permanentemente tabelas e dados[cite: 18].

---
*Projeto construído com base nos princípios de arquitetura e gestão de dados relacionais.*
