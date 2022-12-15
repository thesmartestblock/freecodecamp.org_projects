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
-- Name: celestial_connection; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_connection (
    celestial_connection_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    moon_id integer
);


ALTER TABLE public.celestial_connection OWNER TO freecodecamp;

--
-- Name: celestial_connection_celestial_connection_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_connection_celestial_connection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_connection_celestial_connection_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_connection_celestial_connection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_connection_celestial_connection_id_seq OWNED BY public.celestial_connection.celestial_connection_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    length_lightyears integer,
    looks_cool boolean NOT NULL
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
    name character varying(30) NOT NULL,
    distance_lightyears integer,
    has_water boolean NOT NULL,
    planet_id integer
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
    name character varying(30) NOT NULL,
    distance_lightyears integer,
    has_life boolean NOT NULL,
    star_id integer
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
    name character varying(30) NOT NULL,
    distance_lightyears numeric(30,5),
    brightness_candela integer,
    galaxy_id integer
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
-- Name: celestial_connection celestial_connection_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_connection ALTER COLUMN celestial_connection_id SET DEFAULT nextval('public.celestial_connection_celestial_connection_id_seq'::regclass);


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
-- Data for Name: celestial_connection; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_connection VALUES (1, 'fg0', 1, 2);
INSERT INTO public.celestial_connection VALUES (2, 'ytr', 5, 1);
INSERT INTO public.celestial_connection VALUES (3, 'sde', 3, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'very white like milk', 'milky way', 2046, true);
INSERT INTO public.galaxy VALUES (2, 'afehoiauehf', 'whatever way', 46, true);
INSERT INTO public.galaxy VALUES (3, 'qakalksjdoidandk', 'wh4ay', 524020, false);
INSERT INTO public.galaxy VALUES (4, 'pakjfehfjkafaje', 'andreadkfj', 846, true);
INSERT INTO public.galaxy VALUES (5, ';jkkljlasddh', 'fererfere', 10, false);
INSERT INTO public.galaxy VALUES (6, 'pakjfehfjasdasdje', 'af', 4846, true);
INSERT INTO public.galaxy VALUES (7, 'jkkljlasddh', 'urn', 910, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'asd', 520, true, 5);
INSERT INTO public.moon VALUES (2, 'bhtgt', 7542, true, 1);
INSERT INTO public.moon VALUES (3, 'krthkjsd', 5483, false, 4);
INSERT INTO public.moon VALUES (4, 'agrq', 4, false, 3);
INSERT INTO public.moon VALUES (5, 'egtjysr', 8, true, 2);
INSERT INTO public.moon VALUES (6, 'yje', 63, false, 6);
INSERT INTO public.moon VALUES (7, '?asdas', 520, true, 5);
INSERT INTO public.moon VALUES (8, '@#Ebhtgt', 7542, true, 1);
INSERT INTO public.moon VALUES (9, 'DAWkrthkjsd', 5483, false, 4);
INSERT INTO public.moon VALUES (10, '%^agrq', 4, false, 3);
INSERT INTO public.moon VALUES (11, '(egtjysr', 8, true, 2);
INSERT INTO public.moon VALUES (12, '____yje', 63, false, 6);
INSERT INTO public.moon VALUES (13, '!sa', 7542, true, 1);
INSERT INTO public.moon VALUES (14, '**sd', 5483, false, 4);
INSERT INTO public.moon VALUES (15, '$$rq', 4, false, 3);
INSERT INTO public.moon VALUES (16, '62ysr', 8, true, 2);
INSERT INTO public.moon VALUES (17, '_!_yje', 63, false, 6);
INSERT INTO public.moon VALUES (18, '#tgt', 7542, true, 1);
INSERT INTO public.moon VALUES (19, '52', 5483, false, 4);
INSERT INTO public.moon VALUES (20, '^agrq', 4, false, 3);
INSERT INTO public.moon VALUES (21, '(>>>egtjysr', 8, true, 2);
INSERT INTO public.moon VALUES (22, '__>>>>>>>>>>>>>>__yje', 63, false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'zsefjnw', 30, true, 5);
INSERT INTO public.planet VALUES (2, 'm>>><<<t', 796535, true, 1);
INSERT INTO public.planet VALUES (3, '635.23.dawwdaw', 78652383, false, 4);
INSERT INTO public.planet VALUES (4, ':adw', 1, false, 3);
INSERT INTO public.planet VALUES (5, '=awd', 8559638, true, 2);
INSERT INTO public.planet VALUES (6, '\\dawadad', 1, false, 6);
INSERT INTO public.planet VALUES (7, 'awd', 30, true, 5);
INSERT INTO public.planet VALUES (8, 'mt', 796535, true, 1);
INSERT INTO public.planet VALUES (9, '.dawwdaw', 78652383, false, 4);
INSERT INTO public.planet VALUES (10, 'awdwa', 1, false, 3);
INSERT INTO public.planet VALUES (11, ';wd', 8559638, true, 2);
INSERT INTO public.planet VALUES (12, 'pawd', 1, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'psd', 74.50000, 22, 5);
INSERT INTO public.star VALUES (2, 'bgt', 542.37000, 52, 1);
INSERT INTO public.star VALUES (3, 'kkjsd', 82.50000, 45, 4);
INSERT INTO public.star VALUES (4, 'azjn', 3.50000, 84, 3);
INSERT INTO public.star VALUES (5, 'egsr', 74.50000, 98, 2);
INSERT INTO public.star VALUES (6, 'qwerty', 63.65410, 572, 6);


--
-- Name: celestial_connection_celestial_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_connection_celestial_connection_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_connection celestial_connection_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_connection
    ADD CONSTRAINT celestial_connection_name_key UNIQUE (name);


--
-- Name: celestial_connection celestial_connection_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_connection
    ADD CONSTRAINT celestial_connection_pkey PRIMARY KEY (celestial_connection_id);


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
-- Name: celestial_connection celestial_connection_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_connection
    ADD CONSTRAINT celestial_connection_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: celestial_connection celestial_connection_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_connection
    ADD CONSTRAINT celestial_connection_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

