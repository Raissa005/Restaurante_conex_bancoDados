create table cardapio(
    uuid uuid not null primary key,
    ativo boolean not null,
    descricao varchar notnull,
    nome varchar not null,
    turno integer not null);

create table turno(
    id integer not null primary key,
    descriao varchar not null);

alter table cardapio add constraint fk_cardapio_turno foreign key(turno) references turno(id);

insert into turno values(1, 'Manhã');
insert into turno values(2, 'Tarde');
insert into turno values(3, 'Noite');

create table comida (
	id UUID not null primary key,
	nome varchar(100) not null,
	ingredientes varchar(300) not null,
	preco decimal not null,
	pessoas_servidas integer not null,
	tem_lactose boolean not null,
	tem_gluten boolean not null,
	peso_grama_porcao integer not null,
	e_vegetariano boolean not null
);

create table bebida(
id UUID not null primary key,
	nome varchar(100) not null,
	ingredientes varchar(300) not null,
	preco decimal not null,
	pessoas_servidas integer not null,
	tem_lactose boolean not null,
	tem_gluten boolean not null,
	qtdDrink integer not null,
	alcool boolean not null
);

create table rl_cardapio_comida(
    id_cardapio uuid not null references cardapio(id),
    id_comida uuid not null references comida(id)
);
    
create table rl_cardapio_bebida(
    id_cardapio uuid not null references cardapio(id),
    id_bebida uuid not null references bebida(id)
);

insert into cardapio (id, ativo, descricao, nome, turno)
	values
	('73b1c8a5-a970-4635-bc2d-5527da7e2c5c', true, 'cardapio para manhã', 'café da manhã', 1),
 	('1e0f060a-e49b-4cde-809e-8c503922c9da', true, 'cardapio para tarde', 'almoço', 2),
 	('ce7ed8e0-0894-4634-8703-e5464ee9fcbc', true, 'cardapio para noite', 'janta', 3)


create table qtd_produto (
    qtdProduto integer not null primary key
);

create table cliente (
	id UUID not null primary key,
	nome varchar(100) not null,
	telefone varchar(11) not null
);

create table endereco (
	id UUID not null primary key,
	endereco varchar(100) not null,
	numero decimal not null,
	bairro varchar(300) not null,
	cidade varchar(100) not null
);

create table met_pagamento (
	id integer not null primary key,
	descricao varchar not null
);

create table rl_cliente_endereco(
	id_cliente uuid not null references cliente(id),
	id_endereco uuid not null references endereco(id)	
);

create table ped_delivery(
    numPedido serial primary key ,
    total decimal not null,
   id_met_pagamento integer not null references metodo_pgt(id),
    id_cliente uuid not null references cliente(id) ); 

create table rl_pedDelivery_com_bebida(
    id_pedido integer references ped_delivery,
    id_comida uuid references comida(id),
    id_bebida uuid references bebida(id),
    qtd_produto integer not null
);