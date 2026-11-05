-- =====================================================================
-- Descrição: Demonstração de Transações (START TRANSACTION, COMMIT, ROLLBACK)
-- e exclusão segura de tabelas (DROP TABLE)
-- =====================================================================

-- Exemplo de Transação Bem-Sucedida com COMMIT
START TRANSACTION;

UPDATE Clientes 
SET Telefone = '312-555-9999' 
WHERE Nº_Cliente = 9123;

-- Se tudo estiver correto, salvamos permanentemente as alterações:
COMMIT;


-- Exemplo de Transação com Erro revertida por ROLLBACK
START TRANSACTION;

-- Simulando uma atualização incorreta em massa
UPDATE Produtos 
SET Item = 'Erro Crítico';

-- Percebemos que o resultado está incorreto, então desfazemos a operação:
ROLLBACK;


-- Exemplo de Exclusão Definitiva de Tabela de Teste temporária
-- Nota: DROP TABLE remove a tabela e os dados permanentemente[cite: 18].
DROP TEMPORARY TABLE IF EXISTS tabela_temporaria_teste;
