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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    name character varying(30),
    cluster_id integer NOT NULL,
    number_of_galaxies integer,
    density integer NOT NULL,
    luminance numeric NOT NULL,
    description text
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cluster_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cluster_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cluster_cluster_id_seq OWNED BY public.cluster.cluster_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    cluster_id integer,
    galaxy_diameter integer NOT NULL,
    galaxy_density integer NOT NULL,
    has_blackholes boolean,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    planet_id integer,
    diameter integer,
    distance integer,
    craters numeric NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    star_id integer,
    beauty_score integer,
    friendly_score integer NOT NULL,
    empire_code character varying(50)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    diameter integer,
    temperature integer NOT NULL,
    luminance integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_columnstar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_columnstar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_columnstar_id_seq OWNER TO freecodecamp;

--
-- Name: star_columnstar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_columnstar_id_seq OWNED BY public.star.star_id;


--
-- Name: cluster cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster ALTER COLUMN cluster_id SET DEFAULT nextval('public.cluster_cluster_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_columnstar_id_seq'::regclass);


--
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES ('Virgo', 3, 2, 6, 3, 'Great place');
INSERT INTO public.cluster VALUES ('Terraform', 1, 9, 3, 2, 'One of the most outstanding clusters');
INSERT INTO public.cluster VALUES ('El Gordo', 2, 1, 9, 8, 'Named best cluster from 2023');
INSERT INTO public.cluster VALUES ('Mariana', 4, 5, 3, 1, 'Best cluster according to Dark Magazine 2022');
INSERT INTO public.cluster VALUES ('Caritide', 5, 7, 6, 8, 'The greatest cluster created by God');
INSERT INTO public.cluster VALUES ('Blue Darkness', 6, 7, 4, 4, 'Get lost in its miriad of galaxies');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, 23, 5, true, true);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, NULL, 56, 3, true, true);
INSERT INTO public.galaxy VALUES ('Small Magellanic Cloud', 3, NULL, 9, 7, true, false);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 4, NULL, 67, 8, false, false);
INSERT INTO public.galaxy VALUES ('Atennae', 5, NULL, 95, 67, true, false);
INSERT INTO public.galaxy VALUES ('Circinus', 6, NULL, 65, 1, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Earth Moon', 1, 1, 34, 23, 32);
INSERT INTO public.moon VALUES ('Faraya', 2, 5, 45, 536, 3);
INSERT INTO public.moon VALUES ('Kfoui', 3, 5, 35, 769, 363);
INSERT INTO public.moon VALUES ('Ura', 4, 5, 67, 29, 89);
INSERT INTO public.moon VALUES ('Poae', 5, 6, 245, 22, 1);
INSERT INTO public.moon VALUES ('Eyri', 6, 2, 345, 12, 101);
INSERT INTO public.moon VALUES ('Poaue', 7, 9, 4, 93, 299);
INSERT INTO public.moon VALUES ('Werty', 10, 4, 73, 2278, 49);
INSERT INTO public.moon VALUES ('Zez', 11, 4, 373, 1178, 69);
INSERT INTO public.moon VALUES ('Caucama', 12, 10, 1119, 2211, 456);
INSERT INTO public.moon VALUES ('Bucai', 13, 10, 19, 11, 9456);
INSERT INTO public.moon VALUES ('Plaidnu', 14, 11, 90, 311, 2);
INSERT INTO public.moon VALUES ('Ghui', 8, 11, 70, 7311, 42);
INSERT INTO public.moon VALUES ('Awqe', 9, 11, 999, 1311, 11);
INSERT INTO public.moon VALUES ('Sdfhui', 15, 1, 67, 345, 66);
INSERT INTO public.moon VALUES ('Pegamer', 16, 1, 1988, 240, 661);
INSERT INTO public.moon VALUES ('Mariana', 17, 1, 1989, 241, 662);
INSERT INTO public.moon VALUES ('Andres', 18, 1, 2020, 141, 1662);
INSERT INTO public.moon VALUES ('Luisgretus', 19, 5, 1339, 919, 2023);
INSERT INTO public.moon VALUES ('Regresium', 20, 7, 19, 910, 19083);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Okama', 3, 3, 89, 55, 'FASU29');
INSERT INTO public.planet VALUES ('Mars', 2, 6, 32, 2, 'UUGH67');
INSERT INTO public.planet VALUES ('Earth', 1, 6, 99, 45, 'GH643H');
INSERT INTO public.planet VALUES ('Vulcama', 4, 4, 77, 24, 'GOD955');
INSERT INTO public.planet VALUES ('Pluto', 5, 6, 74, 57, 'BI94D');
INSERT INTO public.planet VALUES ('Venus', 6, 6, 14, 31, 'ABI594D');
INSERT INTO public.planet VALUES ('Mercury', 7, 6, 344, 21, '5663I');
INSERT INTO public.planet VALUES ('Saturn', 8, 6, 891, 111, 'FIUG88');
INSERT INTO public.planet VALUES ('Oghut', 9, 5, 909, 1, 'UINGO24');
INSERT INTO public.planet VALUES ('Faghur', 10, 3, 89936, 593, '89GU4');
INSERT INTO public.planet VALUES ('Akamatha', 11, 5, 783, 512, 'UF990D');
INSERT INTO public.planet VALUES ('Chimichaga', 12, 5, 932, 666, 'U389ZZ');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Polaris', 1, 25, 99, 11);
INSERT INTO public.star VALUES ('Pollux', 2, 32, 56, 77);
INSERT INTO public.star VALUES ('Orion', 3, 11, 23, 56);
INSERT INTO public.star VALUES ('Sirus', 4, 56, 2, 73);
INSERT INTO public.star VALUES ('Altair', 5, 3, 47, 2);
INSERT INTO public.star VALUES ('Sun', 6, 44, 44, 90);


--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cluster_cluster_id_seq', 2, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_columnstar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_columnstar_id_seq', 6, true);


--
-- Name: cluster cluster_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_id PRIMARY KEY (cluster_id);


--
-- Name: cluster cluster_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_unique UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_density);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (craters);


--
-- Name: planet planet_beauty_score_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_beauty_score_key UNIQUE (beauty_score);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (luminance);


--
-- Name: galaxy galaxy_cluster_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_cluster_id FOREIGN KEY (cluster_id) REFERENCES public.cluster(cluster_id);


--
-- Name: moon moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

