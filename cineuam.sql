--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)

-- Started on 2025-04-11 19:12:29 CST

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
-- TOC entry 210 (class 1259 OID 17005)
-- Name: opiniones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opiniones (
    id integer NOT NULL,
    pelicula character varying(255) NOT NULL,
    muy_buena integer NOT NULL,
    buena integer NOT NULL,
    regular integer NOT NULL,
    mala integer NOT NULL
);


ALTER TABLE public.opiniones OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17004)
-- Name: opiniones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.opiniones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opiniones_id_seq OWNER TO postgres;

--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 209
-- Name: opiniones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.opiniones_id_seq OWNED BY public.opiniones.id;


--
-- TOC entry 212 (class 1259 OID 17012)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id_user integer NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(150) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17011)
-- Name: usuarios_id_user_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_user_seq OWNER TO postgres;

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 211
-- Name: usuarios_id_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_user_seq OWNED BY public.usuarios.id_user;


--
-- TOC entry 3252 (class 2604 OID 17008)
-- Name: opiniones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opiniones ALTER COLUMN id SET DEFAULT nextval('public.opiniones_id_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 17015)
-- Name: usuarios id_user; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_user SET DEFAULT nextval('public.usuarios_id_user_seq'::regclass);


--
-- TOC entry 3400 (class 0 OID 17005)
-- Dependencies: 210
-- Data for Name: opiniones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.opiniones (id, pelicula, muy_buena, buena, regular, mala) FROM stdin;
1	Capitan América	50	25	20	20
2	Joker	60	30	10	25
3	Sonic	55	70	15	15
4	Lilo & Stitch	65	80	5	10
\.


--
-- TOC entry 3402 (class 0 OID 17012)
-- Dependencies: 212
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id_user, nombre, correo, password) FROM stdin;
1	Alexis	alexis@ejemplo.com	password123
2	Maríana	mariana@ejemplo.com	securepass456
10	Alexis	alexxis@gmail.com	12345678
11	Juan Perez	juanperez@gmail.com	12345678
\.


--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 209
-- Name: opiniones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.opiniones_id_seq', 4, true);


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 211
-- Name: usuarios_id_user_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_user_seq', 11, true);


--
-- TOC entry 3255 (class 2606 OID 17010)
-- Name: opiniones opiniones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opiniones
    ADD CONSTRAINT opiniones_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 17021)
-- Name: usuarios usuarios_correo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);


--
-- TOC entry 3259 (class 2606 OID 17019)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_user);


-- Completed on 2025-04-11 19:12:29 CST

--
-- PostgreSQL database dump complete
--

