--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer,
    staramount integer,
    haslife boolean,
    star_id integer,
    isexpanding integer DEFAULT 0 NOT NULL,
    isexpanding2 integer DEFAULT 0 NOT NULL,
    planet character varying(3)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    whatever integer,
    moonsize integer DEFAULT 0 NOT NULL,
    moonsize2 integer DEFAULT 0 NOT NULL,
    planet character varying(3)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    columnname text,
    islivable boolean,
    star_id integer,
    moon_id integer,
    columnlandsize integer DEFAULT 0 NOT NULL,
    columnlandsize2 integer DEFAULT 0 NOT NULL,
    planet character varying(3)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    heat numeric,
    galaxy_id integer,
    planet_id integer,
    size integer DEFAULT 0 NOT NULL,
    size2 integer DEFAULT 0 NOT NULL,
    planet character varying(3)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: whatever; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.whatever (
    name character varying(30) DEFAULT 'ja'::character varying NOT NULL,
    name2 character varying(30) DEFAULT 'ja'::character varying NOT NULL,
    name3 character varying(30),
    whatever_id integer NOT NULL
);


ALTER TABLE public.whatever OWNER TO freecodecamp;

--
-- Name: whatever_whatever_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.whatever_whatever_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.whatever_whatever_id_seq OWNER TO freecodecamp;

--
-- Name: whatever_whatever_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.whatever_whatever_id_seq OWNED BY public.whatever.whatever_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: whatever whatever_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.whatever ALTER COLUMN whatever_id SET DEFAULT nextval('public.whatever_whatever_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'paike', NULL, NULL, NULL, 1, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (2, 'ANdromeda', NULL, 50000, NULL, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'MIlky way', NULL, 90000000, NULL, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy10', 5, NULL, true, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy11', 13, NULL, false, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy12', 3, NULL, true, NULL, 0, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'kuu', 1, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (3, 'Europa', 2, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (4, 'MadeupName', 3, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (5, 'a', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (6, 'b', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (7, 'c', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (8, 'd', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (9, 'e', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (10, 'f', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (11, 'g', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (12, 'h', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (13, 'i', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (14, 'j', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (15, 'k', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (16, 'l', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (17, 'm', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (18, 'n', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (19, 'o', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (20, 'p', NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (21, '
', NULL, NULL, 0, 0, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'maa', NULL, NULL, 1, 1, 0, 0, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, 4, 0, 0, NULL);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, NULL, NULL, 5, 0, 0, NULL);
INSERT INTO public.planet VALUES (4, 'whatever1', NULL, true, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (5, 'whatever2', NULL, false, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (6, 'whatever3', NULL, true, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (7, 'whatever', NULL, false, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (8, 'what', NULL, true, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (9, 'ever', NULL, false, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (10, 'whatever1', NULL, true, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (11, 'randomplanet', NULL, true, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (12, 'randomplanet2', NULL, true, NULL, NULL, 0, 0, NULL);
INSERT INTO public.planet VALUES (13, 'randomplanet3', NULL, false, NULL, NULL, 0, 0, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'paike', NULL, 1, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (2, 'paike2', NULL, 1, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (3, 'paike3', NULL, 2, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (4, 'paike3', NULL, 3, 1, 0, 0, NULL);
INSERT INTO public.star VALUES (5, 'Paike10', 100000, NULL, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (6, 'Paike11', 1000000, NULL, NULL, 0, 0, NULL);


--
-- Data for Name: whatever; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.whatever VALUES ('ja', 'ja', NULL, 1);
INSERT INTO public.whatever VALUES ('ja', 'ja', NULL, 2);
INSERT INTO public.whatever VALUES ('ja', 'ja', NULL, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: whatever_whatever_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.whatever_whatever_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_planet_key UNIQUE (planet);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_key UNIQUE (planet);


--
-- Name: moon moon_whatever_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_whatever_key UNIQUE (whatever);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_key UNIQUE (planet);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_key UNIQUE (planet);


--
-- Name: whatever whatever_name3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.whatever
    ADD CONSTRAINT whatever_name3_key UNIQUE (name3);


--
-- Name: whatever whatever_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.whatever
    ADD CONSTRAINT whatever_pkey PRIMARY KEY (whatever_id);


--
-- Name: moon moonsinplanet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonsinplanet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planetsinstar; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planetsinstar FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star starsingalaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT starsingalaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


