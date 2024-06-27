--
-- PostgreSQL database cluster dump
--

-- Started on 2024-06-27 20:21:23

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md56ed11dc269daa373e8a2903e6be6eb58';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:23

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-06-27 20:21:24

--
-- PostgreSQL database dump complete
--

--
-- Database "Banco de dados" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2812 (class 1262 OID 49161)
-- Name: Banco de dados; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Banco de dados" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Banco de dados" OWNER TO postgres;

\connect -reuse-previous=on "dbname='Banco de dados'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-06-27 20:21:24

--
-- PostgreSQL database dump complete
--

--
-- Database "Banco do correa" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2812 (class 1262 OID 57353)
-- Name: Banco do correa; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Banco do correa" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Banco do correa" OWNER TO postgres;

\connect -reuse-previous=on "dbname='Banco do correa'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-06-27 20:21:24

--
-- PostgreSQL database dump complete
--

--
-- Database "CRUD" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2824 (class 1262 OID 73840)
-- Name: CRUD; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "CRUD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE "CRUD" OWNER TO postgres;

\connect "CRUD"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 73843)
-- Name: pessoa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pessoa (
    id bigint NOT NULL,
    email character varying(255),
    idade integer NOT NULL,
    image_path character varying(255),
    nome character varying(255) NOT NULL
);


ALTER TABLE public.pessoa OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 73841)
-- Name: pessoa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pessoa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pessoa_id_seq OWNER TO postgres;

--
-- TOC entry 2825 (class 0 OID 0)
-- Dependencies: 202
-- Name: pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pessoa_id_seq OWNED BY public.pessoa.id;


--
-- TOC entry 2688 (class 2604 OID 73846)
-- Name: pessoa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa ALTER COLUMN id SET DEFAULT nextval('public.pessoa_id_seq'::regclass);


--
-- TOC entry 2818 (class 0 OID 73843)
-- Dependencies: 203
-- Data for Name: pessoa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pessoa (id, email, idade, image_path, nome) FROM stdin;
1	rafaeljf.android@gmail.com	41	xx	Rafael
2	uilson.brandeleiro@gmail.com	33	x2x	Uilson
3	rafaeljf.android@gmail.com	41	nulo	Rafael Favero
4	mmmm@mm	23	nulo	Joao
5	1231	23	nulo	sdfsd
6	dfgdf	18	nulo	sdf
7	sdfsdf	5	nulo	sdfsd
8	dfsdf@	223	nulo	sdfsdf
\.


--
-- TOC entry 2826 (class 0 OID 0)
-- Dependencies: 202
-- Name: pessoa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pessoa_id_seq', 8, true);


--
-- TOC entry 2690 (class 2606 OID 73851)
-- Name: pessoa pessoa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT pessoa_pkey PRIMARY KEY (id);


-- Completed on 2024-06-27 20:21:24

--
-- PostgreSQL database dump complete
--

--
-- Database "Consultorio" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2853 (class 1262 OID 81929)
-- Name: Consultorio; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Consultorio" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Consultorio" OWNER TO postgres;

\connect "Consultorio"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 204 (class 1259 OID 81940)
-- Name: consulta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consulta (
    data date NOT NULL,
    hora time without time zone,
    cod_pac integer,
    crm integer,
    historico character varying(200)
);


ALTER TABLE public.consulta OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 82001)
-- Name: especialidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especialidade (
    codesp integer NOT NULL,
    especialidade character varying(100)
);


ALTER TABLE public.especialidade OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 82006)
-- Name: espmedico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.espmedico (
    crm integer,
    codesp integer
);


ALTER TABLE public.espmedico OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 81964)
-- Name: fonemedico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fonemedico (
    crm integer,
    fone character varying(100)
);


ALTER TABLE public.fonemedico OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 81930)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medico (
    crm integer NOT NULL,
    nome_med character varying(100),
    ender_med character varying(100),
    cidade_med character varying(100),
    uf_med character varying(3)
);


ALTER TABLE public.medico OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 81935)
-- Name: paciente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paciente (
    cod_pac integer NOT NULL,
    nome_pac character varying(100),
    ender_pac character varying(100),
    cidade_pac character varying(100),
    uf_pac character varying(3),
    fone_pac character varying(15)
);


ALTER TABLE public.paciente OWNER TO postgres;

--
-- TOC entry 2844 (class 0 OID 81940)
-- Dependencies: 204
-- Data for Name: consulta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consulta (data, hora, cod_pac, crm, historico) FROM stdin;
2000-01-05	14:00:00	1	1001	FRATURA DE OMOPLATA
2000-05-30	09:00:00	3	1002	REFLUXO
2000-11-10	13:15:00	1	1001	PE DIREITO QUEBRADO
2000-11-22	08:00:00	2	1000	APRESENTA DORES DE CABECA
\.


--
-- TOC entry 2846 (class 0 OID 82001)
-- Dependencies: 206
-- Data for Name: especialidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.especialidade (codesp, especialidade) FROM stdin;
100	OTORRINOLARINGOLOGISTA
101	ORTOPEDISTA
102	PEDIATRA
103	GASTROENTEROLOGISTA
104	CIRURGIAO
105	CLINICO GERAL
\.


--
-- TOC entry 2847 (class 0 OID 82006)
-- Dependencies: 207
-- Data for Name: espmedico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.espmedico (crm, codesp) FROM stdin;
1000	105
1001	101
1002	102
1003	103
\.


--
-- TOC entry 2845 (class 0 OID 81964)
-- Dependencies: 205
-- Data for Name: fonemedico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fonemedico (crm, fone) FROM stdin;
1000	99876565
1002	3232120
1002	3234478
1003	3249087
1001	99876060
1001	99972309
\.


--
-- TOC entry 2842 (class 0 OID 81930)
-- Dependencies: 202
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medico (crm, nome_med, ender_med, cidade_med, uf_med) FROM stdin;
1000	MARIA DAS DORES	RUA DAS ACÁCIAS	CHAPECÓ	SC
1001	JOÃO DA SILVA	RUA DOS COQUEIROS	XAXIM	SC
1002	ANA PAULA PADRÃO	RUA SÃO PAULO	CHAPECÓ	SC
1003	FLÁVIO BOHR	RUA SÃO JOÃO	XANXERÊ	SC
\.


--
-- TOC entry 2843 (class 0 OID 81935)
-- Dependencies: 203
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paciente (cod_pac, nome_pac, ender_pac, cidade_pac, uf_pac, fone_pac) FROM stdin;
1	MARIA ANA SOARES	AV. GETÚLIO VARGAS	CHAPECÓ	SC	33238888
2	CARLOS ABRAHAO	AV.FERNANDO MACHADO	CHAPECÓ	SC	33234598
3	PEDRO PEREIRA	RUA DO COMÉRCIO	XAXIM	SC	33222020
\.


--
-- TOC entry 2710 (class 2606 OID 82005)
-- Name: especialidade especialidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidade
    ADD CONSTRAINT especialidade_pkey PRIMARY KEY (codesp);


--
-- TOC entry 2706 (class 2606 OID 81934)
-- Name: medico medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (crm);


--
-- TOC entry 2708 (class 2606 OID 81939)
-- Name: paciente paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (cod_pac);


--
-- TOC entry 2712 (class 2606 OID 81948)
-- Name: consulta consulta_cod_pac_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_cod_pac_fkey FOREIGN KEY (cod_pac) REFERENCES public.paciente(cod_pac);


--
-- TOC entry 2711 (class 2606 OID 81943)
-- Name: consulta consulta_crm_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consulta
    ADD CONSTRAINT consulta_crm_fkey FOREIGN KEY (crm) REFERENCES public.medico(crm);


--
-- TOC entry 2715 (class 2606 OID 82014)
-- Name: espmedico espmedico_codesp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espmedico
    ADD CONSTRAINT espmedico_codesp_fkey FOREIGN KEY (codesp) REFERENCES public.especialidade(codesp);


--
-- TOC entry 2714 (class 2606 OID 82009)
-- Name: espmedico espmedico_crm_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espmedico
    ADD CONSTRAINT espmedico_crm_fkey FOREIGN KEY (crm) REFERENCES public.medico(crm);


--
-- TOC entry 2713 (class 2606 OID 81967)
-- Name: fonemedico fonemedico_crm_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fonemedico
    ADD CONSTRAINT fonemedico_crm_fkey FOREIGN KEY (crm) REFERENCES public.medico(crm);


-- Completed on 2024-06-27 20:21:24

--
-- PostgreSQL database dump complete
--

--
-- Database "Livraria" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2860 (class 1262 OID 73764)
-- Name: Livraria; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Livraria" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Livraria" OWNER TO postgres;

\connect "Livraria"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 205 (class 1259 OID 73778)
-- Name: autores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.autores (
    autores_id integer NOT NULL,
    autores_nome character varying(200) NOT NULL
);


ALTER TABLE public.autores OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 73776)
-- Name: autores_autores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.autores_autores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.autores_autores_id_seq OWNER TO postgres;

--
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 204
-- Name: autores_autores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.autores_autores_id_seq OWNED BY public.autores.autores_id;


--
-- TOC entry 203 (class 1259 OID 73767)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    cliente_id integer NOT NULL,
    cliente_nome character varying(200) NOT NULL,
    cliente_email character varying(200) NOT NULL,
    cliente_telefone character varying(200) NOT NULL,
    cliente_endereco character varying(200) NOT NULL
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 73765)
-- Name: clientes_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_cliente_id_seq OWNER TO postgres;

--
-- TOC entry 2862 (class 0 OID 0)
-- Dependencies: 202
-- Name: clientes_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_cliente_id_seq OWNED BY public.clientes.cliente_id;


--
-- TOC entry 207 (class 1259 OID 73794)
-- Name: livros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livros (
    livrosl_id integer NOT NULL,
    livros_titulo character varying(200),
    livros_genero character varying(200),
    livros_preco numeric(10,2),
    autores_id_autor integer NOT NULL
);


ALTER TABLE public.livros OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 73792)
-- Name: livros_livros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.livros_livros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.livros_livros_id_seq OWNER TO postgres;

--
-- TOC entry 2863 (class 0 OID 0)
-- Dependencies: 206
-- Name: livros_livros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.livros_livros_id_seq OWNED BY public.livros.livrosl_id;


--
-- TOC entry 209 (class 1259 OID 73824)
-- Name: vendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendas (
    vendas_id integer NOT NULL,
    vendas_data_venda date,
    vendas_quantidade character varying(200) NOT NULL,
    cliente_id_cliente integer,
    livros_id integer
);


ALTER TABLE public.vendas OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 73822)
-- Name: vendas_vendas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vendas_vendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendas_vendas_id_seq OWNER TO postgres;

--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 208
-- Name: vendas_vendas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vendas_vendas_id_seq OWNED BY public.vendas.vendas_id;


--
-- TOC entry 2707 (class 2604 OID 73781)
-- Name: autores autores_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autores ALTER COLUMN autores_id SET DEFAULT nextval('public.autores_autores_id_seq'::regclass);


--
-- TOC entry 2706 (class 2604 OID 73770)
-- Name: clientes cliente_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN cliente_id SET DEFAULT nextval('public.clientes_cliente_id_seq'::regclass);


--
-- TOC entry 2708 (class 2604 OID 73797)
-- Name: livros livrosl_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livros ALTER COLUMN livrosl_id SET DEFAULT nextval('public.livros_livros_id_seq'::regclass);


--
-- TOC entry 2709 (class 2604 OID 73827)
-- Name: vendas vendas_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas ALTER COLUMN vendas_id SET DEFAULT nextval('public.vendas_vendas_id_seq'::regclass);


--
-- TOC entry 2850 (class 0 OID 73778)
-- Dependencies: 205
-- Data for Name: autores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.autores (autores_id, autores_nome) FROM stdin;
1	Machado de Assis
2	Mario de Andrade
3	Jose de Alencar
\.


--
-- TOC entry 2848 (class 0 OID 73767)
-- Dependencies: 203
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (cliente_id, cliente_nome, cliente_email, cliente_telefone, cliente_endereco) FROM stdin;
1	Rafael Fávero	rafaeljf.android@gmail.com	49 99900-1516	Rua Modesto Baccarim 183-E Parque das Palmeiras
2	Uilson Brandeleiro	uilson.brandelero@gmail.com	49 99900-1010	Rua Assis Brasil 381-D Centro
\.


--
-- TOC entry 2852 (class 0 OID 73794)
-- Dependencies: 207
-- Data for Name: livros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livros (livrosl_id, livros_titulo, livros_genero, livros_preco, autores_id_autor) FROM stdin;
1	Memorias Postumas de Bras Cubas	Ficção	14.90	1
2	Macunaima	Modernista	26.90	2
3	Senhora	Romance	18.30	3
\.


--
-- TOC entry 2854 (class 0 OID 73824)
-- Dependencies: 209
-- Data for Name: vendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendas (vendas_id, vendas_data_venda, vendas_quantidade, cliente_id_cliente, livros_id) FROM stdin;
1	2024-06-06	1	1	1
2	2022-10-12	1	2	3
3	2024-02-15	1	2	2
\.


--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 204
-- Name: autores_autores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.autores_autores_id_seq', 3, true);


--
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 202
-- Name: clientes_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_cliente_id_seq', 2, true);


--
-- TOC entry 2867 (class 0 OID 0)
-- Dependencies: 206
-- Name: livros_livros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.livros_livros_id_seq', 3, true);


--
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 208
-- Name: vendas_vendas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vendas_vendas_id_seq', 3, true);


--
-- TOC entry 2713 (class 2606 OID 73783)
-- Name: autores autores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.autores
    ADD CONSTRAINT autores_pkey PRIMARY KEY (autores_id);


--
-- TOC entry 2711 (class 2606 OID 73775)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (cliente_id);


--
-- TOC entry 2715 (class 2606 OID 73799)
-- Name: livros livros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livros
    ADD CONSTRAINT livros_pkey PRIMARY KEY (livrosl_id);


--
-- TOC entry 2717 (class 2606 OID 73829)
-- Name: vendas vendas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (vendas_id);


--
-- TOC entry 2718 (class 2606 OID 73800)
-- Name: livros livros_autores_id_autor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livros
    ADD CONSTRAINT livros_autores_id_autor_fkey FOREIGN KEY (autores_id_autor) REFERENCES public.autores(autores_id);


--
-- TOC entry 2719 (class 2606 OID 73830)
-- Name: vendas vendas_cliente_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_cliente_id_cliente_fkey FOREIGN KEY (cliente_id_cliente) REFERENCES public.clientes(cliente_id);


--
-- TOC entry 2720 (class 2606 OID 73835)
-- Name: vendas vendas_livros_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_livros_id_fkey FOREIGN KEY (livros_id) REFERENCES public.livros(livrosl_id);


-- Completed on 2024-06-27 20:21:25

--
-- PostgreSQL database dump complete
--

--
-- Database "Rafael" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2812 (class 1262 OID 73761)
-- Name: Rafael; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Rafael" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE "Rafael" OWNER TO postgres;

\connect "Rafael"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-06-27 20:21:25

--
-- PostgreSQL database dump complete
--

--
-- Database "arthur" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2825 (class 1262 OID 49162)
-- Name: arthur; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE arthur WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE arthur OWNER TO postgres;

\connect arthur

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 49165)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    data_nascimento date NOT NULL,
    id bigint NOT NULL,
    nome character varying(100) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 49163)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO postgres;

--
-- TOC entry 2826 (class 0 OID 0)
-- Dependencies: 202
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- TOC entry 2687 (class 2604 OID 49168)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- TOC entry 2819 (class 0 OID 49165)
-- Dependencies: 203
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (data_nascimento, id, nome, email) FROM stdin;
1985-05-31	1	arthur correa	arthurcorrea@gmail.com
\.


--
-- TOC entry 2827 (class 0 OID 0)
-- Dependencies: 202
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 1, true);


--
-- TOC entry 2689 (class 2606 OID 49172)
-- Name: cliente cliente_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_email_key UNIQUE (email);


--
-- TOC entry 2691 (class 2606 OID 49170)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


-- Completed on 2024-06-27 20:21:25

--
-- PostgreSQL database dump complete
--

--
-- Database "clientes" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2812 (class 1262 OID 73762)
-- Name: clientes; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE clientes WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE clientes OWNER TO postgres;

\connect clientes

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-06-27 20:21:25

--
-- PostgreSQL database dump complete
--

--
-- Database "garagem" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2820 (class 1262 OID 16393)
-- Name: garagem; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE garagem WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE garagem OWNER TO postgres;

\connect garagem

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 16394)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    cpf integer NOT NULL,
    nome character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    telefone character varying(255) NOT NULL,
    senha character varying(255) NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 2814 (class 0 OID 16394)
-- Dependencies: 202
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (cpf, nome, email, telefone, senha) FROM stdin;
\.


--
-- TOC entry 2687 (class 2606 OID 16401)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (cpf);


-- Completed on 2024-06-27 20:21:25

--
-- PostgreSQL database dump complete
--

--
-- Database "gng" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2812 (class 1262 OID 65545)
-- Name: gng; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE gng WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE gng OWNER TO postgres;

\connect gng

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-06-27 20:21:25

--
-- PostgreSQL database dump complete
--

--
-- Database "hospital" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2812 (class 1262 OID 40988)
-- Name: hospital; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE hospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE hospital OWNER TO postgres;

\connect hospital

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-06-27 20:21:26

--
-- PostgreSQL database dump complete
--

--
-- Database "livraria" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2812 (class 1262 OID 73763)
-- Name: livraria; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE livraria WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE livraria OWNER TO postgres;

\connect livraria

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2024-06-27 20:21:26

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 24585)
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco (
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24591)
-- Name: entrega; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entrega (
);


ALTER TABLE public.entrega OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24594)
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido (
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24597)
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produtos (
);


ALTER TABLE public.produtos OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24600)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 2828 (class 0 OID 24585)
-- Dependencies: 203
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.endereco  FROM stdin;
\.


--
-- TOC entry 2829 (class 0 OID 24591)
-- Dependencies: 204
-- Data for Name: entrega; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entrega  FROM stdin;
\.


--
-- TOC entry 2830 (class 0 OID 24594)
-- Dependencies: 205
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedido  FROM stdin;
\.


--
-- TOC entry 2831 (class 0 OID 24597)
-- Dependencies: 206
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produtos  FROM stdin;
\.


--
-- TOC entry 2832 (class 0 OID 24600)
-- Dependencies: 207
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario  FROM stdin;
\.


-- Completed on 2024-06-27 20:21:26

--
-- PostgreSQL database dump complete
--

--
-- Database "senac" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2835 (class 1262 OID 73737)
-- Name: senac; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE senac WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE senac OWNER TO postgres;

\connect senac

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 73740)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id_clientes integer NOT NULL,
    nome_cliente character varying(100),
    email_cliente character varying(100),
    cidade_cliente character varying(100),
    salario_cliente numeric(10,2),
    datanasc_cliente date,
    telefone_cliente character varying(100)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 73738)
-- Name: cliente_id_clientes_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_clientes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_clientes_seq OWNER TO postgres;

--
-- TOC entry 2836 (class 0 OID 0)
-- Dependencies: 202
-- Name: cliente_id_clientes_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_clientes_seq OWNED BY public.cliente.id_clientes;


--
-- TOC entry 205 (class 1259 OID 73752)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nome_cliente character varying(100),
    email_cliente character varying(100),
    cidade_cliente character varying(100),
    salario_cliente numeric(10,2),
    datanasc_cliente date,
    fone_cliente character varying(100)
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 73750)
-- Name: clientes_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_cliente_seq OWNER TO postgres;

--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 204
-- Name: clientes_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;


--
-- TOC entry 2694 (class 2604 OID 73743)
-- Name: cliente id_clientes; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_clientes SET DEFAULT nextval('public.cliente_id_clientes_seq'::regclass);


--
-- TOC entry 2695 (class 2604 OID 73755)
-- Name: clientes id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);


--
-- TOC entry 2827 (class 0 OID 73740)
-- Dependencies: 203
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_clientes, nome_cliente, email_cliente, cidade_cliente, salario_cliente, datanasc_cliente, telefone_cliente) FROM stdin;
\.


--
-- TOC entry 2829 (class 0 OID 73752)
-- Dependencies: 205
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cliente, nome_cliente, email_cliente, cidade_cliente, salario_cliente, datanasc_cliente, fone_cliente) FROM stdin;
1	Rafael Favero	rafaeljf.android@gmail.com	Chapeco	10000.00	1982-10-12	49999001516
3	Uilson	uilson.programador@gmail.com	Xaxim	10000.00	2001-03-28	9 999 999
4	Rafael Jose	rafaeljf.android@gmail.com	Chapeco	10000.00	1982-10-12	49999001516
\.


--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 202
-- Name: cliente_id_clientes_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_clientes_seq', 4, true);


--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 204
-- Name: clientes_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 4, true);


--
-- TOC entry 2697 (class 2606 OID 73745)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_clientes);


--
-- TOC entry 2699 (class 2606 OID 73757)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);


-- Completed on 2024-06-27 20:21:26

--
-- PostgreSQL database dump complete
--

--
-- Database "vendas" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14
-- Dumped by pg_dump version 12.14

-- Started on 2024-06-27 20:21:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2820 (class 1262 OID 40969)
-- Name: vendas; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE vendas WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE vendas OWNER TO postgres;

\connect vendas

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 40970)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    nome_produto character varying(255) NOT NULL,
    desc_produto character varying(255) NOT NULL,
    valor double precision NOT NULL,
    peso double precision NOT NULL
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 2814 (class 0 OID 40970)
-- Dependencies: 202
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (id_produto, nome_produto, desc_produto, valor, peso) FROM stdin;
\.


--
-- TOC entry 2687 (class 2606 OID 40977)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);


-- Completed on 2024-06-27 20:21:26

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-06-27 20:21:26

--
-- PostgreSQL database cluster dump complete
--

