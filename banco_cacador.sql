--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2026-11-17 16:57:34

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 25544)
-- Name: tabela_diagrama; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tabela_diagrama;


ALTER SCHEMA tabela_diagrama OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 222 (class 1259 OID 25571)
-- Name: cacador_habilidades; Type: TABLE; Schema: tabela_diagrama; Owner: postgres
--

CREATE TABLE tabela_diagrama.cacador_habilidades (
    id_cacador_mt integer NOT NULL,
    habilidade_especial character varying(100) NOT NULL
);


ALTER TABLE tabela_diagrama.cacador_habilidades OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 25610)
-- Name: equipa_mt; Type: TABLE; Schema: tabela_diagrama; Owner: postgres
--

CREATE TABLE tabela_diagrama.equipa_mt (
    id_cacador_mt integer NOT NULL,
    equipamento_mt character varying(100) NOT NULL
);


ALTER TABLE tabela_diagrama.equipa_mt OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25595)
-- Name: participa_mt; Type: TABLE; Schema: tabela_diagrama; Owner: postgres
--

CREATE TABLE tabela_diagrama.participa_mt (
    id_cacador_mt integer NOT NULL,
    id_missao integer NOT NULL
);


ALTER TABLE tabela_diagrama.participa_mt OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25560)
-- Name: tabela_cacador; Type: TABLE; Schema: tabela_diagrama; Owner: postgres
--

CREATE TABLE tabela_diagrama.tabela_cacador (
    id_cacador_mt integer NOT NULL,
    primeiro_nome_mt character varying(50),
    sobrenome_mt character varying(50),
    nome_completo_mt character varying(100),
    rank_classe_mt character varying(50),
    data_despertar_mt date,
    anos_servico_mt integer,
    id_guilda_mt integer
);


ALTER TABLE tabela_diagrama.tabela_cacador OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25559)
-- Name: tabela_cacador_id_cacador_mt_seq; Type: SEQUENCE; Schema: tabela_diagrama; Owner: postgres
--

CREATE SEQUENCE tabela_diagrama.tabela_cacador_id_cacador_mt_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE tabela_diagrama.tabela_cacador_id_cacador_mt_seq OWNER TO postgres;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 220
-- Name: tabela_cacador_id_cacador_mt_seq; Type: SEQUENCE OWNED BY; Schema: tabela_diagrama; Owner: postgres
--

ALTER SEQUENCE tabela_diagrama.tabela_cacador_id_cacador_mt_seq OWNED BY tabela_diagrama.tabela_cacador.id_cacador_mt;


--
-- TOC entry 219 (class 1259 OID 25546)
-- Name: tabela_guilda; Type: TABLE; Schema: tabela_diagrama; Owner: postgres
--

CREATE TABLE tabela_diagrama.tabela_guilda (
    id_guilda_mt integer NOT NULL,
    localizacao character varying(100),
    rank_portal character varying(50)
);


ALTER TABLE tabela_diagrama.tabela_guilda OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25545)
-- Name: tabela_guilda_id_guilda_mt_seq; Type: SEQUENCE; Schema: tabela_diagrama; Owner: postgres
--

CREATE SEQUENCE tabela_diagrama.tabela_guilda_id_guilda_mt_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE tabela_diagrama.tabela_guilda_id_guilda_mt_seq OWNER TO postgres;

--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 218
-- Name: tabela_guilda_id_guilda_mt_seq; Type: SEQUENCE OWNED BY; Schema: tabela_diagrama; Owner: postgres
--

ALTER SEQUENCE tabela_diagrama.tabela_guilda_id_guilda_mt_seq OWNED BY tabela_diagrama.tabela_guilda.id_guilda_mt;


--
-- TOC entry 224 (class 1259 OID 25582)
-- Name: tabela_missao; Type: TABLE; Schema: tabela_diagrama; Owner: postgres
--

CREATE TABLE tabela_diagrama.tabela_missao (
    id_missao integer NOT NULL,
    status character varying(50),
    recompensa numeric(12,2),
    id_portal_mt integer
);


ALTER TABLE tabela_diagrama.tabela_missao OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25581)
-- Name: tabela_missao_id_missao_seq; Type: SEQUENCE; Schema: tabela_diagrama; Owner: postgres
--

CREATE SEQUENCE tabela_diagrama.tabela_missao_id_missao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE tabela_diagrama.tabela_missao_id_missao_seq OWNER TO postgres;

--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 223
-- Name: tabela_missao_id_missao_seq; Type: SEQUENCE OWNED BY; Schema: tabela_diagrama; Owner: postgres
--

ALTER SEQUENCE tabela_diagrama.tabela_missao_id_missao_seq OWNED BY tabela_diagrama.tabela_missao.id_missao;


--
-- TOC entry 228 (class 1259 OID 25621)
-- Name: tabela_portal; Type: TABLE; Schema: tabela_diagrama; Owner: postgres
--

CREATE TABLE tabela_diagrama.tabela_portal (
    id_portal_mt integer NOT NULL
);


ALTER TABLE tabela_diagrama.tabela_portal OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25620)
-- Name: tabela_portal_id_portal_mt_seq; Type: SEQUENCE; Schema: tabela_diagrama; Owner: postgres
--

CREATE SEQUENCE tabela_diagrama.tabela_portal_id_portal_mt_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE tabela_diagrama.tabela_portal_id_portal_mt_seq OWNER TO postgres;

--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 227
-- Name: tabela_portal_id_portal_mt_seq; Type: SEQUENCE OWNED BY; Schema: tabela_diagrama; Owner: postgres
--

ALTER SEQUENCE tabela_diagrama.tabela_portal_id_portal_mt_seq OWNED BY tabela_diagrama.tabela_portal.id_portal_mt;


--
-- TOC entry 4771 (class 2604 OID 25563)
-- Name: tabela_cacador id_cacador_mt; Type: DEFAULT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_cacador ALTER COLUMN id_cacador_mt SET DEFAULT nextval('tabela_diagrama.tabela_cacador_id_cacador_mt_seq'::regclass);


--
-- TOC entry 4770 (class 2604 OID 25549)
-- Name: tabela_guilda id_guilda_mt; Type: DEFAULT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_guilda ALTER COLUMN id_guilda_mt SET DEFAULT nextval('tabela_diagrama.tabela_guilda_id_guilda_mt_seq'::regclass);


--
-- TOC entry 4772 (class 2604 OID 25585)
-- Name: tabela_missao id_missao; Type: DEFAULT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_missao ALTER COLUMN id_missao SET DEFAULT nextval('tabela_diagrama.tabela_missao_id_missao_seq'::regclass);


--
-- TOC entry 4773 (class 2604 OID 25624)
-- Name: tabela_portal id_portal_mt; Type: DEFAULT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_portal ALTER COLUMN id_portal_mt SET DEFAULT nextval('tabela_diagrama.tabela_portal_id_portal_mt_seq'::regclass);


--
-- TOC entry 4944 (class 0 OID 25571)
-- Dependencies: 222
-- Data for Name: cacador_habilidades; Type: TABLE DATA; Schema: tabela_diagrama; Owner: postgres
--

COPY tabela_diagrama.cacador_habilidades (id_cacador_mt, habilidade_especial) FROM stdin;
1	Adaga de Kasaka
1	Ira de Kamish
2	Espada de Luz
3	Armadura de Grau Mestre
\.


--
-- TOC entry 4948 (class 0 OID 25610)
-- Dependencies: 226
-- Data for Name: equipa_mt; Type: TABLE DATA; Schema: tabela_diagrama; Owner: postgres
--

COPY tabela_diagrama.equipa_mt (id_cacador_mt, equipamento_mt) FROM stdin;
1	Adaga do Cavaleiro
1	Presa de Kasaka
2	Espada Longa de Luz
3	Armadura Pesada de D-Rank
4	Terno Executivo Reforçado
\.


--
-- TOC entry 4947 (class 0 OID 25595)
-- Dependencies: 225
-- Data for Name: participa_mt; Type: TABLE DATA; Schema: tabela_diagrama; Owner: postgres
--

COPY tabela_diagrama.participa_mt (id_cacador_mt, id_missao) FROM stdin;
1	1
2	2
3	3
4	4
\.


--
-- TOC entry 4943 (class 0 OID 25560)
-- Dependencies: 221
-- Data for Name: tabela_cacador; Type: TABLE DATA; Schema: tabela_diagrama; Owner: postgres
--

COPY tabela_diagrama.tabela_cacador (id_cacador_mt, primeiro_nome_mt, sobrenome_mt, nome_completo_mt, rank_classe_mt, data_despertar_mt, anos_servico_mt, id_guilda_mt) FROM stdin;
1	Jin-Woo	Sung	Sung Jin-Woo	Rank S	2010-11-10	4	9
2	Hae-In	Cha	Cha Hae-In	Rank S	2013-09-21	9	10
3	Jin-Ho	Yoo	Yoo Jin-Ho	Rank D	2009-10-14	10	11
4	Gun-Hee	Go	Go Gun-Hee	Rank S	2010-01-08	1	12
\.


--
-- TOC entry 4941 (class 0 OID 25546)
-- Dependencies: 219
-- Data for Name: tabela_guilda; Type: TABLE DATA; Schema: tabela_diagrama; Owner: postgres
--

COPY tabela_diagrama.tabela_guilda (id_guilda_mt, localizacao, rank_portal) FROM stdin;
9	Sede Central - Seul	Rank S
10	Distrito Norte	Rank A
11	Setor Leste	Rank B
12	Base Subterrânea	Rank C
\.


--
-- TOC entry 4946 (class 0 OID 25582)
-- Dependencies: 224
-- Data for Name: tabela_missao; Type: TABLE DATA; Schema: tabela_diagrama; Owner: postgres
--

COPY tabela_diagrama.tabela_missao (id_missao, status, recompensa, id_portal_mt) FROM stdin;
1	Concluída	500000.00	1
2	Em Andamento	70000.00	2
3	Em Aberto	700.00	3
4	Concluída	40000.00	4
\.


--
-- TOC entry 4950 (class 0 OID 25621)
-- Dependencies: 228
-- Data for Name: tabela_portal; Type: TABLE DATA; Schema: tabela_diagrama; Owner: postgres
--

COPY tabela_diagrama.tabela_portal (id_portal_mt) FROM stdin;
1
2
3
4
\.


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 220
-- Name: tabela_cacador_id_cacador_mt_seq; Type: SEQUENCE SET; Schema: tabela_diagrama; Owner: postgres
--

SELECT pg_catalog.setval('tabela_diagrama.tabela_cacador_id_cacador_mt_seq', 4, true);


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 218
-- Name: tabela_guilda_id_guilda_mt_seq; Type: SEQUENCE SET; Schema: tabela_diagrama; Owner: postgres
--

SELECT pg_catalog.setval('tabela_diagrama.tabela_guilda_id_guilda_mt_seq', 12, true);


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 223
-- Name: tabela_missao_id_missao_seq; Type: SEQUENCE SET; Schema: tabela_diagrama; Owner: postgres
--

SELECT pg_catalog.setval('tabela_diagrama.tabela_missao_id_missao_seq', 4, true);


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 227
-- Name: tabela_portal_id_portal_mt_seq; Type: SEQUENCE SET; Schema: tabela_diagrama; Owner: postgres
--

SELECT pg_catalog.setval('tabela_diagrama.tabela_portal_id_portal_mt_seq', 4, true);


--
-- TOC entry 4779 (class 2606 OID 25575)
-- Name: cacador_habilidades cacador_habilidades_pkey; Type: CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.cacador_habilidades
    ADD CONSTRAINT cacador_habilidades_pkey PRIMARY KEY (id_cacador_mt, habilidade_especial);


--
-- TOC entry 4787 (class 2606 OID 25614)
-- Name: equipa_mt equipa_mt_pkey; Type: CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.equipa_mt
    ADD CONSTRAINT equipa_mt_pkey PRIMARY KEY (id_cacador_mt, equipamento_mt);


--
-- TOC entry 4785 (class 2606 OID 25599)
-- Name: participa_mt participa_mt_pkey; Type: CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.participa_mt
    ADD CONSTRAINT participa_mt_pkey PRIMARY KEY (id_cacador_mt, id_missao);


--
-- TOC entry 4777 (class 2606 OID 25565)
-- Name: tabela_cacador tabela_cacador_pkey; Type: CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_cacador
    ADD CONSTRAINT tabela_cacador_pkey PRIMARY KEY (id_cacador_mt);


--
-- TOC entry 4775 (class 2606 OID 25551)
-- Name: tabela_guilda tabela_guilda_pkey; Type: CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_guilda
    ADD CONSTRAINT tabela_guilda_pkey PRIMARY KEY (id_guilda_mt);


--
-- TOC entry 4781 (class 2606 OID 25589)
-- Name: tabela_missao tabela_missao_id_portal_mt_key; Type: CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_missao
    ADD CONSTRAINT tabela_missao_id_portal_mt_key UNIQUE (id_portal_mt);


--
-- TOC entry 4783 (class 2606 OID 25587)
-- Name: tabela_missao tabela_missao_pkey; Type: CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_missao
    ADD CONSTRAINT tabela_missao_pkey PRIMARY KEY (id_missao);


--
-- TOC entry 4789 (class 2606 OID 25626)
-- Name: tabela_portal tabela_portal_pkey; Type: CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_portal
    ADD CONSTRAINT tabela_portal_pkey PRIMARY KEY (id_portal_mt);


--
-- TOC entry 4790 (class 2606 OID 25566)
-- Name: tabela_cacador fk_cacador_guilda; Type: FK CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.tabela_cacador
    ADD CONSTRAINT fk_cacador_guilda FOREIGN KEY (id_guilda_mt) REFERENCES tabela_diagrama.tabela_guilda(id_guilda_mt) ON DELETE SET NULL;


--
-- TOC entry 4794 (class 2606 OID 25615)
-- Name: equipa_mt fk_equipa_cacador; Type: FK CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.equipa_mt
    ADD CONSTRAINT fk_equipa_cacador FOREIGN KEY (id_cacador_mt) REFERENCES tabela_diagrama.tabela_cacador(id_cacador_mt) ON DELETE CASCADE;


--
-- TOC entry 4791 (class 2606 OID 25576)
-- Name: cacador_habilidades fk_habilidades_cacador; Type: FK CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.cacador_habilidades
    ADD CONSTRAINT fk_habilidades_cacador FOREIGN KEY (id_cacador_mt) REFERENCES tabela_diagrama.tabela_cacador(id_cacador_mt) ON DELETE CASCADE;


--
-- TOC entry 4792 (class 2606 OID 25600)
-- Name: participa_mt fk_participa_cacador; Type: FK CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.participa_mt
    ADD CONSTRAINT fk_participa_cacador FOREIGN KEY (id_cacador_mt) REFERENCES tabela_diagrama.tabela_cacador(id_cacador_mt) ON DELETE CASCADE;


--
-- TOC entry 4793 (class 2606 OID 25605)
-- Name: participa_mt fk_participa_missao; Type: FK CONSTRAINT; Schema: tabela_diagrama; Owner: postgres
--

ALTER TABLE ONLY tabela_diagrama.participa_mt
    ADD CONSTRAINT fk_participa_missao FOREIGN KEY (id_missao) REFERENCES tabela_diagrama.tabela_missao(id_missao) ON DELETE CASCADE;


-- Completed on 2026-11-17 16:57:34

--
-- PostgreSQL database dump complete
--

