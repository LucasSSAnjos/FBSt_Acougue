create table loja (
	cnpj int primary key not null,
	nome varchar(100) not null,
	email varchar(100) not null, 
	telefone int not null
);

create table cliente (
	cpf int primary key not null,
	nome varchar(100) not null,
	endereco varchar(100) not null,
	email varchar(100) not null, 
	telefone int not null
	);

create table fornecedor (
	cnpj int primary key not null,
	nome varchar(100) not null,
	email varchar(100) not null
);

create table produto (
	id int primary key auto_increment not null,
	nome varchar(100) not null,
	valor decimal not null,
	peso decimal not null,
	quantidade int not null
);

create table compra (
	id int primary key auto_increment not null,
	valor decimal not null,
	id_produto int not null ,
	foreign key (id_produto) references produto(id),
	id_cliente int not null,
	foreign key (id_cliente) references cliente(cpf)
	
);