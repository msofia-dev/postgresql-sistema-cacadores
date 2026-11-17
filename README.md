# Sistema de Gerenciamento de Caçadores

Banco de dados relacional desenvolvido em **PostgreSQL 17**, focado em integridade referencial, modelagem normalizada e consultas analíticas.

## Estrutura (`tabela_diagrama`)

* **Entidades:** `tabela_cacador`, `tabela_guilda`, `tabela_missao`, `tabela_portal`
* **Relacionamentos (N:N):** `participa_mt`, `equipa_mt`, `cacador_habilidades`

## Arquivos

* `banco_cacador.sql` — Backup completo da estrutura (`DDL`) e dados (`DML`).
* `save_sql.sql` — Consultas utilizando `JOIN` para cruzamento de caçadores, missões e equipamentos.

## Tecnologias

* PostgreSQL 17
* pgAdmin 4
