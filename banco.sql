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
('Café Expresso', 8.90),
('Cappuccino', 13.90),
('Pão de Queijo', 5.90)
('Café com leite', 10.90)
('Omelete', 8.00)
('Chocolate quente', 12.90)
('Misto quente', 13.90)
('Queijo quente', 14.90)
('Pão de queijo recheado', 9.00)
('Suco de laranja', 9.00);



INSERT INTO Pedidos (produto_id, quantidade, data_pedido) VALUES
(1, 2, '25/09/2025'), -- 2 cafés expressos
(2, 1, '25/09/2025'), -- 1 cappuccino
(3, 3, '25/09/2025'), -- 3 pães de queijo
(4, 2, '25/09/2025'), -- 2 cafés com leite
(5, 3, '25/09/2025'), -- 3 omeletes
(6, 1, '25/09/2025'), -- 1 chocolate quente
(7, 2, '25/09/2025'), -- 2 misto quente
(8, 4, '25/09/2025'), -- 4 queijo quente
(9, 3, '25/09/2025'), -- 3 pães de quejio recheados
(10, 1, '25/09/2025'); -- 1 suco de laranja
