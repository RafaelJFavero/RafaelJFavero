PGDMP     3                    |            Livraria    12.14    12.14 #    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    73764    Livraria    DATABASE     �   CREATE DATABASE "Livraria" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Livraria";
                postgres    false            �            1259    73778    autores    TABLE     s   CREATE TABLE public.autores (
    autores_id integer NOT NULL,
    autores_nome character varying(200) NOT NULL
);
    DROP TABLE public.autores;
       public         heap    postgres    false            �            1259    73776    autores_autores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autores_autores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.autores_autores_id_seq;
       public          postgres    false    205            -           0    0    autores_autores_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.autores_autores_id_seq OWNED BY public.autores.autores_id;
          public          postgres    false    204            �            1259    73767    clientes    TABLE       CREATE TABLE public.clientes (
    cliente_id integer NOT NULL,
    cliente_nome character varying(200) NOT NULL,
    cliente_email character varying(200) NOT NULL,
    cliente_telefone character varying(200) NOT NULL,
    cliente_endereco character varying(200) NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    73765    clientes_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_cliente_id_seq;
       public          postgres    false    203            .           0    0    clientes_cliente_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_cliente_id_seq OWNED BY public.clientes.cliente_id;
          public          postgres    false    202            �            1259    73794    livros    TABLE     �   CREATE TABLE public.livros (
    livrosl_id integer NOT NULL,
    livros_titulo character varying(200),
    livros_genero character varying(200),
    livros_preco numeric(10,2),
    autores_id_autor integer NOT NULL
);
    DROP TABLE public.livros;
       public         heap    postgres    false            �            1259    73792    livros_livros_id_seq    SEQUENCE     �   CREATE SEQUENCE public.livros_livros_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.livros_livros_id_seq;
       public          postgres    false    207            /           0    0    livros_livros_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.livros_livros_id_seq OWNED BY public.livros.livrosl_id;
          public          postgres    false    206            �            1259    73824    vendas    TABLE     �   CREATE TABLE public.vendas (
    vendas_id integer NOT NULL,
    vendas_data_venda date,
    vendas_quantidade character varying(200) NOT NULL,
    cliente_id_cliente integer,
    livros_id integer
);
    DROP TABLE public.vendas;
       public         heap    postgres    false            �            1259    73822    vendas_vendas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vendas_vendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.vendas_vendas_id_seq;
       public          postgres    false    209            0           0    0    vendas_vendas_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.vendas_vendas_id_seq OWNED BY public.vendas.vendas_id;
          public          postgres    false    208            �
           2604    73781    autores autores_id    DEFAULT     x   ALTER TABLE ONLY public.autores ALTER COLUMN autores_id SET DEFAULT nextval('public.autores_autores_id_seq'::regclass);
 A   ALTER TABLE public.autores ALTER COLUMN autores_id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    73770    clientes cliente_id    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN cliente_id SET DEFAULT nextval('public.clientes_cliente_id_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN cliente_id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    73797    livros livrosl_id    DEFAULT     u   ALTER TABLE ONLY public.livros ALTER COLUMN livrosl_id SET DEFAULT nextval('public.livros_livros_id_seq'::regclass);
 @   ALTER TABLE public.livros ALTER COLUMN livrosl_id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    73827    vendas vendas_id    DEFAULT     t   ALTER TABLE ONLY public.vendas ALTER COLUMN vendas_id SET DEFAULT nextval('public.vendas_vendas_id_seq'::regclass);
 ?   ALTER TABLE public.vendas ALTER COLUMN vendas_id DROP DEFAULT;
       public          postgres    false    208    209    209            "          0    73778    autores 
   TABLE DATA           ;   COPY public.autores (autores_id, autores_nome) FROM stdin;
    public          postgres    false    205   (                  0    73767    clientes 
   TABLE DATA           o   COPY public.clientes (cliente_id, cliente_nome, cliente_email, cliente_telefone, cliente_endereco) FROM stdin;
    public          postgres    false    203   j(       $          0    73794    livros 
   TABLE DATA           j   COPY public.livros (livrosl_id, livros_titulo, livros_genero, livros_preco, autores_id_autor) FROM stdin;
    public          postgres    false    207   )       &          0    73824    vendas 
   TABLE DATA           p   COPY public.vendas (vendas_id, vendas_data_venda, vendas_quantidade, cliente_id_cliente, livros_id) FROM stdin;
    public          postgres    false    209   �)       1           0    0    autores_autores_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.autores_autores_id_seq', 3, true);
          public          postgres    false    204            2           0    0    clientes_cliente_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.clientes_cliente_id_seq', 2, true);
          public          postgres    false    202            3           0    0    livros_livros_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.livros_livros_id_seq', 3, true);
          public          postgres    false    206            4           0    0    vendas_vendas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.vendas_vendas_id_seq', 3, true);
          public          postgres    false    208            �
           2606    73783    autores autores_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.autores
    ADD CONSTRAINT autores_pkey PRIMARY KEY (autores_id);
 >   ALTER TABLE ONLY public.autores DROP CONSTRAINT autores_pkey;
       public            postgres    false    205            �
           2606    73775    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (cliente_id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    203            �
           2606    73799    livros livros_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.livros
    ADD CONSTRAINT livros_pkey PRIMARY KEY (livrosl_id);
 <   ALTER TABLE ONLY public.livros DROP CONSTRAINT livros_pkey;
       public            postgres    false    207            �
           2606    73829    vendas vendas_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (vendas_id);
 <   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_pkey;
       public            postgres    false    209            �
           2606    73800 #   livros livros_autores_id_autor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.livros
    ADD CONSTRAINT livros_autores_id_autor_fkey FOREIGN KEY (autores_id_autor) REFERENCES public.autores(autores_id);
 M   ALTER TABLE ONLY public.livros DROP CONSTRAINT livros_autores_id_autor_fkey;
       public          postgres    false    207    2713    205            �
           2606    73830 %   vendas vendas_cliente_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_cliente_id_cliente_fkey FOREIGN KEY (cliente_id_cliente) REFERENCES public.clientes(cliente_id);
 O   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_cliente_id_cliente_fkey;
       public          postgres    false    209    203    2711            �
           2606    73835    vendas vendas_livros_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_livros_id_fkey FOREIGN KEY (livros_id) REFERENCES public.livros(livrosl_id);
 F   ALTER TABLE ONLY public.vendas DROP CONSTRAINT vendas_livros_id_fkey;
       public          postgres    false    207    209    2715            "   <   x�3��ML�HL�WHIUp,.�,�2
eB�R�SR��9��S�"9�yɉE\1z\\\ I�1          �   x�m�;�0Dk�{�X6�;�	E��Yb�Y�N�g�b���n�I3ψ[����3	��U�9��ַ�!����[��j]��Y�z@8��'��i�C�*�=����y�1����L�C��A�㵏#%1LH]��N=�69�����\�b[��L򢤔1A�      $   t   x�3��M��/�L,V�/.)�2RR����siRb1�[f����s��Yprq�&&��%f�&r�槤�e�$r������9�S�2�9��s�S9-�8��b���� M�"4      &   5   x�3�4202�50"NC�2	���8��������`!#�=... .�	C     