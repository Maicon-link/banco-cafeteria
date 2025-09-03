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
('Pão de Queijo', 4.00)
('Café com leite', 7.00)
('Omelete', 7.00)
('Chocolate quente', 10.00)
('Misto quente', 10.00)
('Queijo quente', 10.00)
('Pão de queijo recheado', 6.00)
('Suco de laranja', 7.00);



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
