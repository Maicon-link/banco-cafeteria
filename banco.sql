CREATE TABLE Produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    preco REAL NOT NULL
);


CREATE TABLE Pedidos (
    id INTEGER PRIMARY KEY,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);


INSERT INTO Produtos (nome, preco) VALUES
('Café Expresso', 5.50),
('Cappuccino', 7.00),
('Pão de Queijo', 4.00);



INSERT INTO Pedidos (produto_id, quantidade, data_pedido) VALUES
(1, 2, '2025-09-01'), -- 2 cafés expressos
(2, 1, '2025-09-01'), -- 1 cappuccino
(3, 3, '2025-09-01'); -- 3 pães de queijo
