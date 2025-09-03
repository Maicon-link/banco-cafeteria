CREATE TABLE Produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco REAL NOT NULL
);


CREATE TABLE Pedidos (
    id INTEGER PRIMARY KEY,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO Pedidos DEFAULT VALUES; -- pedido_id = 1
INSERT INTO Pedidos DEFAULT VALUES; -- pedido_id = 2



CREATE TABLE ItensPedido (
    id INTEGER PRIMARY KEY,
    pedido_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

-- Pedido 1
INSERT INTO ItensPedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 2),  -- 2 Café Expresso
(1, 2, 1),  -- 1 Cappuccino
(1, 3, 3),  -- 3 Pães de Queijo
(1, 4, 2),  -- 2 Café com leite
(1, 5, 3);  -- 3 Omeletes

-- Pedido 2
INSERT INTO ItensPedido (pedido_id, produto_id, quantidade) VALUES
(2, 6, 1),  -- 1 Chocolate quente
(2, 7, 2),  -- 2 Misto quente
(2, 8, 4),  -- 4 Queijo quente
(2, 9, 3),  -- 3 Pão de queijo recheado
(2, 10, 1); -- 1 Suco de laranja

