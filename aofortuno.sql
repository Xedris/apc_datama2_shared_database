--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-02 08:53:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 20 (class 2615 OID 16750)
-- Name: aofortuno; Type: SCHEMA; Schema: -; Owner: datama2mi181
--

CREATE SCHEMA aofortuno;


ALTER SCHEMA aofortuno OWNER TO datama2mi181;

SET default_tablespace = '';

--
-- TOC entry 311 (class 1259 OID 17831)
-- Name: chef; Type: TABLE; Schema: aofortuno; Owner: datama2mi181
--

CREATE TABLE aofortuno.chef (
    chef_id integer NOT NULL,
    chef_position character varying(45) NOT NULL,
    chef_lname character varying(45) NOT NULL,
    chef_fname character varying(45) NOT NULL
);


ALTER TABLE aofortuno.chef OWNER TO datama2mi181;

--
-- TOC entry 310 (class 1259 OID 17829)
-- Name: chef_chef_id_seq; Type: SEQUENCE; Schema: aofortuno; Owner: datama2mi181
--

CREATE SEQUENCE aofortuno.chef_chef_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aofortuno.chef_chef_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 310
-- Name: chef_chef_id_seq; Type: SEQUENCE OWNED BY; Schema: aofortuno; Owner: datama2mi181
--

ALTER SEQUENCE aofortuno.chef_chef_id_seq OWNED BY aofortuno.chef.chef_id;


--
-- TOC entry 301 (class 1259 OID 17778)
-- Name: employee; Type: TABLE; Schema: aofortuno; Owner: datama2mi181
--

CREATE TABLE aofortuno.employee (
    emp_id integer NOT NULL,
    emp_fname character varying(45) NOT NULL,
    emp_lname character varying(45) NOT NULL,
    emp_dob date,
    emp_address character varying(45) DEFAULT NULL::character varying,
    emp_date_hired date
);


ALTER TABLE aofortuno.employee OWNER TO datama2mi181;

--
-- TOC entry 300 (class 1259 OID 17776)
-- Name: employee_emp_id_seq; Type: SEQUENCE; Schema: aofortuno; Owner: datama2mi181
--

CREATE SEQUENCE aofortuno.employee_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aofortuno.employee_emp_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 300
-- Name: employee_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: aofortuno; Owner: datama2mi181
--

ALTER SEQUENCE aofortuno.employee_emp_id_seq OWNED BY aofortuno.employee.emp_id;


--
-- TOC entry 303 (class 1259 OID 17793)
-- Name: online_customer; Type: TABLE; Schema: aofortuno; Owner: datama2mi181
--

CREATE TABLE aofortuno.online_customer (
    onl_id integer NOT NULL,
    onl_fname character varying(45) DEFAULT NULL::character varying,
    onl_lname character varying(45) DEFAULT NULL::character varying,
    onl_dob date
);


ALTER TABLE aofortuno.online_customer OWNER TO datama2mi181;

--
-- TOC entry 302 (class 1259 OID 17791)
-- Name: online_customer_onl_id_seq; Type: SEQUENCE; Schema: aofortuno; Owner: datama2mi181
--

CREATE SEQUENCE aofortuno.online_customer_onl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aofortuno.online_customer_onl_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 302
-- Name: online_customer_onl_id_seq; Type: SEQUENCE OWNED BY; Schema: aofortuno; Owner: datama2mi181
--

ALTER SEQUENCE aofortuno.online_customer_onl_id_seq OWNED BY aofortuno.online_customer.onl_id;


--
-- TOC entry 305 (class 1259 OID 17803)
-- Name: onsite_customer; Type: TABLE; Schema: aofortuno; Owner: datama2mi181
--

CREATE TABLE aofortuno.onsite_customer (
    ons_id integer NOT NULL,
    ons_fname character varying(45) DEFAULT NULL::character varying,
    ons_lname character varying(45) DEFAULT NULL::character varying,
    ons_dob date
);


ALTER TABLE aofortuno.onsite_customer OWNER TO datama2mi181;

--
-- TOC entry 304 (class 1259 OID 17801)
-- Name: onsite_customer_ons_id_seq; Type: SEQUENCE; Schema: aofortuno; Owner: datama2mi181
--

CREATE SEQUENCE aofortuno.onsite_customer_ons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aofortuno.onsite_customer_ons_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 304
-- Name: onsite_customer_ons_id_seq; Type: SEQUENCE OWNED BY; Schema: aofortuno; Owner: datama2mi181
--

ALTER SEQUENCE aofortuno.onsite_customer_ons_id_seq OWNED BY aofortuno.onsite_customer.ons_id;


--
-- TOC entry 307 (class 1259 OID 17813)
-- Name: orders; Type: TABLE; Schema: aofortuno; Owner: datama2mi181
--

CREATE TABLE aofortuno.orders (
    ord_id integer NOT NULL,
    ord_menu_name character varying(45) DEFAULT NULL::character varying,
    ord_amount integer,
    ord_date timestamp without time zone NOT NULL
);


ALTER TABLE aofortuno.orders OWNER TO datama2mi181;

--
-- TOC entry 306 (class 1259 OID 17811)
-- Name: orders_ord_id_seq; Type: SEQUENCE; Schema: aofortuno; Owner: datama2mi181
--

CREATE SEQUENCE aofortuno.orders_ord_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aofortuno.orders_ord_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 306
-- Name: orders_ord_id_seq; Type: SEQUENCE OWNED BY; Schema: aofortuno; Owner: datama2mi181
--

ALTER SEQUENCE aofortuno.orders_ord_id_seq OWNED BY aofortuno.orders.ord_id;


--
-- TOC entry 309 (class 1259 OID 17822)
-- Name: product; Type: TABLE; Schema: aofortuno; Owner: datama2mi181
--

CREATE TABLE aofortuno.product (
    prod_id integer NOT NULL,
    prod_type character varying(45) DEFAULT NULL::character varying,
    prod_date date,
    prod_date_expire date,
    prod_num_items integer
);


ALTER TABLE aofortuno.product OWNER TO datama2mi181;

--
-- TOC entry 308 (class 1259 OID 17820)
-- Name: product_prod_id_seq; Type: SEQUENCE; Schema: aofortuno; Owner: datama2mi181
--

CREATE SEQUENCE aofortuno.product_prod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aofortuno.product_prod_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 308
-- Name: product_prod_id_seq; Type: SEQUENCE OWNED BY; Schema: aofortuno; Owner: datama2mi181
--

ALTER SEQUENCE aofortuno.product_prod_id_seq OWNED BY aofortuno.product.prod_id;


--
-- TOC entry 291 (class 1259 OID 17734)
-- Name: restaurant; Type: TABLE; Schema: aofortuno; Owner: datama2mi181
--

CREATE TABLE aofortuno.restaurant (
    res_id integer NOT NULL,
    res_loc character varying(45) DEFAULT NULL::character varying,
    res_employed_num integer
);


ALTER TABLE aofortuno.restaurant OWNER TO datama2mi181;

--
-- TOC entry 314 (class 1259 OID 18037)
-- Name: restaurant_supplier; Type: TABLE; Schema: aofortuno; Owner: datama2mi181
--

CREATE TABLE aofortuno.restaurant_supplier (
    res_id integer NOT NULL,
    supp_id integer NOT NULL,
    integ_date timestamp without time zone
);


ALTER TABLE aofortuno.restaurant_supplier OWNER TO datama2mi181;

--
-- TOC entry 347 (class 1259 OID 23114)
-- Name: restaurant2; Type: VIEW; Schema: aofortuno; Owner: datama2mi181
--

CREATE VIEW aofortuno.restaurant2 AS
 SELECT restaurant.res_id,
    restaurant.res_employed_num,
    restaurant.res_loc,
    restaurant_supplier.integ_date,
    restaurant_supplier.supp_id
   FROM (aofortuno.restaurant
     JOIN aofortuno.restaurant_supplier ON ((restaurant.res_id = restaurant_supplier.supp_id)));


ALTER TABLE aofortuno.restaurant2 OWNER TO datama2mi181;

--
-- TOC entry 290 (class 1259 OID 17732)
-- Name: restaurant_res_id_seq; Type: SEQUENCE; Schema: aofortuno; Owner: datama2mi181
--

CREATE SEQUENCE aofortuno.restaurant_res_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aofortuno.restaurant_res_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 290
-- Name: restaurant_res_id_seq; Type: SEQUENCE OWNED BY; Schema: aofortuno; Owner: datama2mi181
--

ALTER SEQUENCE aofortuno.restaurant_res_id_seq OWNED BY aofortuno.restaurant.res_id;


--
-- TOC entry 297 (class 1259 OID 17761)
-- Name: supplier; Type: TABLE; Schema: aofortuno; Owner: datama2mi181
--

CREATE TABLE aofortuno.supplier (
    supp_id integer NOT NULL,
    supp_name character varying(45) NOT NULL,
    supp_contact integer,
    supp_address character varying(45) DEFAULT NULL::character varying
);


ALTER TABLE aofortuno.supplier OWNER TO datama2mi181;

--
-- TOC entry 296 (class 1259 OID 17759)
-- Name: supplier_supp_id_seq; Type: SEQUENCE; Schema: aofortuno; Owner: datama2mi181
--

CREATE SEQUENCE aofortuno.supplier_supp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE aofortuno.supplier_supp_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 296
-- Name: supplier_supp_id_seq; Type: SEQUENCE OWNED BY; Schema: aofortuno; Owner: datama2mi181
--

ALTER SEQUENCE aofortuno.supplier_supp_id_seq OWNED BY aofortuno.supplier.supp_id;


--
-- TOC entry 3188 (class 2604 OID 17834)
-- Name: chef chef_id; Type: DEFAULT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.chef ALTER COLUMN chef_id SET DEFAULT nextval('aofortuno.chef_chef_id_seq'::regclass);


--
-- TOC entry 3176 (class 2604 OID 17781)
-- Name: employee emp_id; Type: DEFAULT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.employee ALTER COLUMN emp_id SET DEFAULT nextval('aofortuno.employee_emp_id_seq'::regclass);


--
-- TOC entry 3178 (class 2604 OID 17796)
-- Name: online_customer onl_id; Type: DEFAULT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.online_customer ALTER COLUMN onl_id SET DEFAULT nextval('aofortuno.online_customer_onl_id_seq'::regclass);


--
-- TOC entry 3181 (class 2604 OID 17806)
-- Name: onsite_customer ons_id; Type: DEFAULT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.onsite_customer ALTER COLUMN ons_id SET DEFAULT nextval('aofortuno.onsite_customer_ons_id_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 17816)
-- Name: orders ord_id; Type: DEFAULT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.orders ALTER COLUMN ord_id SET DEFAULT nextval('aofortuno.orders_ord_id_seq'::regclass);


--
-- TOC entry 3186 (class 2604 OID 17825)
-- Name: product prod_id; Type: DEFAULT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.product ALTER COLUMN prod_id SET DEFAULT nextval('aofortuno.product_prod_id_seq'::regclass);


--
-- TOC entry 3172 (class 2604 OID 17737)
-- Name: restaurant res_id; Type: DEFAULT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.restaurant ALTER COLUMN res_id SET DEFAULT nextval('aofortuno.restaurant_res_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 17764)
-- Name: supplier supp_id; Type: DEFAULT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.supplier ALTER COLUMN supp_id SET DEFAULT nextval('aofortuno.supplier_supp_id_seq'::regclass);


--
-- TOC entry 3357 (class 0 OID 17831)
-- Dependencies: 311
-- Data for Name: chef; Type: TABLE DATA; Schema: aofortuno; Owner: datama2mi181
--

INSERT INTO aofortuno.chef VALUES (1, 'head chef', 'Bernardo', 'Herrick');
INSERT INTO aofortuno.chef VALUES (2, 'sous chef', 'Jeremy', 'Carmack');


--
-- TOC entry 3347 (class 0 OID 17778)
-- Dependencies: 301
-- Data for Name: employee; Type: TABLE DATA; Schema: aofortuno; Owner: datama2mi181
--



--
-- TOC entry 3349 (class 0 OID 17793)
-- Dependencies: 303
-- Data for Name: online_customer; Type: TABLE DATA; Schema: aofortuno; Owner: datama2mi181
--

INSERT INTO aofortuno.online_customer VALUES (1, 'Ramsay', 'Karena', '1998-07-09');
INSERT INTO aofortuno.online_customer VALUES (2, 'Carney', 'Daniele', '1990-10-04');
INSERT INTO aofortuno.online_customer VALUES (3, 'Bryce', 'Harper', '1985-10-02');
INSERT INTO aofortuno.online_customer VALUES (4, 'Jose', 'Altuve', '1988-04-08');
INSERT INTO aofortuno.online_customer VALUES (5, 'Trae', 'Young', '1999-09-03');
INSERT INTO aofortuno.online_customer VALUES (6, 'Jaren', 'Jackson', '1997-12-06');


--
-- TOC entry 3351 (class 0 OID 17803)
-- Dependencies: 305
-- Data for Name: onsite_customer; Type: TABLE DATA; Schema: aofortuno; Owner: datama2mi181
--

INSERT INTO aofortuno.onsite_customer VALUES (1, 'Tom', 'Tomson', '2019-10-17');
INSERT INTO aofortuno.onsite_customer VALUES (2, 'Jean', 'Garisson', '2018-10-25');


--
-- TOC entry 3353 (class 0 OID 17813)
-- Dependencies: 307
-- Data for Name: orders; Type: TABLE DATA; Schema: aofortuno; Owner: datama2mi181
--

INSERT INTO aofortuno.orders VALUES (1, 'pancake', 280, '1957-06-13 00:00:00');
INSERT INTO aofortuno.orders VALUES (2, 'shake', 190, '1957-06-13 00:00:00');


--
-- TOC entry 3355 (class 0 OID 17822)
-- Dependencies: 309
-- Data for Name: product; Type: TABLE DATA; Schema: aofortuno; Owner: datama2mi181
--

INSERT INTO aofortuno.product VALUES (1, 'perishable', '2019-10-17', '2019-10-11', 23);
INSERT INTO aofortuno.product VALUES (2, 'perishable', '2019-10-31', '2020-02-13', 522);


--
-- TOC entry 3343 (class 0 OID 17734)
-- Dependencies: 291
-- Data for Name: restaurant; Type: TABLE DATA; Schema: aofortuno; Owner: datama2mi181
--

INSERT INTO aofortuno.restaurant VALUES (1, 'Chambersburg City', 32);
INSERT INTO aofortuno.restaurant VALUES (2, 'Jefferson City', 32);


--
-- TOC entry 3358 (class 0 OID 18037)
-- Dependencies: 314
-- Data for Name: restaurant_supplier; Type: TABLE DATA; Schema: aofortuno; Owner: datama2mi181
--



--
-- TOC entry 3345 (class 0 OID 17761)
-- Dependencies: 297
-- Data for Name: supplier; Type: TABLE DATA; Schema: aofortuno; Owner: datama2mi181
--

INSERT INTO aofortuno.supplier VALUES (1, 'meat.ly', 922222, '1019  Cambridge Court');
INSERT INTO aofortuno.supplier VALUES (2, 'Foodure', 71763487, '1335  Lincoln Drive');


--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 310
-- Name: chef_chef_id_seq; Type: SEQUENCE SET; Schema: aofortuno; Owner: datama2mi181
--

SELECT pg_catalog.setval('aofortuno.chef_chef_id_seq', 1, false);


--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 300
-- Name: employee_emp_id_seq; Type: SEQUENCE SET; Schema: aofortuno; Owner: datama2mi181
--

SELECT pg_catalog.setval('aofortuno.employee_emp_id_seq', 1, false);


--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 302
-- Name: online_customer_onl_id_seq; Type: SEQUENCE SET; Schema: aofortuno; Owner: datama2mi181
--

SELECT pg_catalog.setval('aofortuno.online_customer_onl_id_seq', 1, false);


--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 304
-- Name: onsite_customer_ons_id_seq; Type: SEQUENCE SET; Schema: aofortuno; Owner: datama2mi181
--

SELECT pg_catalog.setval('aofortuno.onsite_customer_ons_id_seq', 1, false);


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 306
-- Name: orders_ord_id_seq; Type: SEQUENCE SET; Schema: aofortuno; Owner: datama2mi181
--

SELECT pg_catalog.setval('aofortuno.orders_ord_id_seq', 1, false);


--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 308
-- Name: product_prod_id_seq; Type: SEQUENCE SET; Schema: aofortuno; Owner: datama2mi181
--

SELECT pg_catalog.setval('aofortuno.product_prod_id_seq', 1, false);


--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 290
-- Name: restaurant_res_id_seq; Type: SEQUENCE SET; Schema: aofortuno; Owner: datama2mi181
--

SELECT pg_catalog.setval('aofortuno.restaurant_res_id_seq', 1, false);


--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 296
-- Name: supplier_supp_id_seq; Type: SEQUENCE SET; Schema: aofortuno; Owner: datama2mi181
--

SELECT pg_catalog.setval('aofortuno.supplier_supp_id_seq', 1, false);


--
-- TOC entry 3204 (class 2606 OID 17836)
-- Name: chef chef_pkey; Type: CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.chef
    ADD CONSTRAINT chef_pkey PRIMARY KEY (chef_id);


--
-- TOC entry 3194 (class 2606 OID 17784)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (emp_id);


--
-- TOC entry 3196 (class 2606 OID 17800)
-- Name: online_customer online_customer_pkey; Type: CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.online_customer
    ADD CONSTRAINT online_customer_pkey PRIMARY KEY (onl_id);


--
-- TOC entry 3198 (class 2606 OID 17810)
-- Name: onsite_customer onsite_customer_pkey; Type: CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.onsite_customer
    ADD CONSTRAINT onsite_customer_pkey PRIMARY KEY (ons_id);


--
-- TOC entry 3200 (class 2606 OID 17819)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (ord_id);


--
-- TOC entry 3202 (class 2606 OID 17828)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (prod_id);


--
-- TOC entry 3190 (class 2606 OID 17740)
-- Name: restaurant restaurant_pkey; Type: CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.restaurant
    ADD CONSTRAINT restaurant_pkey PRIMARY KEY (res_id);


--
-- TOC entry 3206 (class 2606 OID 18041)
-- Name: restaurant_supplier restaurant_supplier_id; Type: CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.restaurant_supplier
    ADD CONSTRAINT restaurant_supplier_id PRIMARY KEY (res_id, supp_id);


--
-- TOC entry 3192 (class 2606 OID 17767)
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (supp_id);


--
-- TOC entry 3207 (class 2606 OID 18042)
-- Name: restaurant_supplier restaurant_supplier_res_id_fkey; Type: FK CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.restaurant_supplier
    ADD CONSTRAINT restaurant_supplier_res_id_fkey FOREIGN KEY (res_id) REFERENCES aofortuno.restaurant(res_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3208 (class 2606 OID 18047)
-- Name: restaurant_supplier restaurant_supplier_supp_id_fkey; Type: FK CONSTRAINT; Schema: aofortuno; Owner: datama2mi181
--

ALTER TABLE ONLY aofortuno.restaurant_supplier
    ADD CONSTRAINT restaurant_supplier_supp_id_fkey FOREIGN KEY (supp_id) REFERENCES aofortuno.supplier(supp_id) ON UPDATE CASCADE;


-- Completed on 2019-12-02 08:53:01

--
-- PostgreSQL database dump complete
--

