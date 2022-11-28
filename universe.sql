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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    name character varying NOT NULL,
    age_mill_years integer,
    distance_from_earth integer,
    size numeric(5,2),
    is_spherical boolean,
    has_life boolean,
    moon_id integer,
    black_holes_id integer NOT NULL
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    a integer,
    b integer,
    c integer,
    blabla text
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
    name character varying NOT NULL,
    age_mill_years integer,
    distance_from_earth integer,
    size numeric(5,2),
    is_spherical boolean,
    has_life boolean,
    moon_id integer NOT NULL,
    planet_id integer
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
    name character varying NOT NULL,
    age_mill_years integer,
    distance_from_earth integer,
    size numeric(5,2),
    is_spherical boolean,
    has_life boolean,
    planet_id integer NOT NULL,
    star_id integer
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
    name character varying NOT NULL,
    age_mill_years integer,
    distance_from_earth integer,
    size numeric(5,2),
    is_spherical boolean,
    has_life boolean,
    star_id integer NOT NULL,
    galaxy_id integer
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES ('b1', NULL, NULL, NULL, false, false, NULL, 1);
INSERT INTO public.black_holes VALUES ('b2', NULL, NULL, NULL, false, false, NULL, 2);
INSERT INTO public.black_holes VALUES ('b3', NULL, NULL, NULL, false, false, NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'alfa', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'beta', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'gama', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'delta', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'epsilon', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'zeta', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('a', 121, 12, 15.10, false, false, 1, 1);
INSERT INTO public.moon VALUES ('b', 122, 13, 12.50, false, false, 2, 2);
INSERT INTO public.moon VALUES ('c', 123, 14, 11.00, false, false, 3, 3);
INSERT INTO public.moon VALUES ('d', 124, 15, 15.00, false, false, 4, 5);
INSERT INTO public.moon VALUES ('e', 125, 22, 65.00, false, false, 5, 6);
INSERT INTO public.moon VALUES ('f', 126, 37, 77.00, false, false, 6, 4);
INSERT INTO public.moon VALUES ('g', 127, 43, 63.00, false, false, 7, 1);
INSERT INTO public.moon VALUES ('h', 245, 83, 22.00, false, false, 8, 2);
INSERT INTO public.moon VALUES ('i', 111, 16, 26.00, false, false, 9, 3);
INSERT INTO public.moon VALUES ('j', 112, 13, 13.00, false, false, 10, 6);
INSERT INTO public.moon VALUES ('k', 113, 34, 56.00, false, false, 11, 2);
INSERT INTO public.moon VALUES ('l', 116, 76, 38.00, false, false, 12, 4);
INSERT INTO public.moon VALUES ('m', 121, 12, 15.10, false, false, 13, 1);
INSERT INTO public.moon VALUES ('n', 122, 13, 12.50, false, false, 14, 2);
INSERT INTO public.moon VALUES ('o', 123, 14, 11.00, false, false, 15, 3);
INSERT INTO public.moon VALUES ('p', 124, 15, 15.00, false, false, 16, 5);
INSERT INTO public.moon VALUES ('q', 125, 22, 65.00, false, false, 17, 6);
INSERT INTO public.moon VALUES ('r', 126, 37, 77.00, false, false, 18, 4);
INSERT INTO public.moon VALUES ('s', 127, 43, 63.00, false, false, 19, 1);
INSERT INTO public.moon VALUES ('t', 245, 83, 22.00, false, false, 20, 2);
INSERT INTO public.moon VALUES ('u', 111, 16, 26.00, false, false, 21, 3);
INSERT INTO public.moon VALUES ('v', 112, 13, 13.00, false, false, 22, 6);
INSERT INTO public.moon VALUES ('w', 113, 34, 56.00, false, false, 23, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercurio', 54, 22, 4.30, true, false, 1, 2);
INSERT INTO public.planet VALUES ('Venus', 52, 21, 5.20, true, false, 2, 2);
INSERT INTO public.planet VALUES ('Tierra', 1, 0, 2.00, true, true, 3, 4);
INSERT INTO public.planet VALUES ('Marte', 3, 1, 3.00, true, false, 4, 1);
INSERT INTO public.planet VALUES ('Jupiter', 45, 5, 17.00, true, false, 5, 6);
INSERT INTO public.planet VALUES ('Saturno', 56, 8, 41.00, true, false, 6, 5);
INSERT INTO public.planet VALUES ('Urano', 54, 22, 4.30, true, false, 7, 2);
INSERT INTO public.planet VALUES ('Neptuno', 52, 21, 5.20, true, false, 8, 2);
INSERT INTO public.planet VALUES ('Pluton', 1, 0, 2.00, true, true, 9, 4);
INSERT INTO public.planet VALUES ('Aa', 3, 1, 3.00, true, false, 10, 1);
INSERT INTO public.planet VALUES ('Ba', 45, 5, 17.00, true, false, 11, 6);
INSERT INTO public.planet VALUES ('Ce', 56, 8, 41.00, true, false, 12, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 12, 5, 67.00, false, false, 1, 6);
INSERT INTO public.star VALUES ('Canopus', 11, 6, 23.00, false, false, 2, 5);
INSERT INTO public.star VALUES ('Betelgeuse', 45, 3, 17.00, false, false, 3, 4);
INSERT INTO public.star VALUES ('Vigo', 14, 27, 8.00, false, false, 4, 3);
INSERT INTO public.star VALUES ('Capella', 21, 33, 18.00, false, false, 5, 2);
INSERT INTO public.star VALUES ('Rigel', 31, 26, 35.00, false, false, 6, 1);


--
-- Name: black_holes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: black_holes black_holes_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_id_key UNIQUE (black_holes_id);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_holes black_holes_black_holes_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_black_holes_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

