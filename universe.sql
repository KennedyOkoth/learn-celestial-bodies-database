--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(255),
    moon_id integer,
    comet_property1 integer NOT NULL,
    comet_property2 boolean NOT NULL,
    comet_property3 text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    galaxy_property1 integer NOT NULL,
    galaxy_property2 boolean NOT NULL,
    galaxy_property3 numeric
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
    moon_id integer NOT NULL,
    name character varying(255),
    planet_id integer NOT NULL,
    moon_property1 integer NOT NULL,
    moon_property2 boolean NOT NULL,
    moon_property3 text
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
    planet_id integer NOT NULL,
    name character varying(255),
    star_id integer NOT NULL,
    planet_property1 integer NOT NULL,
    planet_property2 boolean NOT NULL,
    planet_property3 numeric
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
    star_id integer NOT NULL,
    name character varying(255),
    galaxy_id integer NOT NULL,
    star_property1 integer NOT NULL,
    star_property2 boolean NOT NULL,
    star_property3 text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 1, 100, true, 'Text1');
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', 2, 200, false, 'Text2');
INSERT INTO public.comet VALUES (3, 'Hyakutake', 3, 300, true, 'Text3');
INSERT INTO public.comet VALUES (4, 'Borrelly', 4, 400, false, 'Text4');
INSERT INTO public.comet VALUES (5, 'Tempel 1', 5, 500, true, 'Text5');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1, true, 1.1);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 2, false, 2.2);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3, true, 3.3);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 4, false, 4.4);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 5, true, 5.5);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 6, false, 6.6);
INSERT INTO public.galaxy VALUES (7, 'Messier 81', 7, true, 7.7);
INSERT INTO public.galaxy VALUES (8, 'NGC 1300', 8, false, 8.8);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 1000, true, 'Text1');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 2000, false, 'Text2');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 3000, true, 'Text3');
INSERT INTO public.moon VALUES (4, 'Io', 5, 4000, false, 'Text4');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 5000, true, 'Text5');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 6000, false, 'Text6');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 7000, true, 'Text7');
INSERT INTO public.moon VALUES (8, 'Titan', 6, 8000, false, 'Text8');
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 9000, true, 'Text9');
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 10000, false, 'Text10');
INSERT INTO public.moon VALUES (11, 'Dione', 6, 11000, true, 'Text11');
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 12000, false, 'Text12');
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 13000, true, 'Text13');
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 14000, false, 'Text14');
INSERT INTO public.moon VALUES (15, 'Oberon', 7, 15000, true, 'Text15');
INSERT INTO public.moon VALUES (16, 'Titania', 7, 16000, false, 'Text16');
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, 17000, true, 'Text17');
INSERT INTO public.moon VALUES (18, 'Ariel', 7, 18000, false, 'Text18');
INSERT INTO public.moon VALUES (19, 'Miranda', 7, 19000, true, 'Text19');
INSERT INTO public.moon VALUES (20, 'Triton', 8, 20000, false, 'Text20');
INSERT INTO public.moon VALUES (21, 'Nereid', 8, 21000, true, 'Text21');
INSERT INTO public.moon VALUES (22, 'Charon', 9, 22000, false, 'Text22');
INSERT INTO public.moon VALUES (23, 'Styx', 9, 23000, true, 'Text23');
INSERT INTO public.moon VALUES (24, 'Nix', 9, 24000, false, 'Text24');
INSERT INTO public.moon VALUES (25, 'Kerberos', 9, 25000, true, 'Text25');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 100, true, 1.1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 200, false, 2.2);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 300, true, 3.3);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 400, false, 4.4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, 500, true, 5.5);
INSERT INTO public.planet VALUES (6, 'Saturn', 2, 600, false, 6.6);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, 700, true, 7.7);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, 800, false, 8.8);
INSERT INTO public.planet VALUES (9, 'Pluto', 3, 900, true, 9.9);
INSERT INTO public.planet VALUES (10, 'Eris', 3, 1000, false, 10.1);
INSERT INTO public.planet VALUES (11, 'Haumea', 3, 1100, true, 11.1);
INSERT INTO public.planet VALUES (12, 'Makemake', 3, 1200, false, 12.1);
INSERT INTO public.planet VALUES (13, 'Ceres', 4, 1300, true, 13.1);
INSERT INTO public.planet VALUES (14, 'Pallas', 4, 1400, false, 14.1);
INSERT INTO public.planet VALUES (15, 'Vesta', 4, 1500, true, 15.1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 2, 10, true, 'G-type');
INSERT INTO public.star VALUES (2, 'Sirius', 1, 20, false, 'A-type');
INSERT INTO public.star VALUES (3, 'Canopus', 1, 30, true, 'F-type');
INSERT INTO public.star VALUES (4, 'Arcturus', 2, 40, false, 'K-type');
INSERT INTO public.star VALUES (5, 'Vega', 3, 50, true, 'A-type');
INSERT INTO public.star VALUES (6, 'Capella', 4, 60, false, 'G-type');
INSERT INTO public.star VALUES (7, 'Rigel', 5, 70, true, 'B-type');
INSERT INTO public.star VALUES (8, 'Procyon', 6, 80, false, 'F-type');


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

