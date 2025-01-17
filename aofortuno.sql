PGDMP              	            w            datama2_mi181 %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)    12.0 I    �           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385    datama2_mi181    DATABASE     p   CREATE DATABASE datama2_mi181 WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE datama2_mi181;
                datama2mi181    false            
            2615    16750 	   aofortuno    SCHEMA        CREATE SCHEMA aofortuno;
    DROP SCHEMA aofortuno;
                datama2mi181    false            :           1259    17831    chef    TABLE     �   CREATE TABLE aofortuno.chef (
    chef_id integer NOT NULL,
    chef_position character varying(45) NOT NULL,
    chef_lname character varying(45) NOT NULL,
    chef_fname character varying(45) NOT NULL,
    res_id integer
);
    DROP TABLE aofortuno.chef;
    	   aofortuno            datama2mi181    false    10            9           1259    17829    chef_chef_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.chef_chef_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE aofortuno.chef_chef_id_seq;
    	   aofortuno          datama2mi181    false    314    10            �           0    0    chef_chef_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE aofortuno.chef_chef_id_seq OWNED BY aofortuno.chef.chef_id;
       	   aofortuno          datama2mi181    false    313            0           1259    17778    employee    TABLE     #  CREATE TABLE aofortuno.employee (
    emp_id integer NOT NULL,
    emp_fname character varying(45) NOT NULL,
    emp_lname character varying(45) NOT NULL,
    emp_dob date,
    emp_address character varying(45) DEFAULT NULL::character varying,
    emp_date_hired date,
    res_id integer
);
    DROP TABLE aofortuno.employee;
    	   aofortuno            datama2mi181    false    10            /           1259    17776    employee_emp_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.employee_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE aofortuno.employee_emp_id_seq;
    	   aofortuno          datama2mi181    false    304    10            �           0    0    employee_emp_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE aofortuno.employee_emp_id_seq OWNED BY aofortuno.employee.emp_id;
       	   aofortuno          datama2mi181    false    303            2           1259    17793    online_customer    TABLE     �   CREATE TABLE aofortuno.online_customer (
    onl_id integer NOT NULL,
    onl_fname character varying(45) DEFAULT NULL::character varying,
    onl_lname character varying(45) DEFAULT NULL::character varying,
    onl_dob date
);
 &   DROP TABLE aofortuno.online_customer;
    	   aofortuno            datama2mi181    false    10            1           1259    17791    online_customer_onl_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.online_customer_onl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE aofortuno.online_customer_onl_id_seq;
    	   aofortuno          datama2mi181    false    306    10            �           0    0    online_customer_onl_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE aofortuno.online_customer_onl_id_seq OWNED BY aofortuno.online_customer.onl_id;
       	   aofortuno          datama2mi181    false    305            4           1259    17803    onsite_customer    TABLE     �   CREATE TABLE aofortuno.onsite_customer (
    ons_id integer NOT NULL,
    ons_fname character varying(45) DEFAULT NULL::character varying,
    ons_lname character varying(45) DEFAULT NULL::character varying,
    ons_dob date
);
 &   DROP TABLE aofortuno.onsite_customer;
    	   aofortuno            datama2mi181    false    10            3           1259    17801    onsite_customer_ons_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.onsite_customer_ons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE aofortuno.onsite_customer_ons_id_seq;
    	   aofortuno          datama2mi181    false    308    10            �           0    0    onsite_customer_ons_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE aofortuno.onsite_customer_ons_id_seq OWNED BY aofortuno.onsite_customer.ons_id;
       	   aofortuno          datama2mi181    false    307            6           1259    17813    orders    TABLE       CREATE TABLE aofortuno.orders (
    ord_id integer NOT NULL,
    ord_menu_name character varying(45) DEFAULT NULL::character varying,
    ord_amount integer,
    ord_date timestamp without time zone NOT NULL,
    emp_id integer,
    onl_id integer,
    ons_id integer
);
    DROP TABLE aofortuno.orders;
    	   aofortuno            datama2mi181    false    10            5           1259    17811    orders_ord_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.orders_ord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE aofortuno.orders_ord_id_seq;
    	   aofortuno          datama2mi181    false    10    310            �           0    0    orders_ord_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE aofortuno.orders_ord_id_seq OWNED BY aofortuno.orders.ord_id;
       	   aofortuno          datama2mi181    false    309            8           1259    17822    product    TABLE     �   CREATE TABLE aofortuno.product (
    prod_id integer NOT NULL,
    prod_type character varying(45) DEFAULT NULL::character varying,
    prod_date date,
    prod_date_expire date,
    prod_num_items integer,
    supp_id integer
);
    DROP TABLE aofortuno.product;
    	   aofortuno            datama2mi181    false    10            7           1259    17820    product_prod_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.product_prod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE aofortuno.product_prod_id_seq;
    	   aofortuno          datama2mi181    false    10    312            �           0    0    product_prod_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE aofortuno.product_prod_id_seq OWNED BY aofortuno.product.prod_id;
       	   aofortuno          datama2mi181    false    311            &           1259    17734 
   restaurant    TABLE     �   CREATE TABLE aofortuno.restaurant (
    res_id integer NOT NULL,
    res_loc character varying(45) DEFAULT NULL::character varying,
    res_employed_num integer
);
 !   DROP TABLE aofortuno.restaurant;
    	   aofortuno            datama2mi181    false    10            =           1259    18037    restaurant_supplier    TABLE     �   CREATE TABLE aofortuno.restaurant_supplier (
    res_id integer NOT NULL,
    supp_id integer NOT NULL,
    integ_date timestamp without time zone
);
 *   DROP TABLE aofortuno.restaurant_supplier;
    	   aofortuno            datama2mi181    false    10            [           1259    23114    restaurant2    VIEW     <  CREATE VIEW aofortuno.restaurant2 AS
 SELECT restaurant.res_id,
    restaurant.res_employed_num,
    restaurant.res_loc,
    restaurant_supplier.integ_date,
    restaurant_supplier.supp_id
   FROM (aofortuno.restaurant
     JOIN aofortuno.restaurant_supplier ON ((restaurant.res_id = restaurant_supplier.supp_id)));
 !   DROP VIEW aofortuno.restaurant2;
    	   aofortuno          datama2mi181    false    294    294    294    317    317    10            %           1259    17732    restaurant_res_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.restaurant_res_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE aofortuno.restaurant_res_id_seq;
    	   aofortuno          datama2mi181    false    294    10            �           0    0    restaurant_res_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE aofortuno.restaurant_res_id_seq OWNED BY aofortuno.restaurant.res_id;
       	   aofortuno          datama2mi181    false    293            ,           1259    17761    supplier    TABLE     �   CREATE TABLE aofortuno.supplier (
    supp_id integer NOT NULL,
    supp_name character varying(45) NOT NULL,
    supp_contact integer,
    supp_address character varying(45) DEFAULT NULL::character varying
);
    DROP TABLE aofortuno.supplier;
    	   aofortuno            datama2mi181    false    10            +           1259    17759    supplier_supp_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.supplier_supp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE aofortuno.supplier_supp_id_seq;
    	   aofortuno          datama2mi181    false    300    10            �           0    0    supplier_supp_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE aofortuno.supplier_supp_id_seq OWNED BY aofortuno.supplier.supp_id;
       	   aofortuno          datama2mi181    false    299            �           2604    17834    chef chef_id    DEFAULT     r   ALTER TABLE ONLY aofortuno.chef ALTER COLUMN chef_id SET DEFAULT nextval('aofortuno.chef_chef_id_seq'::regclass);
 >   ALTER TABLE aofortuno.chef ALTER COLUMN chef_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    313    314    314            �           2604    17781    employee emp_id    DEFAULT     x   ALTER TABLE ONLY aofortuno.employee ALTER COLUMN emp_id SET DEFAULT nextval('aofortuno.employee_emp_id_seq'::regclass);
 A   ALTER TABLE aofortuno.employee ALTER COLUMN emp_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    304    303    304            �           2604    17796    online_customer onl_id    DEFAULT     �   ALTER TABLE ONLY aofortuno.online_customer ALTER COLUMN onl_id SET DEFAULT nextval('aofortuno.online_customer_onl_id_seq'::regclass);
 H   ALTER TABLE aofortuno.online_customer ALTER COLUMN onl_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    306    305    306            �           2604    17806    onsite_customer ons_id    DEFAULT     �   ALTER TABLE ONLY aofortuno.onsite_customer ALTER COLUMN ons_id SET DEFAULT nextval('aofortuno.onsite_customer_ons_id_seq'::regclass);
 H   ALTER TABLE aofortuno.onsite_customer ALTER COLUMN ons_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    307    308    308            �           2604    17816    orders ord_id    DEFAULT     t   ALTER TABLE ONLY aofortuno.orders ALTER COLUMN ord_id SET DEFAULT nextval('aofortuno.orders_ord_id_seq'::regclass);
 ?   ALTER TABLE aofortuno.orders ALTER COLUMN ord_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    309    310    310            �           2604    17825    product prod_id    DEFAULT     x   ALTER TABLE ONLY aofortuno.product ALTER COLUMN prod_id SET DEFAULT nextval('aofortuno.product_prod_id_seq'::regclass);
 A   ALTER TABLE aofortuno.product ALTER COLUMN prod_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    312    311    312            �           2604    17737    restaurant res_id    DEFAULT     |   ALTER TABLE ONLY aofortuno.restaurant ALTER COLUMN res_id SET DEFAULT nextval('aofortuno.restaurant_res_id_seq'::regclass);
 C   ALTER TABLE aofortuno.restaurant ALTER COLUMN res_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    294    293    294            �           2604    17764    supplier supp_id    DEFAULT     z   ALTER TABLE ONLY aofortuno.supplier ALTER COLUMN supp_id SET DEFAULT nextval('aofortuno.supplier_supp_id_seq'::regclass);
 B   ALTER TABLE aofortuno.supplier ALTER COLUMN supp_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    299    300    300            �          0    17831    chef 
   TABLE DATA           Y   COPY aofortuno.chef (chef_id, chef_position, chef_lname, chef_fname, res_id) FROM stdin;
 	   aofortuno          datama2mi181    false    314            �          0    17778    employee 
   TABLE DATA           q   COPY aofortuno.employee (emp_id, emp_fname, emp_lname, emp_dob, emp_address, emp_date_hired, res_id) FROM stdin;
 	   aofortuno          datama2mi181    false    304            �          0    17793    online_customer 
   TABLE DATA           S   COPY aofortuno.online_customer (onl_id, onl_fname, onl_lname, onl_dob) FROM stdin;
 	   aofortuno          datama2mi181    false    306            �          0    17803    onsite_customer 
   TABLE DATA           S   COPY aofortuno.onsite_customer (ons_id, ons_fname, ons_lname, ons_dob) FROM stdin;
 	   aofortuno          datama2mi181    false    308            �          0    17813    orders 
   TABLE DATA           h   COPY aofortuno.orders (ord_id, ord_menu_name, ord_amount, ord_date, emp_id, onl_id, ons_id) FROM stdin;
 	   aofortuno          datama2mi181    false    310            �          0    17822    product 
   TABLE DATA           n   COPY aofortuno.product (prod_id, prod_type, prod_date, prod_date_expire, prod_num_items, supp_id) FROM stdin;
 	   aofortuno          datama2mi181    false    312            �          0    17734 
   restaurant 
   TABLE DATA           J   COPY aofortuno.restaurant (res_id, res_loc, res_employed_num) FROM stdin;
 	   aofortuno          datama2mi181    false    294            �          0    18037    restaurant_supplier 
   TABLE DATA           M   COPY aofortuno.restaurant_supplier (res_id, supp_id, integ_date) FROM stdin;
 	   aofortuno          datama2mi181    false    317            �          0    17761    supplier 
   TABLE DATA           U   COPY aofortuno.supplier (supp_id, supp_name, supp_contact, supp_address) FROM stdin;
 	   aofortuno          datama2mi181    false    300            �           0    0    chef_chef_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('aofortuno.chef_chef_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    313            �           0    0    employee_emp_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('aofortuno.employee_emp_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    303            �           0    0    online_customer_onl_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('aofortuno.online_customer_onl_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    305            �           0    0    onsite_customer_ons_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('aofortuno.onsite_customer_ons_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    307            �           0    0    orders_ord_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('aofortuno.orders_ord_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    309            �           0    0    product_prod_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('aofortuno.product_prod_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    311            �           0    0    restaurant_res_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('aofortuno.restaurant_res_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    293            �           0    0    supplier_supp_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('aofortuno.supplier_supp_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    299                       2606    17836    chef chef_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY aofortuno.chef
    ADD CONSTRAINT chef_pkey PRIMARY KEY (chef_id);
 ;   ALTER TABLE ONLY aofortuno.chef DROP CONSTRAINT chef_pkey;
    	   aofortuno            datama2mi181    false    314            �           2606    17784    employee employee_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY aofortuno.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (emp_id);
 C   ALTER TABLE ONLY aofortuno.employee DROP CONSTRAINT employee_pkey;
    	   aofortuno            datama2mi181    false    304            �           2606    17800 $   online_customer online_customer_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY aofortuno.online_customer
    ADD CONSTRAINT online_customer_pkey PRIMARY KEY (onl_id);
 Q   ALTER TABLE ONLY aofortuno.online_customer DROP CONSTRAINT online_customer_pkey;
    	   aofortuno            datama2mi181    false    306            �           2606    17810 $   onsite_customer onsite_customer_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY aofortuno.onsite_customer
    ADD CONSTRAINT onsite_customer_pkey PRIMARY KEY (ons_id);
 Q   ALTER TABLE ONLY aofortuno.onsite_customer DROP CONSTRAINT onsite_customer_pkey;
    	   aofortuno            datama2mi181    false    308            �           2606    17819    orders orders_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY aofortuno.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (ord_id);
 ?   ALTER TABLE ONLY aofortuno.orders DROP CONSTRAINT orders_pkey;
    	   aofortuno            datama2mi181    false    310                        2606    17828    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY aofortuno.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (prod_id);
 A   ALTER TABLE ONLY aofortuno.product DROP CONSTRAINT product_pkey;
    	   aofortuno            datama2mi181    false    312            �           2606    17740    restaurant restaurant_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY aofortuno.restaurant
    ADD CONSTRAINT restaurant_pkey PRIMARY KEY (res_id);
 G   ALTER TABLE ONLY aofortuno.restaurant DROP CONSTRAINT restaurant_pkey;
    	   aofortuno            datama2mi181    false    294                       2606    18041 *   restaurant_supplier restaurant_supplier_id 
   CONSTRAINT     x   ALTER TABLE ONLY aofortuno.restaurant_supplier
    ADD CONSTRAINT restaurant_supplier_id PRIMARY KEY (res_id, supp_id);
 W   ALTER TABLE ONLY aofortuno.restaurant_supplier DROP CONSTRAINT restaurant_supplier_id;
    	   aofortuno            datama2mi181    false    317    317            �           2606    17767    supplier supplier_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY aofortuno.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (supp_id);
 C   ALTER TABLE ONLY aofortuno.supplier DROP CONSTRAINT supplier_pkey;
    	   aofortuno            datama2mi181    false    300                       2606    25563    orders emp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.orders
    ADD CONSTRAINT emp_id_fkey FOREIGN KEY (emp_id) REFERENCES aofortuno.employee(emp_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ?   ALTER TABLE ONLY aofortuno.orders DROP CONSTRAINT emp_id_fkey;
    	   aofortuno          datama2mi181    false    310    304    3320                       2606    25588    orders onl_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.orders
    ADD CONSTRAINT onl_id_fkey FOREIGN KEY (onl_id) REFERENCES aofortuno.online_customer(onl_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ?   ALTER TABLE ONLY aofortuno.orders DROP CONSTRAINT onl_id_fkey;
    	   aofortuno          datama2mi181    false    306    310    3322                       2606    25652    orders ons_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.orders
    ADD CONSTRAINT ons_id_fkey FOREIGN KEY (ons_id) REFERENCES aofortuno.onsite_customer(ons_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ?   ALTER TABLE ONLY aofortuno.orders DROP CONSTRAINT ons_id_fkey;
    	   aofortuno          datama2mi181    false    310    3324    308                       2606    25260    employee res_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.employee
    ADD CONSTRAINT res_id_fkey FOREIGN KEY (res_id) REFERENCES aofortuno.restaurant(res_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 A   ALTER TABLE ONLY aofortuno.employee DROP CONSTRAINT res_id_fkey;
    	   aofortuno          datama2mi181    false    3316    304    294            
           2606    25509    chef res_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.chef
    ADD CONSTRAINT res_id_fkey FOREIGN KEY (res_id) REFERENCES aofortuno.restaurant(res_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 =   ALTER TABLE ONLY aofortuno.chef DROP CONSTRAINT res_id_fkey;
    	   aofortuno          datama2mi181    false    3316    294    314                       2606    18042 3   restaurant_supplier restaurant_supplier_res_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.restaurant_supplier
    ADD CONSTRAINT restaurant_supplier_res_id_fkey FOREIGN KEY (res_id) REFERENCES aofortuno.restaurant(res_id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY aofortuno.restaurant_supplier DROP CONSTRAINT restaurant_supplier_res_id_fkey;
    	   aofortuno          datama2mi181    false    3316    317    294                       2606    18047 4   restaurant_supplier restaurant_supplier_supp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.restaurant_supplier
    ADD CONSTRAINT restaurant_supplier_supp_id_fkey FOREIGN KEY (supp_id) REFERENCES aofortuno.supplier(supp_id) ON UPDATE CASCADE;
 a   ALTER TABLE ONLY aofortuno.restaurant_supplier DROP CONSTRAINT restaurant_supplier_supp_id_fkey;
    	   aofortuno          datama2mi181    false    317    3318    300            	           2606    25542    product supp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.product
    ADD CONSTRAINT supp_id_fkey FOREIGN KEY (supp_id) REFERENCES aofortuno.supplier(supp_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 A   ALTER TABLE ONLY aofortuno.product DROP CONSTRAINT supp_id_fkey;
    	   aofortuno          datama2mi181    false    300    3318    312            �   B   x�3��HMLQH�HM�tJ-�K,J���H-*�L����2�,�/-��{���Vr:'�&Bdc���� ���      �      x������ � �      �   �   x����0Eg�_��4m��ǀʆX�X��B����"��IX�rt�1p��,+�$k0!x�8����+$>t�ʘ;l`��Q�(������EC���g�֋/:G책K�kZ⽪Bi7��P�e��bE=K��m��?�))      �   6   x�3������<N#CK]C]Cs.#N���<N�Ģ�b��H�Ȕ+F��� �L�      �   :   x�3�,H�KN�N�4�0�4�45�50�54V00�#�?�2�,� )4�$�0F��� ���      �   C   x�3�,H-�,�HL�I�420��54�54G09��9c����)4���s��T��qqq ���      �   /   x�3�t�H�MJ-*N*-JWp�,��46�2��JMK�����b���� t��      �      x������ � �      �   X   x�3��MM,�˩�4NCCK��ܤ�̔�T��Ң.#N����ҢTNsCs3csNCccS�̼���<��̲T�=... �ym      I    �           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385    datama2_mi181    DATABASE     p   CREATE DATABASE datama2_mi181 WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE datama2_mi181;
                datama2mi181    false            
            2615    16750 	   aofortuno    SCHEMA        CREATE SCHEMA aofortuno;
    DROP SCHEMA aofortuno;
                datama2mi181    false            :           1259    17831    chef    TABLE     �   CREATE TABLE aofortuno.chef (
    chef_id integer NOT NULL,
    chef_position character varying(45) NOT NULL,
    chef_lname character varying(45) NOT NULL,
    chef_fname character varying(45) NOT NULL,
    res_id integer
);
    DROP TABLE aofortuno.chef;
    	   aofortuno            datama2mi181    false    10            9           1259    17829    chef_chef_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.chef_chef_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE aofortuno.chef_chef_id_seq;
    	   aofortuno          datama2mi181    false    314    10            �           0    0    chef_chef_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE aofortuno.chef_chef_id_seq OWNED BY aofortuno.chef.chef_id;
       	   aofortuno          datama2mi181    false    313            0           1259    17778    employee    TABLE     #  CREATE TABLE aofortuno.employee (
    emp_id integer NOT NULL,
    emp_fname character varying(45) NOT NULL,
    emp_lname character varying(45) NOT NULL,
    emp_dob date,
    emp_address character varying(45) DEFAULT NULL::character varying,
    emp_date_hired date,
    res_id integer
);
    DROP TABLE aofortuno.employee;
    	   aofortuno            datama2mi181    false    10            /           1259    17776    employee_emp_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.employee_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE aofortuno.employee_emp_id_seq;
    	   aofortuno          datama2mi181    false    304    10            �           0    0    employee_emp_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE aofortuno.employee_emp_id_seq OWNED BY aofortuno.employee.emp_id;
       	   aofortuno          datama2mi181    false    303            2           1259    17793    online_customer    TABLE     �   CREATE TABLE aofortuno.online_customer (
    onl_id integer NOT NULL,
    onl_fname character varying(45) DEFAULT NULL::character varying,
    onl_lname character varying(45) DEFAULT NULL::character varying,
    onl_dob date
);
 &   DROP TABLE aofortuno.online_customer;
    	   aofortuno            datama2mi181    false    10            1           1259    17791    online_customer_onl_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.online_customer_onl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE aofortuno.online_customer_onl_id_seq;
    	   aofortuno          datama2mi181    false    306    10            �           0    0    online_customer_onl_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE aofortuno.online_customer_onl_id_seq OWNED BY aofortuno.online_customer.onl_id;
       	   aofortuno          datama2mi181    false    305            4           1259    17803    onsite_customer    TABLE     �   CREATE TABLE aofortuno.onsite_customer (
    ons_id integer NOT NULL,
    ons_fname character varying(45) DEFAULT NULL::character varying,
    ons_lname character varying(45) DEFAULT NULL::character varying,
    ons_dob date
);
 &   DROP TABLE aofortuno.onsite_customer;
    	   aofortuno            datama2mi181    false    10            3           1259    17801    onsite_customer_ons_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.onsite_customer_ons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE aofortuno.onsite_customer_ons_id_seq;
    	   aofortuno          datama2mi181    false    308    10            �           0    0    onsite_customer_ons_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE aofortuno.onsite_customer_ons_id_seq OWNED BY aofortuno.onsite_customer.ons_id;
       	   aofortuno          datama2mi181    false    307            6           1259    17813    orders    TABLE       CREATE TABLE aofortuno.orders (
    ord_id integer NOT NULL,
    ord_menu_name character varying(45) DEFAULT NULL::character varying,
    ord_amount integer,
    ord_date timestamp without time zone NOT NULL,
    emp_id integer,
    onl_id integer,
    ons_id integer
);
    DROP TABLE aofortuno.orders;
    	   aofortuno            datama2mi181    false    10            5           1259    17811    orders_ord_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.orders_ord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE aofortuno.orders_ord_id_seq;
    	   aofortuno          datama2mi181    false    10    310            �           0    0    orders_ord_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE aofortuno.orders_ord_id_seq OWNED BY aofortuno.orders.ord_id;
       	   aofortuno          datama2mi181    false    309            8           1259    17822    product    TABLE     �   CREATE TABLE aofortuno.product (
    prod_id integer NOT NULL,
    prod_type character varying(45) DEFAULT NULL::character varying,
    prod_date date,
    prod_date_expire date,
    prod_num_items integer,
    supp_id integer
);
    DROP TABLE aofortuno.product;
    	   aofortuno            datama2mi181    false    10            7           1259    17820    product_prod_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.product_prod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE aofortuno.product_prod_id_seq;
    	   aofortuno          datama2mi181    false    10    312            �           0    0    product_prod_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE aofortuno.product_prod_id_seq OWNED BY aofortuno.product.prod_id;
       	   aofortuno          datama2mi181    false    311            &           1259    17734 
   restaurant    TABLE     �   CREATE TABLE aofortuno.restaurant (
    res_id integer NOT NULL,
    res_loc character varying(45) DEFAULT NULL::character varying,
    res_employed_num integer
);
 !   DROP TABLE aofortuno.restaurant;
    	   aofortuno            datama2mi181    false    10            =           1259    18037    restaurant_supplier    TABLE     �   CREATE TABLE aofortuno.restaurant_supplier (
    res_id integer NOT NULL,
    supp_id integer NOT NULL,
    integ_date timestamp without time zone
);
 *   DROP TABLE aofortuno.restaurant_supplier;
    	   aofortuno            datama2mi181    false    10            [           1259    23114    restaurant2    VIEW     <  CREATE VIEW aofortuno.restaurant2 AS
 SELECT restaurant.res_id,
    restaurant.res_employed_num,
    restaurant.res_loc,
    restaurant_supplier.integ_date,
    restaurant_supplier.supp_id
   FROM (aofortuno.restaurant
     JOIN aofortuno.restaurant_supplier ON ((restaurant.res_id = restaurant_supplier.supp_id)));
 !   DROP VIEW aofortuno.restaurant2;
    	   aofortuno          datama2mi181    false    294    294    294    317    317    10            %           1259    17732    restaurant_res_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.restaurant_res_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE aofortuno.restaurant_res_id_seq;
    	   aofortuno          datama2mi181    false    294    10            �           0    0    restaurant_res_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE aofortuno.restaurant_res_id_seq OWNED BY aofortuno.restaurant.res_id;
       	   aofortuno          datama2mi181    false    293            ,           1259    17761    supplier    TABLE     �   CREATE TABLE aofortuno.supplier (
    supp_id integer NOT NULL,
    supp_name character varying(45) NOT NULL,
    supp_contact integer,
    supp_address character varying(45) DEFAULT NULL::character varying
);
    DROP TABLE aofortuno.supplier;
    	   aofortuno            datama2mi181    false    10            +           1259    17759    supplier_supp_id_seq    SEQUENCE     �   CREATE SEQUENCE aofortuno.supplier_supp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE aofortuno.supplier_supp_id_seq;
    	   aofortuno          datama2mi181    false    300    10            �           0    0    supplier_supp_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE aofortuno.supplier_supp_id_seq OWNED BY aofortuno.supplier.supp_id;
       	   aofortuno          datama2mi181    false    299            �           2604    17834    chef chef_id    DEFAULT     r   ALTER TABLE ONLY aofortuno.chef ALTER COLUMN chef_id SET DEFAULT nextval('aofortuno.chef_chef_id_seq'::regclass);
 >   ALTER TABLE aofortuno.chef ALTER COLUMN chef_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    313    314    314            �           2604    17781    employee emp_id    DEFAULT     x   ALTER TABLE ONLY aofortuno.employee ALTER COLUMN emp_id SET DEFAULT nextval('aofortuno.employee_emp_id_seq'::regclass);
 A   ALTER TABLE aofortuno.employee ALTER COLUMN emp_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    304    303    304            �           2604    17796    online_customer onl_id    DEFAULT     �   ALTER TABLE ONLY aofortuno.online_customer ALTER COLUMN onl_id SET DEFAULT nextval('aofortuno.online_customer_onl_id_seq'::regclass);
 H   ALTER TABLE aofortuno.online_customer ALTER COLUMN onl_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    306    305    306            �           2604    17806    onsite_customer ons_id    DEFAULT     �   ALTER TABLE ONLY aofortuno.onsite_customer ALTER COLUMN ons_id SET DEFAULT nextval('aofortuno.onsite_customer_ons_id_seq'::regclass);
 H   ALTER TABLE aofortuno.onsite_customer ALTER COLUMN ons_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    307    308    308            �           2604    17816    orders ord_id    DEFAULT     t   ALTER TABLE ONLY aofortuno.orders ALTER COLUMN ord_id SET DEFAULT nextval('aofortuno.orders_ord_id_seq'::regclass);
 ?   ALTER TABLE aofortuno.orders ALTER COLUMN ord_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    309    310    310            �           2604    17825    product prod_id    DEFAULT     x   ALTER TABLE ONLY aofortuno.product ALTER COLUMN prod_id SET DEFAULT nextval('aofortuno.product_prod_id_seq'::regclass);
 A   ALTER TABLE aofortuno.product ALTER COLUMN prod_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    312    311    312            �           2604    17737    restaurant res_id    DEFAULT     |   ALTER TABLE ONLY aofortuno.restaurant ALTER COLUMN res_id SET DEFAULT nextval('aofortuno.restaurant_res_id_seq'::regclass);
 C   ALTER TABLE aofortuno.restaurant ALTER COLUMN res_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    294    293    294            �           2604    17764    supplier supp_id    DEFAULT     z   ALTER TABLE ONLY aofortuno.supplier ALTER COLUMN supp_id SET DEFAULT nextval('aofortuno.supplier_supp_id_seq'::regclass);
 B   ALTER TABLE aofortuno.supplier ALTER COLUMN supp_id DROP DEFAULT;
    	   aofortuno          datama2mi181    false    299    300    300            �          0    17831    chef 
   TABLE DATA           Y   COPY aofortuno.chef (chef_id, chef_position, chef_lname, chef_fname, res_id) FROM stdin;
 	   aofortuno          datama2mi181    false    314            �          0    17778    employee 
   TABLE DATA           q   COPY aofortuno.employee (emp_id, emp_fname, emp_lname, emp_dob, emp_address, emp_date_hired, res_id) FROM stdin;
 	   aofortuno          datama2mi181    false    304   L        �          0    17793    online_customer 
   TABLE DATA           S   COPY aofortuno.online_customer (onl_id, onl_fname, onl_lname, onl_dob) FROM stdin;
 	   aofortuno          datama2mi181    false    306           �          0    17803    onsite_customer 
   TABLE DATA           S   COPY aofortuno.onsite_customer (ons_id, ons_fname, ons_lname, ons_dob) FROM stdin;
 	   aofortuno          datama2mi181    false    308   �        �          0    17813    orders 
   TABLE DATA           h   COPY aofortuno.orders (ord_id, ord_menu_name, ord_amount, ord_date, emp_id, onl_id, ons_id) FROM stdin;
 	   aofortuno          datama2mi181    false    310   @        �          0    17822    product 
   TABLE DATA           n   COPY aofortuno.product (prod_id, prod_type, prod_date, prod_date_expire, prod_num_items, supp_id) FROM stdin;
 	   aofortuno          datama2mi181    false    312   D        �          0    17734 
   restaurant 
   TABLE DATA           J   COPY aofortuno.restaurant (res_id, res_loc, res_employed_num) FROM stdin;
 	   aofortuno          datama2mi181    false    294   M        �          0    18037    restaurant_supplier 
   TABLE DATA           M   COPY aofortuno.restaurant_supplier (res_id, supp_id, integ_date) FROM stdin;
 	   aofortuno          datama2mi181    false    317   9        �          0    17761    supplier 
   TABLE DATA           U   COPY aofortuno.supplier (supp_id, supp_name, supp_contact, supp_address) FROM stdin;
 	   aofortuno          datama2mi181    false    300           �           0    0    chef_chef_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('aofortuno.chef_chef_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    313            �           0    0    employee_emp_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('aofortuno.employee_emp_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    303            �           0    0    online_customer_onl_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('aofortuno.online_customer_onl_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    305            �           0    0    onsite_customer_ons_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('aofortuno.onsite_customer_ons_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    307            �           0    0    orders_ord_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('aofortuno.orders_ord_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    309            �           0    0    product_prod_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('aofortuno.product_prod_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    311            �           0    0    restaurant_res_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('aofortuno.restaurant_res_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    293            �           0    0    supplier_supp_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('aofortuno.supplier_supp_id_seq', 1, false);
       	   aofortuno          datama2mi181    false    299                       2606    17836    chef chef_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY aofortuno.chef
    ADD CONSTRAINT chef_pkey PRIMARY KEY (chef_id);
 ;   ALTER TABLE ONLY aofortuno.chef DROP CONSTRAINT chef_pkey;
    	   aofortuno            datama2mi181    false    314            �           2606    17784    employee employee_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY aofortuno.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (emp_id);
 C   ALTER TABLE ONLY aofortuno.employee DROP CONSTRAINT employee_pkey;
    	   aofortuno            datama2mi181    false    304            �           2606    17800 $   online_customer online_customer_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY aofortuno.online_customer
    ADD CONSTRAINT online_customer_pkey PRIMARY KEY (onl_id);
 Q   ALTER TABLE ONLY aofortuno.online_customer DROP CONSTRAINT online_customer_pkey;
    	   aofortuno            datama2mi181    false    306            �           2606    17810 $   onsite_customer onsite_customer_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY aofortuno.onsite_customer
    ADD CONSTRAINT onsite_customer_pkey PRIMARY KEY (ons_id);
 Q   ALTER TABLE ONLY aofortuno.onsite_customer DROP CONSTRAINT onsite_customer_pkey;
    	   aofortuno            datama2mi181    false    308            �           2606    17819    orders orders_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY aofortuno.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (ord_id);
 ?   ALTER TABLE ONLY aofortuno.orders DROP CONSTRAINT orders_pkey;
    	   aofortuno            datama2mi181    false    310                        2606    17828    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY aofortuno.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (prod_id);
 A   ALTER TABLE ONLY aofortuno.product DROP CONSTRAINT product_pkey;
    	   aofortuno            datama2mi181    false    312            �           2606    17740    restaurant restaurant_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY aofortuno.restaurant
    ADD CONSTRAINT restaurant_pkey PRIMARY KEY (res_id);
 G   ALTER TABLE ONLY aofortuno.restaurant DROP CONSTRAINT restaurant_pkey;
    	   aofortuno            datama2mi181    false    294                       2606    18041 *   restaurant_supplier restaurant_supplier_id 
   CONSTRAINT     x   ALTER TABLE ONLY aofortuno.restaurant_supplier
    ADD CONSTRAINT restaurant_supplier_id PRIMARY KEY (res_id, supp_id);
 W   ALTER TABLE ONLY aofortuno.restaurant_supplier DROP CONSTRAINT restaurant_supplier_id;
    	   aofortuno            datama2mi181    false    317    317            �           2606    17767    supplier supplier_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY aofortuno.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (supp_id);
 C   ALTER TABLE ONLY aofortuno.supplier DROP CONSTRAINT supplier_pkey;
    	   aofortuno            datama2mi181    false    300                       2606    25563    orders emp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.orders
    ADD CONSTRAINT emp_id_fkey FOREIGN KEY (emp_id) REFERENCES aofortuno.employee(emp_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ?   ALTER TABLE ONLY aofortuno.orders DROP CONSTRAINT emp_id_fkey;
    	   aofortuno          datama2mi181    false    310    304    3320                       2606    25588    orders onl_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.orders
    ADD CONSTRAINT onl_id_fkey FOREIGN KEY (onl_id) REFERENCES aofortuno.online_customer(onl_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ?   ALTER TABLE ONLY aofortuno.orders DROP CONSTRAINT onl_id_fkey;
    	   aofortuno          datama2mi181    false    306    310    3322                       2606    25652    orders ons_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.orders
    ADD CONSTRAINT ons_id_fkey FOREIGN KEY (ons_id) REFERENCES aofortuno.onsite_customer(ons_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ?   ALTER TABLE ONLY aofortuno.orders DROP CONSTRAINT ons_id_fkey;
    	   aofortuno          datama2mi181    false    310    3324    308                       2606    25260    employee res_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.employee
    ADD CONSTRAINT res_id_fkey FOREIGN KEY (res_id) REFERENCES aofortuno.restaurant(res_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 A   ALTER TABLE ONLY aofortuno.employee DROP CONSTRAINT res_id_fkey;
    	   aofortuno          datama2mi181    false    3316    304    294            
           2606    25509    chef res_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.chef
    ADD CONSTRAINT res_id_fkey FOREIGN KEY (res_id) REFERENCES aofortuno.restaurant(res_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 =   ALTER TABLE ONLY aofortuno.chef DROP CONSTRAINT res_id_fkey;
    	   aofortuno          datama2mi181    false    3316    294    314                       2606    18042 3   restaurant_supplier restaurant_supplier_res_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.restaurant_supplier
    ADD CONSTRAINT restaurant_supplier_res_id_fkey FOREIGN KEY (res_id) REFERENCES aofortuno.restaurant(res_id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY aofortuno.restaurant_supplier DROP CONSTRAINT restaurant_supplier_res_id_fkey;
    	   aofortuno          datama2mi181    false    3316    317    294                       2606    18047 4   restaurant_supplier restaurant_supplier_supp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.restaurant_supplier
    ADD CONSTRAINT restaurant_supplier_supp_id_fkey FOREIGN KEY (supp_id) REFERENCES aofortuno.supplier(supp_id) ON UPDATE CASCADE;
 a   ALTER TABLE ONLY aofortuno.restaurant_supplier DROP CONSTRAINT restaurant_supplier_supp_id_fkey;
    	   aofortuno          datama2mi181    false    317    3318    300            	           2606    25542    product supp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aofortuno.product
    ADD CONSTRAINT supp_id_fkey FOREIGN KEY (supp_id) REFERENCES aofortuno.supplier(supp_id) ON UPDATE CASCADE ON DELETE RESTRICT;
 A   ALTER TABLE ONLY aofortuno.product DROP CONSTRAINT supp_id_fkey;
    	   aofortuno          datama2mi181    false    300    3318    312           