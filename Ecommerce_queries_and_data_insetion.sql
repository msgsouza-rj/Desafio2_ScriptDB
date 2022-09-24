use ecommerce;

show tables;
-- idClient, Fname, Minit, Lname, CPF, Adrress
insert into Clients (Fname, Minit, Lname, CPF, Address)
	values	('Maria','M', 'Silva', 123456789, 'rua tal, 11, carangola - Cidade das flores'),
			('Matheus','O', 'Pimentel', 987654321, 'rua Alameda, 22, Centro - Cidade das flores'),
            ('Ricardo','F', 'Silva', 456789123, 'rua vinha, 33, Centro - Cidade das flores'),
            ('Julia','S', 'França', 789123456, 'rua Laranjeiras, 44, Centro - Cidade das flores'),
            ('Roverta','G', 'Assis', 987654321, 'Av seila, 55, Centro - Cidade das flores'),
            ('Isabela','M', 'Cruz', 678912345, 'rua Alameda, 66, Periferia - Cidade das flores');
            
-- idProdut, Pname, classification_kids boolean, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móvies), avaliação, size
insert into product (Pname, classification_kids, category, avaliação, size) values
					('Fone de ouvido', false, 'Eletrônico', '4', null),
                    ('Barbie elsa', true, 'Brinquedos', '3', null),
                    ('Body Carters', true, 'Vestimenta', '5', null),
                    ('Micorfone', False, 'Eletrônico', '4', null),
                    ('Sofa', false, 'Móveis', '3', '3x57x50'),
                    ('Farinha', false, 'Alimentos', '2', null),
                    ('Stick', false, 'Eletônico', '3', null);

select * from clients;
select * from products;
-- idOrder, idOrderClient, orderStatus, orderDescription, sedValue, paymentCash
insert into orders (idOrder, idOrderClient, orderStatus, orderDescription, sedValue, paymentCash) values
	(1, default, 'compra via aplicativo', null, 1),
    (2, default, 'compra via aplicativo', 20, 0),
    (3, 'Confirmado', null, null, 1),
    (4, default, 'compra via aplicativo', 150, 0);

-- idPOproduct, idPoorder, poQuantity, poStatus
select * from orders;
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
	(1,5,2,null),
    (2,5,1,null),
    (3,6,1,null);
    
-- storageLocation, quantity
insert into productStorage (storageLocation, quantity) values
	('Rio de Jenriro', 1000),
    ('Rio de Jenriro', 500),
    ('São paulo', 10),
    ('São paulo', 100),
    ('São paulo', 10),
    ('Brasilia', 60);

-- storageLocation (idlproduct, idLstorage, location) values
insert into storageLocation (idlproduct, idLstorage, location) values
	(1, 2, 'RJ'),
    (2, 6, 'GO');
    
-- idSupplier, SocialName, CNPJ, contact
insert into supplier(idSupplier, SocialName, CNPJ, contact) values
	('Almeida de Filhos', 123456789123456,'21987654'),
    ('Eletronicos silva', 654321987654321, '21987754'),
    ('Eletronicos Ita', 654321987654111, '31987754');

select * from supplier;
-- idPsSupplier, idPsproduct, quantity
insert into productSupplier(idPsSupplier, idPsproduct, quantity) values
	(1,1,500),
    (1,2,400),
    (1,4,633),
    (3,3,5),
    (2,5,400);
    
-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
insert into seller(idSeller, SocialName, AbstName, CNPJ, CPF, location, contact) values
	('Tech eletronics', null, 123456789456321, null, 'rio de Janeiro', 219954844),
    ('Tech eletronics2', null, null, 123456783, 'rio de Janeiro', 119954844),
    ('Tech eletronics3', null, 123456789456300, null, 'rio de Janeiro', 319954844);
select * from sellect;
-- idPseller, idProduct, prodQuantity
insert into productSeller (idPseller, idProduct, prodQuantity) values
	(1,6,80),
    (2,7,10);
    
select * from productSeller;
select count(*) from clients;
select * from clients c, orders o where c.idClient = idorderClient;

select Fname, Lname, idOrder, orderStatus from clients c, orders o where c.idClient = idorderClient;
select concat(Fname,' ' , Lname) as Client, idOrder as Request, orderStatus as Status from clients c, orders o where c.idClient = idorderClient;

