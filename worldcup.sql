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
    round character varying(20) NOT NULL,
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (117, 2018, 'Final', 258, 259, 4, 2);
INSERT INTO public.games VALUES (118, 2018, 'Third Place', 260, 261, 2, 0);
INSERT INTO public.games VALUES (119, 2018, 'Semi-Final', 259, 261, 2, 1);
INSERT INTO public.games VALUES (120, 2018, 'Semi-Final', 258, 260, 1, 0);
INSERT INTO public.games VALUES (121, 2018, 'Quarter-Final', 259, 262, 3, 2);
INSERT INTO public.games VALUES (122, 2018, 'Quarter-Final', 261, 263, 2, 0);
INSERT INTO public.games VALUES (123, 2018, 'Quarter-Final', 260, 264, 2, 1);
INSERT INTO public.games VALUES (124, 2018, 'Quarter-Final', 258, 265, 2, 0);
INSERT INTO public.games VALUES (125, 2018, 'Eighth-Final', 261, 266, 2, 1);
INSERT INTO public.games VALUES (126, 2018, 'Eighth-Final', 263, 267, 1, 0);
INSERT INTO public.games VALUES (127, 2018, 'Eighth-Final', 260, 268, 3, 2);
INSERT INTO public.games VALUES (128, 2018, 'Eighth-Final', 264, 269, 2, 0);
INSERT INTO public.games VALUES (129, 2018, 'Eighth-Final', 259, 270, 2, 1);
INSERT INTO public.games VALUES (130, 2018, 'Eighth-Final', 262, 271, 2, 1);
INSERT INTO public.games VALUES (131, 2018, 'Eighth-Final', 265, 272, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Eighth-Final', 258, 273, 4, 3);
INSERT INTO public.games VALUES (133, 2014, 'Final', 274, 273, 1, 0);
INSERT INTO public.games VALUES (134, 2014, 'Third Place', 275, 264, 3, 0);
INSERT INTO public.games VALUES (135, 2014, 'Semi-Final', 273, 275, 1, 0);
INSERT INTO public.games VALUES (136, 2014, 'Semi-Final', 274, 264, 7, 1);
INSERT INTO public.games VALUES (137, 2014, 'Quarter-Final', 275, 276, 1, 0);
INSERT INTO public.games VALUES (138, 2014, 'Quarter-Final', 273, 260, 1, 0);
INSERT INTO public.games VALUES (139, 2014, 'Quarter-Final', 264, 266, 2, 1);
INSERT INTO public.games VALUES (140, 2014, 'Quarter-Final', 274, 258, 1, 0);
INSERT INTO public.games VALUES (141, 2014, 'Eighth-Final', 264, 277, 2, 1);
INSERT INTO public.games VALUES (142, 2014, 'Eighth-Final', 266, 265, 2, 0);
INSERT INTO public.games VALUES (143, 2014, 'Eighth-Final', 258, 278, 2, 0);
INSERT INTO public.games VALUES (144, 2014, 'Eighth-Final', 274, 279, 2, 1);
INSERT INTO public.games VALUES (145, 2014, 'Eighth-Final', 275, 269, 2, 1);
INSERT INTO public.games VALUES (146, 2014, 'Eighth-Final', 276, 280, 2, 1);
INSERT INTO public.games VALUES (147, 2014, 'Eighth-Final', 273, 267, 1, 0);
INSERT INTO public.games VALUES (148, 2014, 'Eighth-Final', 260, 281, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (258, 'France');
INSERT INTO public.teams VALUES (259, 'Croatia');
INSERT INTO public.teams VALUES (260, 'Belgium');
INSERT INTO public.teams VALUES (261, 'England');
INSERT INTO public.teams VALUES (262, 'Russia');
INSERT INTO public.teams VALUES (263, 'Sweden');
INSERT INTO public.teams VALUES (264, 'Brazil');
INSERT INTO public.teams VALUES (265, 'Uruguay');
INSERT INTO public.teams VALUES (266, 'Colombia');
INSERT INTO public.teams VALUES (267, 'Switzerland');
INSERT INTO public.teams VALUES (268, 'Japan');
INSERT INTO public.teams VALUES (269, 'Mexico');
INSERT INTO public.teams VALUES (270, 'Denmark');
INSERT INTO public.teams VALUES (271, 'Spain');
INSERT INTO public.teams VALUES (272, 'Portugal');
INSERT INTO public.teams VALUES (273, 'Argentina');
INSERT INTO public.teams VALUES (274, 'Germany');
INSERT INTO public.teams VALUES (275, 'Netherlands');
INSERT INTO public.teams VALUES (276, 'Costa Rica');
INSERT INTO public.teams VALUES (277, 'Chile');
INSERT INTO public.teams VALUES (278, 'Nigeria');
INSERT INTO public.teams VALUES (279, 'Algeria');
INSERT INTO public.teams VALUES (280, 'Greece');
INSERT INTO public.teams VALUES (281, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 148, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 281, true);


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

