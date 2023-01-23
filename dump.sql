--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)

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
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    id integer NOT NULL,
    title text NOT NULL,
    genres text NOT NULL,
    platform text NOT NULL,
    watched boolean NOT NULL,
    comment text
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- Name: movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movie_id_seq OWNER TO postgres;

--
-- Name: movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movie_id_seq OWNED BY public.movie.id;


--
-- Name: movie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie ALTER COLUMN id SET DEFAULT nextval('public.movie_id_seq'::regclass);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie (id, title, genres, platform, watched, comment) FROM stdin;
5	Amor e Outras Drogas	Comédia Romântica	HBO Max	f	\N
7	Esposa de Mentirinha	Comédia Romântica	Netflix	f	\N
9	Tem Alguém na sua casa	Terror	Netflix	f	\N
11	Uncharted: Fora do Mapa	Ação	HBO Max	f	\N
12	Trem-Bala	Ação	HBO Max	f	\N
13	7 Dias com Você	Comédia Romântica	HBO Max	f	\N
14	The F Word	Comédia Romântica	HBO Max	f	\N
15	Harry Potter e a Câmara Secreta	Ficção	Netflix	f	\N
16	Avatar	Ficção	Youtube Films	f	\N
17	Nice	Drama	Star+	f	\N
18	O Procurado	Ação	Star+	f	\N
19	Oblivion	Ficção científica	Star+	f	\N
21	A Cidade Perdida	Comédia Romântica	Youtube Films	f	\N
22	A Cidade Perdida	Comédia Romântica	Youtube Films	f	\N
20	Free Guy	Comédia	Star+	t	{"comment":"Ameeei o filme, super divertido!!!"}
23	Senhor dos Anéis	Aventura	Netflix	t	{"comment":"Melhor filme da vida!"}
\.


--
-- Name: movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_id_seq', 23, true);


--
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
