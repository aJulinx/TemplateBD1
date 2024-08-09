DROP TABLE IF EXISTS estoque_inclusao;
DROP TABLE IF EXISTS estoque_exclusao;
DROP TABLE IF EXISTS produto;
DROP TABLE IF EXISTS categoria;
DROP TABLE IF EXISTS usuario;


CREATE TABLE estoque_inclusao (
    id_inclusao int PRIMARY KEY,
    id_produto int,
    quantidade int,
    preco float,
    data_inclusao date,
    data_validade date
);

CREATE TABLE estoque_exclusao (
    id_exclusao int PRIMARY KEY,
    quantidade int,
    id_produto int,
    data_exclusao DATE,
    preco_venda float
);

CREATE TABLE produto (
    id_produto int PRIMARY KEY,
    nome_produto varchar,
    categoria_produto int,
    id_usuario int
);

CREATE TABLE categoria (
    id_categoria int PRIMARY KEY,
    nome_categoria varchar
    id_ususario int

);

CREATE TABLE usuario (
    id_user int PRIMARY KEY,
    nome varchar,
    login varchar,
    senha varchar
);

alter table produto 
add constraint fk_categoria_produto foreign key (categoria_produto) references categoria(id_categoria);

alter table produto 
add constraint fk_id_usuario foreign key (id_usuario) references usuario(id_user);

alter table estoque_exclusao 
add constraint fk_id_produto foreign key (id_produto) references produto(id_produto);

alter table estoque_inclusao 
add constraint fk_id_produto foreign key (id_produto) references produto(id_produto);

alter table categoria
add colum id_usuario_usuario int;

alter table categoria
add constraint fk_id_usuario foreign key (id_usuario) references usuario(id_user);


insert into usuario(id_user ,nome, login, senha) values(100,'eduardo','eduardo_p','oi')
insert into usuario(id_user ,nome, login, senha) values(200,'theo','theo_g','parede')

insert into categoria(id_Categoria, nome_Categoria,id_ususario) values(1,'Copa',100);
insert into categoria(id_Categoria, nome_Categoria, id_usuario) values(2,'Câmara', 100);

insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(1,'Picanha',2,100);
insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(2,'Alcatra',2,100);
insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(3,'Contra File',2,100);
insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(4,'Filé Mignon',2,100);
insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(5,'Cupim',2,100);
insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(6,'Coca Cola',1,200);
insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(7,'Guarana',1,200);
insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(8,'Suco de laranja',1,200);
insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(9,'Ancho',2,200);
insert into produto(id_produto, nome_produto, categoria_produto, id_usuario) values(10,'Cerveja',2,100);

insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(1,1,50,600,'07/30/24','08/29/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(2,1,46,500,'07/21/24','08/20/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(3,1,60,650,'07/28/24','08/27/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(4,1,44,430,'08/30/24','09/29/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(5,1,54,300,'06/18/24','07/18/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(6,2,10,150,'06/19/24','07/19/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(7,2,16,300,'06/02/24','07/02/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(8,2,10,110,'08/21/24','09/20/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(9,2,11,90,'07/08/24','08/07/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(10,2,20,320,'07/09/24','08/08/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(11,3,9,100,'06/24/24','07/24/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(12,3,1,15,'06/05/24','07/05/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(13,3,1,30,'08/05/24','09/04/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(14,3,2,50,'08/26/24','09/25/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(15,3,7,120,'08/30/24','09/29/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(16,4,30,650,'06/07/24','07/07/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(17,4,34,700,'06/06/24','07/06/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(18,4,32,620,'08/17/24','09/16/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(19,4,32,625,'08/24/24','09/23/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(20,4,35,720,'08/13/24','09/12/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(21,6,60,340,'06/25/24','07/25/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(22,6,65,350,'06/04/24','07/04/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(23,6,67,400,'06/26/24','07/26/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(24,6,80,576,'06/03/24','07/03/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(25,6,45,300,'07/11/24','08/10/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(26,5,12,70,'06/25/24','07/25/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(27,7,15,30,'06/04/24','07/04/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(28,8,13,42,'06/26/24','07/26/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(29,9,14,100,'06/03/24','07/03/24');
insert into estoque_inclusao(id_inclusao,id_produto,quantidade,preco,data_inclusao,data_validade) Values(30,10,10,50,'07/11/24','08/10/24');

insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(1,10,1,'07/15/24',200);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(2,30,2,'07/16/24',630);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(3,12,6,'07/17/24',190);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(4,15,6,'07/18/24',230);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(5,20,6,'07/19/24',345);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(6,15,3,'07/20/24',400);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(7,2,4,'07/21/24',120);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(8,3,5,'07/22/24',174);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(9,10,7,'07/23/24',100);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(10,1,8,'07/24/24',30);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(11,6,9,'07/25/24',415);
insert into estoque_exclusao(id_exclusao,quantidade,id_produto,data_exclusao) Values(12,6,10,'07/26/24',115);


