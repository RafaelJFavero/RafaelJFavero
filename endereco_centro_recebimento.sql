CREATE TABLE endereco_centro_recebimento (
	id_centro_recebimento serial	  NOT null,
	id_centro_recebimento_endereco int not null,
  	cep_centro_recebimento int not null,
	rua_centro_recebimento varchar (255)   NOT NULL,
  	bairro_centro_recebimento VARCHAR(255) NOT NULL,
	nro_centro_recebimento int NOT NULL,
	complemento_centro_recebimento VARCHAR(255) NOT NULL,
	cidade_centro_recebimento int NOT NULL,
	uf_centro_recebimento int NOT NULL,
		PRIMARY KEY (id_centro_recebimento),
		foreign key (id_centro_recebimento_endereco) references centro_recebimento (id_centro_recebimento));

select * from endereco_centro_recebimento

);

int idEndereco = rs.getInt("id_endereco_doador");
                String rua = rs.getString("rua_doador");
                String bairro = rs.getString("bairro_doador");
                int numero = rs.getInt("numero_doador");
                String complemento = rs.getString("complemento_doador");
                String cep = rs.getString("cep_doador");
                String cidade = rs.getString("cidade_doador");
                String uf = rs.getString("uf_doador");
                int idDoadorEndereco = rs.getInt("id_doador_endereco");
