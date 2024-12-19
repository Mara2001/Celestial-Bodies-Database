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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_planet integer,
    description text,
    mass numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions_of_years integer,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    number_of_stars_in_millions numeric
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    name character varying(30) NOT NULL,
    has_moon boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age_in_millions_of_years integer,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    has_planets boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 8, 'Our home galaxy, a barred spiral with billions of stars and planets.', 1500000000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 8, 'The nearest large spiral galaxy, on a collision course with the Milky Way.', 1230000000000);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 0, 'A bright spiral galaxy with a prominent dust ring, resembling a sombrero.', 800000000000);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 0, 'A satellite galaxy of the Milky Way, visible from the Southern Hemisphere.', 15000000000);
INSERT INTO public.galaxy VALUES (5, 'NGC 1300', 0, 'A barred spiral galaxy with a distinct central bar structure.', 120000000000);
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 0, 'A galaxy known for its dark band of absorbing dust in front of its bright nucleus.', 320000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 4500, 'Moon', 1, 'Earths only natural satellite, responsible for tides.');
INSERT INTO public.moon VALUES (2, 4600, 'Phobos', 2, 'One of Marss moons, slowly spiraling towards the planet.');
INSERT INTO public.moon VALUES (3, 4600, 'Deimos', 2, 'The smaller and more distant of Marss two moons.');
INSERT INTO public.moon VALUES (4, 5000, 'Andros Alpha', 3, 'A rocky moon orbiting Andros I.');
INSERT INTO public.moon VALUES (5, 4900, 'Andros Beta', 3, 'A frozen moon with signs of ancient volcanic activity.');
INSERT INTO public.moon VALUES (6, 5900, 'Sombero Moon 1', 5, 'A barren moon with a cratered surface.');
INSERT INTO public.moon VALUES (7, 5800, 'Sombero Moon 2', 5, 'A geologically active moon with ice geysers.');
INSERT INTO public.moon VALUES (8, 3000, 'LMC Orbitus', 7, 'A small rocky moon orbiting LMC Terra.');
INSERT INTO public.moon VALUES (9, 3100, 'LMC Aqualis', 7, 'A moon covered in ice, with possible subsurface oceans.');
INSERT INTO public.moon VALUES (10, 7000, 'NGC Dryas', 9, 'A dusty moon with no atmosphere.');
INSERT INTO public.moon VALUES (11, 7100, 'NGC Zephyr', 9, 'A moon with occasional dust storms caused by solar winds.');
INSERT INTO public.moon VALUES (12, 8000, 'Black Eye Ring A', 11, 'Part of the ring system of Black Eye Prime.');
INSERT INTO public.moon VALUES (13, 8000, 'Black Eye Ring B', 11, 'Another moon-like body in the ring system of Black Eye Prime.');
INSERT INTO public.moon VALUES (14, 4000, 'Phantom A', 4, 'A volcanic moon with mysterious geysers.');
INSERT INTO public.moon VALUES (15, 3800, 'Phantom B', 4, 'An icy moon with no known life.');
INSERT INTO public.moon VALUES (16, 6800, 'Arcturus X', 6, 'A cratered moon orbiting a gas giant.');
INSERT INTO public.moon VALUES (17, 6200, 'Arcturus Y', 6, 'A barren moon with subsurface minerals.');
INSERT INTO public.moon VALUES (18, 2900, 'Spectra', 8, 'A gaseous moon with a thin atmosphere.');
INSERT INTO public.moon VALUES (19, 2700, 'Lumina', 8, 'A reflective moon with a surface covered in ice crystals.');
INSERT INTO public.moon VALUES (20, 4700, 'Nebulus', 10, 'A moon with dark, volcanic plains.');


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 1, 'Orion Nebula', 2.0);
INSERT INTO public.nebula VALUES (2, 2, 'Andromeda Nebula', 3.5);
INSERT INTO public.nebula VALUES (3, 3, 'Sombrero Nebula', 1.8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 4500, 'Earth', true, 'The only planet known to support life, with a single moon.', 1);
INSERT INTO public.planet VALUES (2, 4600, 'Mars', true, 'The Red Planet, with two small moons: Phobos and Deimos.', 1);
INSERT INTO public.planet VALUES (3, 5000, 'Andros I', true, 'A rocky exoplanet with signs of water in Andromeda Galaxy.', 9);
INSERT INTO public.planet VALUES (4, 4800, 'Andros II', false, 'A gas giant in the Andromeda Galaxy with no detected moons.', 9);
INSERT INTO public.planet VALUES (5, 6000, 'Sombero Prime', true, 'A small terrestrial planet with an active volcanic surface.', 14);
INSERT INTO public.planet VALUES (6, 5900, 'Sombero Secundus', false, 'A frozen exoplanet with no atmosphere.', 14);
INSERT INTO public.planet VALUES (7, 3000, 'LMC Terra', true, 'A rocky planet with a thick atmosphere and signs of liquid oceans.', 21);
INSERT INTO public.planet VALUES (8, 2900, 'LMC Vaporis', false, 'A gas giant with a mysterious, dense atmosphere.', 21);
INSERT INTO public.planet VALUES (9, 7000, 'NGC Arid', true, 'A desert planet orbiting NGC Beta, with a single moon.', 26);
INSERT INTO public.planet VALUES (10, 6800, 'NGC Borealis', false, 'An icy planet far from its star with no moons.', 26);
INSERT INTO public.planet VALUES (11, 8000, 'Black Eye Prime', true, 'A massive gas giant with a ring system and multiple moons.', 32);
INSERT INTO public.planet VALUES (12, 7900, 'Black Eye Secundus', false, 'A rocky planet with a thin atmosphere and no moons.', 32);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 4600, 'Sun', 1, true);
INSERT INTO public.star VALUES (2, 10000, 'Betelgeuse', 1, false);
INSERT INTO public.star VALUES (3, 12000, 'Sirius', 1, true);
INSERT INTO public.star VALUES (4, 8000, 'Vega', 1, true);
INSERT INTO public.star VALUES (5, 25000, 'Proxima Centauri', 1, true);
INSERT INTO public.star VALUES (6, 13000, 'Altair', 1, true);
INSERT INTO public.star VALUES (7, 5000, 'Andromeda 1', 2, false);
INSERT INTO public.star VALUES (8, 3000, 'Andromeda 2', 2, false);
INSERT INTO public.star VALUES (9, 7000, 'Andromeda 3', 2, true);
INSERT INTO public.star VALUES (10, 8000, 'Andromeda 4', 2, true);
INSERT INTO public.star VALUES (11, 6000, 'Andromeda 5', 2, false);
INSERT INTO public.star VALUES (12, 4500, 'Andromeda 6', 2, true);
INSERT INTO public.star VALUES (13, 8000, 'Sombrero Alpha', 3, false);
INSERT INTO public.star VALUES (14, 6000, 'Sombrero Beta', 3, true);
INSERT INTO public.star VALUES (15, 10000, 'Sombrero Gamma', 3, false);
INSERT INTO public.star VALUES (16, 11000, 'Sombrero Delta', 3, true);
INSERT INTO public.star VALUES (17, 7500, 'Sombrero Epsilon', 3, false);
INSERT INTO public.star VALUES (18, 9500, 'Sombrero Zeta', 3, true);
INSERT INTO public.star VALUES (19, 2000, 'LMC Star 1', 4, false);
INSERT INTO public.star VALUES (20, 3000, 'LMC Star 2', 4, false);
INSERT INTO public.star VALUES (21, 4000, 'LMC Star 3', 4, true);
INSERT INTO public.star VALUES (22, 2500, 'LMC Star 4', 4, true);
INSERT INTO public.star VALUES (23, 2200, 'LMC Star 5', 4, false);
INSERT INTO public.star VALUES (24, 2800, 'LMC Star 6', 4, true);
INSERT INTO public.star VALUES (25, 6000, 'NGC Alpha', 5, false);
INSERT INTO public.star VALUES (26, 7000, 'NGC Beta', 5, true);
INSERT INTO public.star VALUES (27, 8000, 'NGC Gamma', 5, false);
INSERT INTO public.star VALUES (28, 5500, 'NGC Delta', 5, true);
INSERT INTO public.star VALUES (29, 7300, 'NGC Epsilon', 5, false);
INSERT INTO public.star VALUES (30, 6800, 'NGC Zeta', 5, true);
INSERT INTO public.star VALUES (31, 7000, 'Black Eye Alpha', 6, false);
INSERT INTO public.star VALUES (32, 8000, 'Black Eye Beta', 6, true);
INSERT INTO public.star VALUES (33, 7500, 'Black Eye Gamma', 6, false);
INSERT INTO public.star VALUES (34, 7200, 'Black Eye Delta', 6, true);
INSERT INTO public.star VALUES (35, 6900, 'Black Eye Epsilon', 6, false);
INSERT INTO public.star VALUES (36, 7700, 'Black Eye Zeta', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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
-- Name: nebula unique_constrain; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT unique_constrain UNIQUE (nebula_id);


--
-- Name: galaxy unique_constrain_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_constrain_galaxy UNIQUE (galaxy_id);


--
-- Name: moon unique_constrain_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_constrain_moon UNIQUE (moon_id);


--
-- Name: planet unique_constrain_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_constrain_planet UNIQUE (planet_id);


--
-- Name: star unique_constrain_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_constrain_star UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: nebula nebula_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

