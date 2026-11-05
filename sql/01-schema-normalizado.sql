-- =====================================================================
-- Projeto: db-transactions-lab
-- Descrição: Schema normalizado baseado nas boas práticas de design de BD
-- =====================================================================

-- 1. Tabela de Clientes
CREATE TABLE Clientes (
    Nº_Cliente INT PRIMARY KEY,
    Cliente VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20) NOT NULL
);

-- 2. Tabela de Produtos
CREATE TABLE Produtos (
    Nº_Item INT PRIMARY KEY,
    Item VARCHAR(100) NOT NULL
);

-- 3. Tabela de Pedidos (Relacionada com Clientes)
CREATE TABLE Pedidos (
    Nº_pedido INT PRIMARY KEY,
    Nº_Cliente INT,
    FOREIGN KEY (Nº_Cliente) REFERENCES Clientes(Nº_Cliente)
);

-- 4. Tabela Associativa de Itens Pedidos (Muitos para Muitos)
CREATE TABLE Itens_Pedidos (
    Nº_pedido INT,
    Nº_item INT,
    PRIMARY KEY (Nº_pedido, Nº_item),
    FOREIGN KEY (Nº_pedido) REFERENCES Pedidos(Nº_pedido),
    FOREIGN KEY (Nº_item) REFERENCES Produtos(Nº_item)
);
