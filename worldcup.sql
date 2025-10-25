--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (385, 2018, 'Final', 769, 770, 4, 2);
INSERT INTO public.games VALUES (386, 2018, 'Third Place', 771, 772, 2, 0);
INSERT INTO public.games VALUES (387, 2018, 'Semi-Final', 770, 772, 2, 1);
INSERT INTO public.games VALUES (388, 2018, 'Semi-Final', 769, 771, 1, 0);
INSERT INTO public.games VALUES (389, 2018, 'Quarter-Final', 770, 778, 3, 2);
INSERT INTO public.games VALUES (390, 2018, 'Quarter-Final', 772, 780, 2, 0);
INSERT INTO public.games VALUES (391, 2018, 'Quarter-Final', 771, 782, 2, 1);
INSERT INTO public.games VALUES (392, 2018, 'Quarter-Final', 769, 784, 2, 0);
INSERT INTO public.games VALUES (393, 2018, 'Eighth-Final', 772, 786, 2, 1);
INSERT INTO public.games VALUES (394, 2018, 'Eighth-Final', 780, 788, 1, 0);
INSERT INTO public.games VALUES (395, 2018, 'Eighth-Final', 771, 790, 3, 2);
INSERT INTO public.games VALUES (396, 2018, 'Eighth-Final', 782, 792, 2, 0);
INSERT INTO public.games VALUES (397, 2018, 'Eighth-Final', 770, 794, 2, 1);
INSERT INTO public.games VALUES (398, 2018, 'Eighth-Final', 778, 796, 2, 1);
INSERT INTO public.games VALUES (399, 2018, 'Eighth-Final', 784, 798, 2, 1);
INSERT INTO public.games VALUES (400, 2018, 'Eighth-Final', 769, 800, 4, 3);
INSERT INTO public.games VALUES (401, 2014, 'Final', 801, 800, 1, 0);
INSERT INTO public.games VALUES (402, 2014, 'Third Place', 803, 782, 3, 0);
INSERT INTO public.games VALUES (403, 2014, 'Semi-Final', 800, 803, 1, 0);
INSERT INTO public.games VALUES (404, 2014, 'Semi-Final', 801, 782, 7, 1);
INSERT INTO public.games VALUES (405, 2014, 'Quarter-Final', 803, 810, 1, 0);
INSERT INTO public.games VALUES (406, 2014, 'Quarter-Final', 800, 771, 1, 0);
INSERT INTO public.games VALUES (407, 2014, 'Quarter-Final', 782, 786, 2, 1);
INSERT INTO public.games VALUES (408, 2014, 'Quarter-Final', 801, 769, 1, 0);
INSERT INTO public.games VALUES (409, 2014, 'Eighth-Final', 782, 818, 2, 1);
INSERT INTO public.games VALUES (410, 2014, 'Eighth-Final', 786, 784, 2, 0);
INSERT INTO public.games VALUES (411, 2014, 'Eighth-Final', 769, 822, 2, 0);
INSERT INTO public.games VALUES (412, 2014, 'Eighth-Final', 801, 824, 2, 1);
INSERT INTO public.games VALUES (413, 2014, 'Eighth-Final', 803, 792, 2, 1);
INSERT INTO public.games VALUES (414, 2014, 'Eighth-Final', 810, 828, 2, 1);
INSERT INTO public.games VALUES (415, 2014, 'Eighth-Final', 800, 788, 1, 0);
INSERT INTO public.games VALUES (416, 2014, 'Eighth-Final', 771, 832, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (769, 'France');
INSERT INTO public.teams VALUES (770, 'Croatia');
INSERT INTO public.teams VALUES (771, 'Belgium');
INSERT INTO public.teams VALUES (772, 'England');
INSERT INTO public.teams VALUES (778, 'Russia');
INSERT INTO public.teams VALUES (780, 'Sweden');
INSERT INTO public.teams VALUES (782, 'Brazil');
INSERT INTO public.teams VALUES (784, 'Uruguay');
INSERT INTO public.teams VALUES (786, 'Colombia');
INSERT INTO public.teams VALUES (788, 'Switzerland');
INSERT INTO public.teams VALUES (790, 'Japan');
INSERT INTO public.teams VALUES (792, 'Mexico');
INSERT INTO public.teams VALUES (794, 'Denmark');
INSERT INTO public.teams VALUES (796, 'Spain');
INSERT INTO public.teams VALUES (798, 'Portugal');
INSERT INTO public.teams VALUES (800, 'Argentina');
INSERT INTO public.teams VALUES (801, 'Germany');
INSERT INTO public.teams VALUES (803, 'Netherlands');
INSERT INTO public.teams VALUES (810, 'Costa Rica');
INSERT INTO public.teams VALUES (818, 'Chile');
INSERT INTO public.teams VALUES (822, 'Nigeria');
INSERT INTO public.teams VALUES (824, 'Algeria');
INSERT INTO public.teams VALUES (828, 'Greece');
INSERT INTO public.teams VALUES (832, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 416, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 856, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

