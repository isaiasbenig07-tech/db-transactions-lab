# 📚 Princípios Básicos de Banco de Dados: Transações e Design

Documentação de estudo focada nas propriedades ACID e na prevenção de anomalias em bases de dados relacionais.

---

## ⚙️ As Propriedades ACID das Transações
Uma transação executa um conjunto de operações para que o banco de dados nunca contenha resultados parciais[cite: 13, 14]:

1. **Atomicity (Atomicidade):** Garante que todas as alterações sejam concluídas com êxito. Se uma falhar, tudo é revertido[cite: 14].
2. **Consistency (Consistência):** Nenhuma alteração viola a integridade e as restrições do banco de dados[cite: 14].
3. **Isolation (Isolamento):** Transações ocorrem de forma isolada, sem interferir umas nas outras[cite: 14].
4. **Durability (Durabilidade):** Uma vez confirmada (COMMIT), falhas ou reinicializações do sistema não afetam os dados[cite: 14].

---

## ⚠️ Anomalias de Banco de Dados Evitadas
* **Anomalia de Inserção:** Impossibilidade de inserir dados importantes por falta de dados complementares[cite: 20].
* **Anomalia de Atualização:** Dados redundantes que dificultam a atualização uniforme em múltiplas linhas[cite: 20].
* **Anomalia de Exclusão:** Exclusão acidental de informações importantes ao apagar dados indesejados[cite: 20].
