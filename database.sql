--
-- PostgreSQL database dump
--

\restrict tdfSmBIG2c3CMLGcE9rBK10wGqunBs9B4rhr90a2MV1284GEoRVexp9ewTiksgI

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

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
-- Name: dv; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA dv;


ALTER SCHEMA dv OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: hub_competition; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_competition (
    competition_hk character(32) NOT NULL,
    competition_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_competition OWNER TO postgres;

--
-- Name: hub_discipline; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_discipline (
    discipline_hk character(32) NOT NULL,
    discipline_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_discipline OWNER TO postgres;

--
-- Name: hub_event; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_event (
    event_hk character(32) NOT NULL,
    event_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_event OWNER TO postgres;

--
-- Name: hub_judge; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_judge (
    judge_hk character(32) NOT NULL,
    judge_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_judge OWNER TO postgres;

--
-- Name: hub_participant; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_participant (
    participant_hk character(32) NOT NULL,
    participant_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_participant OWNER TO postgres;

--
-- Name: hub_registration; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_registration (
    registration_hk character(32) NOT NULL,
    registration_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_registration OWNER TO postgres;

--
-- Name: hub_result; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_result (
    result_hk character(32) NOT NULL,
    result_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_result OWNER TO postgres;

--
-- Name: hub_sport; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_sport (
    sport_hk character(32) NOT NULL,
    sport_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_sport OWNER TO postgres;

--
-- Name: hub_stage; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_stage (
    stage_hk character(32) NOT NULL,
    stage_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_stage OWNER TO postgres;

--
-- Name: hub_team; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_team (
    team_hk character(32) NOT NULL,
    team_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_team OWNER TO postgres;

--
-- Name: hub_venue; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.hub_venue (
    venue_hk character(32) NOT NULL,
    venue_id integer NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.hub_venue OWNER TO postgres;

--
-- Name: link_discipline_sport; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_discipline_sport (
    discipline_sport_hk character(32) NOT NULL,
    discipline_hk character(32) NOT NULL,
    sport_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_discipline_sport OWNER TO postgres;

--
-- Name: link_event_competition; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_event_competition (
    event_competition_hk character(32) NOT NULL,
    event_hk character(32) NOT NULL,
    competition_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_event_competition OWNER TO postgres;

--
-- Name: link_event_discipline; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_event_discipline (
    event_discipline_hk character(32) NOT NULL,
    event_hk character(32) NOT NULL,
    discipline_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_event_discipline OWNER TO postgres;

--
-- Name: link_event_judge; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_event_judge (
    event_judge_hk character(32) NOT NULL,
    event_hk character(32) NOT NULL,
    judge_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_event_judge OWNER TO postgres;

--
-- Name: link_event_participant; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_event_participant (
    event_participant_hk character(32) NOT NULL,
    event_hk character(32) NOT NULL,
    participant_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_event_participant OWNER TO postgres;

--
-- Name: link_event_team; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_event_team (
    event_team_hk character(32) NOT NULL,
    event_hk character(32) NOT NULL,
    team_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_event_team OWNER TO postgres;

--
-- Name: link_event_venue; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_event_venue (
    event_venue_hk character(32) NOT NULL,
    event_hk character(32) NOT NULL,
    venue_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_event_venue OWNER TO postgres;

--
-- Name: link_registration_event; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_registration_event (
    registration_event_hk character(32) NOT NULL,
    registration_hk character(32) NOT NULL,
    event_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_registration_event OWNER TO postgres;

--
-- Name: link_registration_participant; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_registration_participant (
    registration_participant_hk character(32) CONSTRAINT link_registration_participa_registration_participant_h_not_null NOT NULL,
    registration_hk character(32) NOT NULL,
    participant_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_registration_participant OWNER TO postgres;

--
-- Name: link_registration_team; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_registration_team (
    registration_team_hk character(32) NOT NULL,
    registration_hk character(32) NOT NULL,
    team_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_registration_team OWNER TO postgres;

--
-- Name: link_result_registration; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_result_registration (
    result_registration_hk character(32) NOT NULL,
    result_hk character(32) NOT NULL,
    registration_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_result_registration OWNER TO postgres;

--
-- Name: link_result_stage; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_result_stage (
    result_stage_hk character(32) NOT NULL,
    result_hk character(32) NOT NULL,
    stage_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_result_stage OWNER TO postgres;

--
-- Name: link_stage_event; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_stage_event (
    stage_event_hk character(32) NOT NULL,
    stage_hk character(32) NOT NULL,
    event_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_stage_event OWNER TO postgres;

--
-- Name: link_team_participant; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.link_team_participant (
    team_participant_hk character(32) NOT NULL,
    team_hk character(32) NOT NULL,
    participant_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.link_team_participant OWNER TO postgres;

--
-- Name: sat_competition; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_competition (
    competition_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    competition_name character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    organizer character varying(150) NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_competition OWNER TO postgres;

--
-- Name: sat_discipline; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_discipline (
    discipline_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    discipline_name character varying(100) NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_discipline OWNER TO postgres;

--
-- Name: sat_event; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_event (
    event_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    event_date date NOT NULL,
    event_time time without time zone NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_event OWNER TO postgres;

--
-- Name: sat_event_judge; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_event_judge (
    event_judge_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    judge_role character varying(100) NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_event_judge OWNER TO postgres;

--
-- Name: sat_judge; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_judge (
    judge_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    last_name character varying(100) NOT NULL,
    first_name character varying(100) NOT NULL,
    qualification character varying(100),
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_judge OWNER TO postgres;

--
-- Name: sat_participant; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_participant (
    participant_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    last_name character varying(100) NOT NULL,
    first_name character varying(100) NOT NULL,
    birth_date date,
    gender character varying(20),
    city character varying(100),
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_participant OWNER TO postgres;

--
-- Name: sat_registration; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_registration (
    registration_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    registration_date timestamp without time zone,
    status character varying(50),
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_registration OWNER TO postgres;

--
-- Name: sat_result; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_result (
    result_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    place integer,
    score numeric(10,2),
    result_status character varying(50),
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_result OWNER TO postgres;

--
-- Name: sat_sport; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_sport (
    sport_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    sport_name character varying(100) NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_sport OWNER TO postgres;

--
-- Name: sat_stage; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_stage (
    stage_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    stage_number integer,
    stage_name character varying(150),
    scheduled_at timestamp without time zone,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_stage OWNER TO postgres;

--
-- Name: sat_team; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_team (
    team_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    team_name character varying(150) NOT NULL,
    city character varying(100) NOT NULL,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_team OWNER TO postgres;

--
-- Name: sat_team_participant; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_team_participant (
    team_participant_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    joined_at date NOT NULL,
    left_at date,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_team_participant OWNER TO postgres;

--
-- Name: sat_venue; Type: TABLE; Schema: dv; Owner: postgres
--

CREATE TABLE dv.sat_venue (
    venue_hk character(32) NOT NULL,
    load_dts timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    load_end_dts timestamp without time zone,
    hashdiff character(32) NOT NULL,
    venue_name character varying(150) NOT NULL,
    address character varying(250) NOT NULL,
    capacity integer,
    record_source character varying(100) NOT NULL
);


ALTER TABLE dv.sat_venue OWNER TO postgres;

--
-- Name: competition_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.competition_events (
    event_id integer NOT NULL,
    competition_id integer NOT NULL,
    discipline_id integer NOT NULL,
    venue_id integer NOT NULL,
    event_date date NOT NULL,
    event_time time without time zone NOT NULL
);


ALTER TABLE public.competition_events OWNER TO postgres;

--
-- Name: competition_events_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.competition_events_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.competition_events_event_id_seq OWNER TO postgres;

--
-- Name: competition_events_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.competition_events_event_id_seq OWNED BY public.competition_events.event_id;


--
-- Name: competition_stages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.competition_stages (
    stage_id integer NOT NULL,
    event_id integer NOT NULL,
    stage_number integer NOT NULL,
    stage_name character varying(100) NOT NULL,
    scheduled_at timestamp without time zone
);


ALTER TABLE public.competition_stages OWNER TO postgres;

--
-- Name: competition_stages_stage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.competition_stages_stage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.competition_stages_stage_id_seq OWNER TO postgres;

--
-- Name: competition_stages_stage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.competition_stages_stage_id_seq OWNED BY public.competition_stages.stage_id;


--
-- Name: competitions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.competitions (
    competition_id integer NOT NULL,
    competition_name character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    organizer character varying(150) NOT NULL,
    CONSTRAINT competitions_check CHECK ((end_date >= start_date))
);


ALTER TABLE public.competitions OWNER TO postgres;

--
-- Name: competitions_competition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.competitions_competition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.competitions_competition_id_seq OWNER TO postgres;

--
-- Name: competitions_competition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.competitions_competition_id_seq OWNED BY public.competitions.competition_id;


--
-- Name: disciplines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disciplines (
    discipline_id integer NOT NULL,
    sport_id integer NOT NULL,
    discipline_name character varying(100) NOT NULL
);


ALTER TABLE public.disciplines OWNER TO postgres;

--
-- Name: disciplines_discipline_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.disciplines_discipline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.disciplines_discipline_id_seq OWNER TO postgres;

--
-- Name: disciplines_discipline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.disciplines_discipline_id_seq OWNED BY public.disciplines.discipline_id;


--
-- Name: event_judges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_judges (
    event_id integer NOT NULL,
    judge_id integer NOT NULL,
    judge_role character varying(100) NOT NULL
);


ALTER TABLE public.event_judges OWNER TO postgres;

--
-- Name: judges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.judges (
    judge_id integer NOT NULL,
    last_name character varying(100) NOT NULL,
    first_name character varying(100) NOT NULL,
    qualification character varying(100)
);


ALTER TABLE public.judges OWNER TO postgres;

--
-- Name: judges_judge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.judges_judge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.judges_judge_id_seq OWNER TO postgres;

--
-- Name: judges_judge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.judges_judge_id_seq OWNED BY public.judges.judge_id;


--
-- Name: participants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.participants (
    participant_id integer NOT NULL,
    last_name character varying(100) NOT NULL,
    first_name character varying(100) NOT NULL,
    birth_date date,
    gender character varying(20),
    city character varying(100)
);


ALTER TABLE public.participants OWNER TO postgres;

--
-- Name: participants_participant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.participants_participant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.participants_participant_id_seq OWNER TO postgres;

--
-- Name: participants_participant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.participants_participant_id_seq OWNED BY public.participants.participant_id;


--
-- Name: registrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.registrations (
    registration_id integer NOT NULL,
    event_id integer NOT NULL,
    participant_id integer,
    team_id integer,
    registration_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    status character varying(30) DEFAULT 'Подана'::character varying NOT NULL,
    CONSTRAINT registrations_check CHECK ((((participant_id IS NOT NULL) AND (team_id IS NULL)) OR ((participant_id IS NULL) AND (team_id IS NOT NULL))))
);


ALTER TABLE public.registrations OWNER TO postgres;

--
-- Name: registrations_registration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.registrations_registration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.registrations_registration_id_seq OWNER TO postgres;

--
-- Name: registrations_registration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.registrations_registration_id_seq OWNED BY public.registrations.registration_id;


--
-- Name: results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.results (
    result_id integer NOT NULL,
    stage_id integer NOT NULL,
    registration_id integer NOT NULL,
    place integer,
    score numeric(10,2),
    result_status character varying(50) DEFAULT 'Завершено'::character varying NOT NULL,
    CONSTRAINT results_place_check CHECK ((place > 0)),
    CONSTRAINT results_score_check CHECK ((score >= (0)::numeric))
);


ALTER TABLE public.results OWNER TO postgres;

--
-- Name: results_result_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.results_result_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.results_result_id_seq OWNER TO postgres;

--
-- Name: results_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.results_result_id_seq OWNED BY public.results.result_id;


--
-- Name: sports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sports (
    sport_id integer NOT NULL,
    sport_name character varying(100) NOT NULL
);


ALTER TABLE public.sports OWNER TO postgres;

--
-- Name: sports_sport_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sports_sport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sports_sport_id_seq OWNER TO postgres;

--
-- Name: sports_sport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sports_sport_id_seq OWNED BY public.sports.sport_id;


--
-- Name: team_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.team_members (
    team_id integer NOT NULL,
    participant_id integer NOT NULL,
    joined_at date NOT NULL,
    left_at date,
    CONSTRAINT team_members_check CHECK (((left_at IS NULL) OR (left_at >= joined_at)))
);


ALTER TABLE public.team_members OWNER TO postgres;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    team_name character varying(150) NOT NULL,
    city character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teams_team_id_seq OWNER TO postgres;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: venues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venues (
    venue_id integer NOT NULL,
    venue_name character varying(150) NOT NULL,
    address character varying(250) NOT NULL,
    capacity integer,
    CONSTRAINT venues_capacity_check CHECK ((capacity > 0))
);


ALTER TABLE public.venues OWNER TO postgres;

--
-- Name: venues_venue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venues_venue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.venues_venue_id_seq OWNER TO postgres;

--
-- Name: venues_venue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venues_venue_id_seq OWNED BY public.venues.venue_id;


--
-- Name: competition_events event_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competition_events ALTER COLUMN event_id SET DEFAULT nextval('public.competition_events_event_id_seq'::regclass);


--
-- Name: competition_stages stage_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competition_stages ALTER COLUMN stage_id SET DEFAULT nextval('public.competition_stages_stage_id_seq'::regclass);


--
-- Name: competitions competition_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competitions ALTER COLUMN competition_id SET DEFAULT nextval('public.competitions_competition_id_seq'::regclass);


--
-- Name: disciplines discipline_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines ALTER COLUMN discipline_id SET DEFAULT nextval('public.disciplines_discipline_id_seq'::regclass);


--
-- Name: judges judge_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.judges ALTER COLUMN judge_id SET DEFAULT nextval('public.judges_judge_id_seq'::regclass);


--
-- Name: participants participant_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participants ALTER COLUMN participant_id SET DEFAULT nextval('public.participants_participant_id_seq'::regclass);


--
-- Name: registrations registration_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registrations ALTER COLUMN registration_id SET DEFAULT nextval('public.registrations_registration_id_seq'::regclass);


--
-- Name: results result_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results ALTER COLUMN result_id SET DEFAULT nextval('public.results_result_id_seq'::regclass);


--
-- Name: sports sport_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sports ALTER COLUMN sport_id SET DEFAULT nextval('public.sports_sport_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Name: venues venue_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venues ALTER COLUMN venue_id SET DEFAULT nextval('public.venues_venue_id_seq'::regclass);


--
-- Data for Name: hub_competition; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_competition (competition_hk, competition_id, load_dts, record_source) FROM stdin;
37a603868f15954c4ec693dc7d9577fd	1	2026-11-09 20:48:05.235428	3NF
\.


--
-- Data for Name: hub_discipline; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_discipline (discipline_hk, discipline_id, load_dts, record_source) FROM stdin;
7e713384687a07c3d4eaee49879079e9	1	2026-11-09 20:48:05.235428	3NF
f976e92e743059c42092ae3e67cc58fa	2	2026-11-09 20:48:05.235428	3NF
b44aec4b0df938da8bab3d08d681e542	3	2026-11-09 20:48:05.235428	3NF
\.


--
-- Data for Name: hub_event; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_event (event_hk, event_id, load_dts, record_source) FROM stdin;
209207528f778c55bb71f44e99524d2f	1	2026-11-09 20:48:05.235428	3NF
91b214b320ae1b0ac3bf364b998ef960	2	2026-11-09 20:48:05.235428	3NF
1d3c00f789bf8e9ff99378cec04acbe5	3	2026-11-09 20:48:05.235428	3NF
\.


--
-- Data for Name: hub_judge; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_judge (judge_hk, judge_id, load_dts, record_source) FROM stdin;
172ee782342c1f866e1208ec03e85a76	1	2026-11-09 20:48:05.235428	3NF
aabe9945e5273ce0ce542d49e4dc7257	2	2026-11-09 20:48:05.235428	3NF
\.


--
-- Data for Name: hub_participant; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_participant (participant_hk, participant_id, load_dts, record_source) FROM stdin;
78078fc408603d08bcc43c5003a9559d	1	2026-11-09 20:48:05.235428	3NF
13535a748e1a7bc33473cf4cc241d655	2	2026-11-09 20:48:05.235428	3NF
dbaf28fca8fc158c7ecf7eefbb9f3ee0	3	2026-11-09 20:48:05.235428	3NF
\.


--
-- Data for Name: hub_registration; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_registration (registration_hk, registration_id, load_dts, record_source) FROM stdin;
f3b83e7650cf8ec9ab114b4e981151e7	1	2026-11-09 20:51:19.253234	3NF
cedaf28bbffb1154d68ac1ddb38ac6eb	2	2026-11-09 20:51:19.253234	3NF
1a142516dac6ec226b01479ec4cdea58	3	2026-11-09 20:51:19.253234	3NF
a6aa24739619826015d5e9e0f8aacd88	4	2026-11-09 20:51:19.253234	3NF
\.


--
-- Data for Name: hub_result; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_result (result_hk, result_id, load_dts, record_source) FROM stdin;
bb9ca3e807cb8f0bbdfa59196c520d66	1	2026-11-09 20:51:19.253234	3NF
d5c39aab4c6053a88df5cf93e47cb4b9	2	2026-11-09 20:51:19.253234	3NF
21461efe1c2c46547108ee98954bae54	3	2026-11-09 20:51:19.253234	3NF
d3807545f6eb679f6ab77b677c06e4fd	4	2026-11-09 20:51:19.253234	3NF
\.


--
-- Data for Name: hub_sport; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_sport (sport_hk, sport_id, load_dts, record_source) FROM stdin;
5262e12c98f8f7514658a3e985c3c9ca	1	2026-11-09 20:48:05.235428	3NF
b9b39eebe160ca4422eeec28576e9219	2	2026-11-09 20:48:05.235428	3NF
\.


--
-- Data for Name: hub_stage; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_stage (stage_hk, stage_id, load_dts, record_source) FROM stdin;
d569ba3ebd6b4af099f9e9c17c96536d	1	2026-11-09 20:51:19.253234	3NF
d60a254424e93abfe6e5ac16ce8ebb21	2	2026-11-09 20:51:19.253234	3NF
ace8bd041692c010360902bf97c79a9f	3	2026-11-09 20:51:19.253234	3NF
\.


--
-- Data for Name: hub_team; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_team (team_hk, team_id, load_dts, record_source) FROM stdin;
4695ba0d8921ae6842170b26bcb5c5ff	1	2026-11-09 20:48:05.235428	3NF
\.


--
-- Data for Name: hub_venue; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.hub_venue (venue_hk, venue_id, load_dts, record_source) FROM stdin;
7f09aeee19cc6bfdbe8c711e7edcb970	1	2026-11-09 20:48:05.235428	3NF
24a17c2715617fe93304fa9f4c3d32b1	2	2026-11-09 20:48:05.235428	3NF
\.


--
-- Data for Name: link_discipline_sport; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_discipline_sport (discipline_sport_hk, discipline_hk, sport_hk, load_dts, record_source) FROM stdin;
257e9676fbda20c5f477f29ad315e4b3	7e713384687a07c3d4eaee49879079e9	5262e12c98f8f7514658a3e985c3c9ca	2026-11-09 20:48:24.960961	3NF
e428ba078da1026c8ffed448858f618a	f976e92e743059c42092ae3e67cc58fa	b9b39eebe160ca4422eeec28576e9219	2026-11-09 20:48:24.960961	3NF
4fb651b65c84c7060f1adaf381db081e	b44aec4b0df938da8bab3d08d681e542	b9b39eebe160ca4422eeec28576e9219	2026-11-09 20:48:24.960961	3NF
\.


--
-- Data for Name: link_event_competition; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_event_competition (event_competition_hk, event_hk, competition_hk, load_dts, record_source) FROM stdin;
a6fb934d5d0dfb0fde7c89eb75e2b2e1	209207528f778c55bb71f44e99524d2f	37a603868f15954c4ec693dc7d9577fd	2026-11-09 20:48:24.960961	3NF
428fa156eef3764828a134a77458a92b	91b214b320ae1b0ac3bf364b998ef960	37a603868f15954c4ec693dc7d9577fd	2026-11-09 20:48:24.960961	3NF
48b4b4c0c92084968e851ba1cc0d3785	1d3c00f789bf8e9ff99378cec04acbe5	37a603868f15954c4ec693dc7d9577fd	2026-11-09 20:48:24.960961	3NF
\.


--
-- Data for Name: link_event_discipline; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_event_discipline (event_discipline_hk, event_hk, discipline_hk, load_dts, record_source) FROM stdin;
2b4819a2a775815c09f765a6eae0bfd4	209207528f778c55bb71f44e99524d2f	7e713384687a07c3d4eaee49879079e9	2026-11-09 20:48:24.960961	3NF
9530e8f0ecabddd4706c0a35fc1280a9	91b214b320ae1b0ac3bf364b998ef960	f976e92e743059c42092ae3e67cc58fa	2026-11-09 20:48:24.960961	3NF
e8a14eecf133eb80648dddc46826ecd1	1d3c00f789bf8e9ff99378cec04acbe5	b44aec4b0df938da8bab3d08d681e542	2026-11-09 20:48:24.960961	3NF
\.


--
-- Data for Name: link_event_judge; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_event_judge (event_judge_hk, event_hk, judge_hk, load_dts, record_source) FROM stdin;
974aa20a488bc984c71fee4b16ae1267	209207528f778c55bb71f44e99524d2f	172ee782342c1f866e1208ec03e85a76	2026-11-09 20:48:24.960961	3NF
d0271cf643a9d19f7f57b61008def2d3	91b214b320ae1b0ac3bf364b998ef960	aabe9945e5273ce0ce542d49e4dc7257	2026-11-09 20:48:24.960961	3NF
67b9796ee9eed85b5dbbd86da4c74d6f	1d3c00f789bf8e9ff99378cec04acbe5	aabe9945e5273ce0ce542d49e4dc7257	2026-11-09 20:48:24.960961	3NF
\.


--
-- Data for Name: link_event_participant; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_event_participant (event_participant_hk, event_hk, participant_hk, load_dts, record_source) FROM stdin;
ed14f997b007645ed5a7868956e8ac82	91b214b320ae1b0ac3bf364b998ef960	78078fc408603d08bcc43c5003a9559d	2026-11-09 20:48:24.960961	3NF
4e132f614ffad266fc0689ee94174610	1d3c00f789bf8e9ff99378cec04acbe5	dbaf28fca8fc158c7ecf7eefbb9f3ee0	2026-11-09 20:48:24.960961	3NF
7910b3c3f68990d57882c316ebeb0135	91b214b320ae1b0ac3bf364b998ef960	13535a748e1a7bc33473cf4cc241d655	2026-11-09 20:48:24.960961	3NF
\.


--
-- Data for Name: link_event_team; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_event_team (event_team_hk, event_hk, team_hk, load_dts, record_source) FROM stdin;
4df71f552aa125e8dbc31a757c3dea92	209207528f778c55bb71f44e99524d2f	4695ba0d8921ae6842170b26bcb5c5ff	2026-11-09 20:48:24.960961	3NF
\.


--
-- Data for Name: link_event_venue; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_event_venue (event_venue_hk, event_hk, venue_hk, load_dts, record_source) FROM stdin;
e844cf542f69c0589ff54d871ec58fb7	209207528f778c55bb71f44e99524d2f	7f09aeee19cc6bfdbe8c711e7edcb970	2026-11-09 20:48:24.960961	3NF
9effd0ffcd730de201c51a26a47e9bf3	91b214b320ae1b0ac3bf364b998ef960	24a17c2715617fe93304fa9f4c3d32b1	2026-11-09 20:48:24.960961	3NF
327b97cfb5e59a1aca3c165a6a8ca9f9	1d3c00f789bf8e9ff99378cec04acbe5	24a17c2715617fe93304fa9f4c3d32b1	2026-11-09 20:48:24.960961	3NF
\.


--
-- Data for Name: link_registration_event; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_registration_event (registration_event_hk, registration_hk, event_hk, load_dts, record_source) FROM stdin;
57e8c1e72bd422325e59d90b969b7599	f3b83e7650cf8ec9ab114b4e981151e7	209207528f778c55bb71f44e99524d2f	2026-11-09 20:52:13.554917	3NF
05034d64dc7b19d52b1a8e721c729dc9	cedaf28bbffb1154d68ac1ddb38ac6eb	91b214b320ae1b0ac3bf364b998ef960	2026-11-09 20:52:13.554917	3NF
c5e3dca2400f2e65db9b24d2bd42614d	1a142516dac6ec226b01479ec4cdea58	91b214b320ae1b0ac3bf364b998ef960	2026-11-09 20:52:13.554917	3NF
031a85561d5b7368c00946390abdbd5c	a6aa24739619826015d5e9e0f8aacd88	1d3c00f789bf8e9ff99378cec04acbe5	2026-11-09 20:52:13.554917	3NF
\.


--
-- Data for Name: link_registration_participant; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_registration_participant (registration_participant_hk, registration_hk, participant_hk, load_dts, record_source) FROM stdin;
b6bedb8d0a77ec80c2612cbbb911467f	cedaf28bbffb1154d68ac1ddb38ac6eb	78078fc408603d08bcc43c5003a9559d	2026-11-09 20:52:13.554917	3NF
cf56e65b318f1d4a2eaae0b743ecc789	1a142516dac6ec226b01479ec4cdea58	13535a748e1a7bc33473cf4cc241d655	2026-11-09 20:52:13.554917	3NF
0e5a90e17e38a4a2edddae8231eb1bff	a6aa24739619826015d5e9e0f8aacd88	dbaf28fca8fc158c7ecf7eefbb9f3ee0	2026-11-09 20:52:13.554917	3NF
\.


--
-- Data for Name: link_registration_team; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_registration_team (registration_team_hk, registration_hk, team_hk, load_dts, record_source) FROM stdin;
81e6c5bda103e14f2901a33b233cce8a	f3b83e7650cf8ec9ab114b4e981151e7	4695ba0d8921ae6842170b26bcb5c5ff	2026-11-09 20:52:13.554917	3NF
\.


--
-- Data for Name: link_result_registration; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_result_registration (result_registration_hk, result_hk, registration_hk, load_dts, record_source) FROM stdin;
c07bd3179106aca386d47c08e3db1d46	bb9ca3e807cb8f0bbdfa59196c520d66	f3b83e7650cf8ec9ab114b4e981151e7	2026-11-09 20:52:13.554917	3NF
bbe4f26f715560ad74302007090f599e	d5c39aab4c6053a88df5cf93e47cb4b9	cedaf28bbffb1154d68ac1ddb38ac6eb	2026-11-09 20:52:13.554917	3NF
a92de42121419e1a0d3e577668b256da	21461efe1c2c46547108ee98954bae54	1a142516dac6ec226b01479ec4cdea58	2026-11-09 20:52:13.554917	3NF
9727c3ef05108d4720bf68dd22d0066a	d3807545f6eb679f6ab77b677c06e4fd	a6aa24739619826015d5e9e0f8aacd88	2026-11-09 20:52:13.554917	3NF
\.


--
-- Data for Name: link_result_stage; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_result_stage (result_stage_hk, result_hk, stage_hk, load_dts, record_source) FROM stdin;
c921072b9e3ac4235a904f2d749b8af5	bb9ca3e807cb8f0bbdfa59196c520d66	d569ba3ebd6b4af099f9e9c17c96536d	2026-11-09 20:52:13.554917	3NF
ecd36f1021d4847179d881c58c51dc35	d5c39aab4c6053a88df5cf93e47cb4b9	d60a254424e93abfe6e5ac16ce8ebb21	2026-11-09 20:52:13.554917	3NF
2cb2d27b261a31f4dc4679b0f66c1fcb	21461efe1c2c46547108ee98954bae54	d60a254424e93abfe6e5ac16ce8ebb21	2026-11-09 20:52:13.554917	3NF
1c821d4e364cb4a3e026a124318d3786	d3807545f6eb679f6ab77b677c06e4fd	ace8bd041692c010360902bf97c79a9f	2026-11-09 20:52:13.554917	3NF
\.


--
-- Data for Name: link_stage_event; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_stage_event (stage_event_hk, stage_hk, event_hk, load_dts, record_source) FROM stdin;
2b3f6c2ee25a952508f6b496bc2de54e	d569ba3ebd6b4af099f9e9c17c96536d	209207528f778c55bb71f44e99524d2f	2026-11-09 20:52:13.554917	3NF
6788a183b85992445439b4e73dc0a311	d60a254424e93abfe6e5ac16ce8ebb21	91b214b320ae1b0ac3bf364b998ef960	2026-11-09 20:52:13.554917	3NF
b81c4d3b01d8134d3b7e857954eaa7c8	ace8bd041692c010360902bf97c79a9f	1d3c00f789bf8e9ff99378cec04acbe5	2026-11-09 20:52:13.554917	3NF
\.


--
-- Data for Name: link_team_participant; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.link_team_participant (team_participant_hk, team_hk, participant_hk, load_dts, record_source) FROM stdin;
3968e44807b15ddc99b29e9772c1b899	4695ba0d8921ae6842170b26bcb5c5ff	78078fc408603d08bcc43c5003a9559d	2026-11-09 20:48:24.960961	3NF
46240535436a1e02e122bf7b0ad41c59	4695ba0d8921ae6842170b26bcb5c5ff	13535a748e1a7bc33473cf4cc241d655	2026-11-09 20:48:24.960961	3NF
\.


--
-- Data for Name: sat_competition; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_competition (competition_hk, load_dts, load_end_dts, hashdiff, competition_name, city, start_date, end_date, organizer, record_source) FROM stdin;
37a603868f15954c4ec693dc7d9577fd	2026-11-09 20:48:45.399122	\N	a6c7f76f617cae02f301e93a3e483033	Летние городские спортивные игры	Москва	2026-06-10	2026-06-15	Городской спортивный комитет	3NF
\.


--
-- Data for Name: sat_discipline; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_discipline (discipline_hk, load_dts, load_end_dts, hashdiff, discipline_name, record_source) FROM stdin;
7e713384687a07c3d4eaee49879079e9	2026-11-09 20:48:45.399122	\N	30fe937ac219d5fc3ef4eebd2a381f14	Мини-футбол	3NF
f976e92e743059c42092ae3e67cc58fa	2026-11-09 20:48:45.399122	\N	c8c4633bd61beb9fc6776b91058845dd	Бег на 100 метров	3NF
b44aec4b0df938da8bab3d08d681e542	2026-11-09 20:48:45.399122	\N	5d3dca65963d275faf5d128ece5aa87e	Прыжки в длину	3NF
\.


--
-- Data for Name: sat_event; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_event (event_hk, load_dts, load_end_dts, hashdiff, event_date, event_time, record_source) FROM stdin;
209207528f778c55bb71f44e99524d2f	2026-11-09 20:48:45.399122	\N	b981d8b4e80971c042a11b2d6ed41ae4	2026-06-10	10:00:00	3NF
91b214b320ae1b0ac3bf364b998ef960	2026-11-09 20:48:45.399122	\N	997289a15d92914f2bfd685fe0cef7ff	2026-06-11	12:00:00	3NF
1d3c00f789bf8e9ff99378cec04acbe5	2026-11-09 20:48:45.399122	\N	1773a3beee4afee44cd9b7a7d9317b50	2026-06-12	14:00:00	3NF
\.


--
-- Data for Name: sat_event_judge; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_event_judge (event_judge_hk, load_dts, load_end_dts, hashdiff, judge_role, record_source) FROM stdin;
974aa20a488bc984c71fee4b16ae1267	2026-11-09 20:48:45.399122	\N	c3ac00df5e509dc27ee468a1dd167f63	Главный судья	3NF
d0271cf643a9d19f7f57b61008def2d3	2026-11-09 20:48:45.399122	\N	614efbd3dcbf4dfea4b48efa811563c6	Судья на дистанции	3NF
67b9796ee9eed85b5dbbd86da4c74d6f	2026-11-09 20:48:45.399122	\N	c3ac00df5e509dc27ee468a1dd167f63	Главный судья	3NF
\.


--
-- Data for Name: sat_judge; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_judge (judge_hk, load_dts, load_end_dts, hashdiff, last_name, first_name, qualification, record_source) FROM stdin;
172ee782342c1f866e1208ec03e85a76	2026-11-09 20:48:45.399122	\N	327dca008c963afa0c8749f15a7f1dbf	Смирнов	Игорь	Судья первой категории	3NF
aabe9945e5273ce0ce542d49e4dc7257	2026-11-09 20:48:45.399122	\N	9761ab4ddbf20b38dbef1df9a08119d8	Кузнецова	Мария	Судья высшей категории	3NF
\.


--
-- Data for Name: sat_participant; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_participant (participant_hk, load_dts, load_end_dts, hashdiff, last_name, first_name, birth_date, gender, city, record_source) FROM stdin;
78078fc408603d08bcc43c5003a9559d	2026-11-09 20:48:45.399122	\N	ca1335b98dc4fc18e0a2f01f688ac62f	Иванов	Алексей	2002-04-12	Мужской	Москва	3NF
13535a748e1a7bc33473cf4cc241d655	2026-11-09 20:48:45.399122	\N	01a0fddeeb06db1f738114799171ef8b	Петров	Дмитрий	2001-08-23	Мужской	Москва	3NF
dbaf28fca8fc158c7ecf7eefbb9f3ee0	2026-11-09 20:48:45.399122	\N	2ba87a34206ca1bcfd1bfd8f2edd81a9	Сидорова	Анна	2003-02-17	Женский	Москва	3NF
\.


--
-- Data for Name: sat_registration; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_registration (registration_hk, load_dts, load_end_dts, hashdiff, registration_date, status, record_source) FROM stdin;
f3b83e7650cf8ec9ab114b4e981151e7	2026-11-09 20:52:45.492146	\N	9ffc2208e8c0e5101e4d40c939b5dc91	2026-11-09 20:42:50.684	Подтверждена	3NF
cedaf28bbffb1154d68ac1ddb38ac6eb	2026-11-09 20:52:45.492146	\N	9ffc2208e8c0e5101e4d40c939b5dc91	2026-11-09 20:42:50.684	Подтверждена	3NF
1a142516dac6ec226b01479ec4cdea58	2026-11-09 20:52:45.492146	\N	9ffc2208e8c0e5101e4d40c939b5dc91	2026-11-09 20:42:50.684	Подтверждена	3NF
a6aa24739619826015d5e9e0f8aacd88	2026-11-09 20:52:45.492146	\N	9ffc2208e8c0e5101e4d40c939b5dc91	2026-11-09 20:42:50.684	Подтверждена	3NF
\.


--
-- Data for Name: sat_result; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_result (result_hk, load_dts, load_end_dts, hashdiff, place, score, result_status, record_source) FROM stdin;
bb9ca3e807cb8f0bbdfa59196c520d66	2026-11-09 20:52:45.492146	\N	463fcc0d69f90b039fe5fe29887a2920	1	3.00	Завершено	3NF
d5c39aab4c6053a88df5cf93e47cb4b9	2026-11-09 20:52:45.492146	\N	df97ea9fd87f2ea282fa578709b88647	1	11.45	Завершено	3NF
21461efe1c2c46547108ee98954bae54	2026-11-09 20:52:45.492146	\N	320374fcae39c90be6e480eb7e1444b9	2	11.82	Завершено	3NF
d3807545f6eb679f6ab77b677c06e4fd	2026-11-09 20:52:45.492146	\N	d945feac031b5ff96e953ce3a4eb9698	1	5.75	Завершено	3NF
\.


--
-- Data for Name: sat_sport; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_sport (sport_hk, load_dts, load_end_dts, hashdiff, sport_name, record_source) FROM stdin;
5262e12c98f8f7514658a3e985c3c9ca	2026-11-09 20:48:45.399122	\N	2e956d8db394e4d19f81cc7bb004f3d9	Футбол	3NF
b9b39eebe160ca4422eeec28576e9219	2026-11-09 20:48:45.399122	\N	681746a5dc4ff6029d20a282d160d4d7	Лёгкая атлетика	3NF
\.


--
-- Data for Name: sat_stage; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_stage (stage_hk, load_dts, load_end_dts, hashdiff, stage_number, stage_name, scheduled_at, record_source) FROM stdin;
d569ba3ebd6b4af099f9e9c17c96536d	2026-11-09 20:52:45.492146	\N	738ee381721dd1a36b6410d22e8ba8e9	1	Финал	2026-06-10 10:00:00	3NF
d60a254424e93abfe6e5ac16ce8ebb21	2026-11-09 20:52:45.492146	\N	f9ac2137f2d7518ce1266b4dcb806502	1	Квалификация	2026-06-11 12:00:00	3NF
ace8bd041692c010360902bf97c79a9f	2026-11-09 20:52:45.492146	\N	be1d86d9c3fd6e22389f314135a8a124	1	Финал	2026-06-12 14:00:00	3NF
\.


--
-- Data for Name: sat_team; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_team (team_hk, load_dts, load_end_dts, hashdiff, team_name, city, record_source) FROM stdin;
4695ba0d8921ae6842170b26bcb5c5ff	2026-11-09 20:48:45.399122	\N	38f544881d9a7952126cecc9e9766e0f	Олимп	Москва	3NF
\.


--
-- Data for Name: sat_team_participant; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_team_participant (team_participant_hk, load_dts, load_end_dts, hashdiff, joined_at, left_at, record_source) FROM stdin;
3968e44807b15ddc99b29e9772c1b899	2026-11-09 20:48:45.399122	\N	db29c2d8eff523020d38056466d97551	2026-05-01	\N	3NF
46240535436a1e02e122bf7b0ad41c59	2026-11-09 20:48:45.399122	\N	db29c2d8eff523020d38056466d97551	2026-05-01	\N	3NF
\.


--
-- Data for Name: sat_venue; Type: TABLE DATA; Schema: dv; Owner: postgres
--

COPY dv.sat_venue (venue_hk, load_dts, load_end_dts, hashdiff, venue_name, address, capacity, record_source) FROM stdin;
7f09aeee19cc6bfdbe8c711e7edcb970	2026-11-09 20:48:45.399122	\N	680ed81c268f5e4a17d48df393f757bb	Городской стадион	ул. Спортивная, 10	5000	3NF
24a17c2715617fe93304fa9f4c3d32b1	2026-11-09 20:48:45.399122	\N	6eeae55128eb9995edcfda68024cdedb	Спортивный комплекс	пр. Победы, 25	1500	3NF
\.


--
-- Data for Name: competition_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.competition_events (event_id, competition_id, discipline_id, venue_id, event_date, event_time) FROM stdin;
1	1	1	1	2026-06-10	10:00:00
2	1	2	2	2026-06-11	12:00:00
3	1	3	2	2026-06-12	14:00:00
\.


--
-- Data for Name: competition_stages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.competition_stages (stage_id, event_id, stage_number, stage_name, scheduled_at) FROM stdin;
1	1	1	Финал	2026-06-10 10:00:00
2	2	1	Квалификация	2026-06-11 12:00:00
3	3	1	Финал	2026-06-12 14:00:00
\.


--
-- Data for Name: competitions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.competitions (competition_id, competition_name, city, start_date, end_date, organizer) FROM stdin;
1	Летние городские спортивные игры	Москва	2026-06-10	2026-06-15	Городской спортивный комитет
\.


--
-- Data for Name: disciplines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disciplines (discipline_id, sport_id, discipline_name) FROM stdin;
1	1	Мини-футбол
2	2	Бег на 100 метров
3	2	Прыжки в длину
\.


--
-- Data for Name: event_judges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_judges (event_id, judge_id, judge_role) FROM stdin;
1	1	Главный судья
2	2	Судья на дистанции
3	2	Главный судья
\.


--
-- Data for Name: judges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.judges (judge_id, last_name, first_name, qualification) FROM stdin;
1	Смирнов	Игорь	Судья первой категории
2	Кузнецова	Мария	Судья высшей категории
\.


--
-- Data for Name: participants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.participants (participant_id, last_name, first_name, birth_date, gender, city) FROM stdin;
1	Иванов	Алексей	2002-04-12	Мужской	Москва
2	Петров	Дмитрий	2001-08-23	Мужской	Москва
3	Сидорова	Анна	2003-02-17	Женский	Москва
\.


--
-- Data for Name: registrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.registrations (registration_id, event_id, participant_id, team_id, registration_date, status) FROM stdin;
1	1	\N	1	2026-11-09 20:42:50.684	Подтверждена
2	2	1	\N	2026-11-09 20:42:50.684	Подтверждена
3	2	2	\N	2026-11-09 20:42:50.684	Подтверждена
4	3	3	\N	2026-11-09 20:42:50.684	Подтверждена
\.


--
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results (result_id, stage_id, registration_id, place, score, result_status) FROM stdin;
1	1	1	1	3.00	Завершено
2	2	2	1	11.45	Завершено
3	2	3	2	11.82	Завершено
4	3	4	1	5.75	Завершено
\.


--
-- Data for Name: sports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sports (sport_id, sport_name) FROM stdin;
1	Футбол
2	Лёгкая атлетика
\.


--
-- Data for Name: team_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.team_members (team_id, participant_id, joined_at, left_at) FROM stdin;
1	1	2026-05-01	\N
1	2	2026-05-01	\N
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (team_id, team_name, city) FROM stdin;
1	Олимп	Москва
\.


--
-- Data for Name: venues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venues (venue_id, venue_name, address, capacity) FROM stdin;
1	Городской стадион	ул. Спортивная, 10	5000
2	Спортивный комплекс	пр. Победы, 25	1500
\.


--
-- Name: competition_events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.competition_events_event_id_seq', 3, true);


--
-- Name: competition_stages_stage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.competition_stages_stage_id_seq', 3, true);


--
-- Name: competitions_competition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.competitions_competition_id_seq', 1, true);


--
-- Name: disciplines_discipline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.disciplines_discipline_id_seq', 3, true);


--
-- Name: judges_judge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.judges_judge_id_seq', 2, true);


--
-- Name: participants_participant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.participants_participant_id_seq', 3, true);


--
-- Name: registrations_registration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.registrations_registration_id_seq', 4, true);


--
-- Name: results_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.results_result_id_seq', 4, true);


--
-- Name: sports_sport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sports_sport_id_seq', 2, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1, true);


--
-- Name: venues_venue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venues_venue_id_seq', 2, true);


--
-- Name: hub_competition hub_competition_competition_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_competition
    ADD CONSTRAINT hub_competition_competition_id_key UNIQUE (competition_id);


--
-- Name: hub_competition hub_competition_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_competition
    ADD CONSTRAINT hub_competition_pkey PRIMARY KEY (competition_hk);


--
-- Name: hub_discipline hub_discipline_discipline_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_discipline
    ADD CONSTRAINT hub_discipline_discipline_id_key UNIQUE (discipline_id);


--
-- Name: hub_discipline hub_discipline_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_discipline
    ADD CONSTRAINT hub_discipline_pkey PRIMARY KEY (discipline_hk);


--
-- Name: hub_event hub_event_event_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_event
    ADD CONSTRAINT hub_event_event_id_key UNIQUE (event_id);


--
-- Name: hub_event hub_event_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_event
    ADD CONSTRAINT hub_event_pkey PRIMARY KEY (event_hk);


--
-- Name: hub_judge hub_judge_judge_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_judge
    ADD CONSTRAINT hub_judge_judge_id_key UNIQUE (judge_id);


--
-- Name: hub_judge hub_judge_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_judge
    ADD CONSTRAINT hub_judge_pkey PRIMARY KEY (judge_hk);


--
-- Name: hub_participant hub_participant_participant_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_participant
    ADD CONSTRAINT hub_participant_participant_id_key UNIQUE (participant_id);


--
-- Name: hub_participant hub_participant_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_participant
    ADD CONSTRAINT hub_participant_pkey PRIMARY KEY (participant_hk);


--
-- Name: hub_registration hub_registration_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_registration
    ADD CONSTRAINT hub_registration_pkey PRIMARY KEY (registration_hk);


--
-- Name: hub_registration hub_registration_registration_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_registration
    ADD CONSTRAINT hub_registration_registration_id_key UNIQUE (registration_id);


--
-- Name: hub_result hub_result_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_result
    ADD CONSTRAINT hub_result_pkey PRIMARY KEY (result_hk);


--
-- Name: hub_result hub_result_result_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_result
    ADD CONSTRAINT hub_result_result_id_key UNIQUE (result_id);


--
-- Name: hub_sport hub_sport_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_sport
    ADD CONSTRAINT hub_sport_pkey PRIMARY KEY (sport_hk);


--
-- Name: hub_sport hub_sport_sport_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_sport
    ADD CONSTRAINT hub_sport_sport_id_key UNIQUE (sport_id);


--
-- Name: hub_stage hub_stage_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_stage
    ADD CONSTRAINT hub_stage_pkey PRIMARY KEY (stage_hk);


--
-- Name: hub_stage hub_stage_stage_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_stage
    ADD CONSTRAINT hub_stage_stage_id_key UNIQUE (stage_id);


--
-- Name: hub_team hub_team_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_team
    ADD CONSTRAINT hub_team_pkey PRIMARY KEY (team_hk);


--
-- Name: hub_team hub_team_team_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_team
    ADD CONSTRAINT hub_team_team_id_key UNIQUE (team_id);


--
-- Name: hub_venue hub_venue_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_venue
    ADD CONSTRAINT hub_venue_pkey PRIMARY KEY (venue_hk);


--
-- Name: hub_venue hub_venue_venue_id_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.hub_venue
    ADD CONSTRAINT hub_venue_venue_id_key UNIQUE (venue_id);


--
-- Name: link_discipline_sport link_discipline_sport_discipline_hk_sport_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_discipline_sport
    ADD CONSTRAINT link_discipline_sport_discipline_hk_sport_hk_key UNIQUE (discipline_hk, sport_hk);


--
-- Name: link_discipline_sport link_discipline_sport_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_discipline_sport
    ADD CONSTRAINT link_discipline_sport_pkey PRIMARY KEY (discipline_sport_hk);


--
-- Name: link_event_competition link_event_competition_event_hk_competition_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_competition
    ADD CONSTRAINT link_event_competition_event_hk_competition_hk_key UNIQUE (event_hk, competition_hk);


--
-- Name: link_event_competition link_event_competition_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_competition
    ADD CONSTRAINT link_event_competition_pkey PRIMARY KEY (event_competition_hk);


--
-- Name: link_event_discipline link_event_discipline_event_hk_discipline_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_discipline
    ADD CONSTRAINT link_event_discipline_event_hk_discipline_hk_key UNIQUE (event_hk, discipline_hk);


--
-- Name: link_event_discipline link_event_discipline_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_discipline
    ADD CONSTRAINT link_event_discipline_pkey PRIMARY KEY (event_discipline_hk);


--
-- Name: link_event_judge link_event_judge_event_hk_judge_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_judge
    ADD CONSTRAINT link_event_judge_event_hk_judge_hk_key UNIQUE (event_hk, judge_hk);


--
-- Name: link_event_judge link_event_judge_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_judge
    ADD CONSTRAINT link_event_judge_pkey PRIMARY KEY (event_judge_hk);


--
-- Name: link_event_participant link_event_participant_event_hk_participant_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_participant
    ADD CONSTRAINT link_event_participant_event_hk_participant_hk_key UNIQUE (event_hk, participant_hk);


--
-- Name: link_event_participant link_event_participant_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_participant
    ADD CONSTRAINT link_event_participant_pkey PRIMARY KEY (event_participant_hk);


--
-- Name: link_event_team link_event_team_event_hk_team_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_team
    ADD CONSTRAINT link_event_team_event_hk_team_hk_key UNIQUE (event_hk, team_hk);


--
-- Name: link_event_team link_event_team_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_team
    ADD CONSTRAINT link_event_team_pkey PRIMARY KEY (event_team_hk);


--
-- Name: link_event_venue link_event_venue_event_hk_venue_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_venue
    ADD CONSTRAINT link_event_venue_event_hk_venue_hk_key UNIQUE (event_hk, venue_hk);


--
-- Name: link_event_venue link_event_venue_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_venue
    ADD CONSTRAINT link_event_venue_pkey PRIMARY KEY (event_venue_hk);


--
-- Name: link_registration_event link_registration_event_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_event
    ADD CONSTRAINT link_registration_event_pkey PRIMARY KEY (registration_event_hk);


--
-- Name: link_registration_event link_registration_event_registration_hk_event_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_event
    ADD CONSTRAINT link_registration_event_registration_hk_event_hk_key UNIQUE (registration_hk, event_hk);


--
-- Name: link_registration_participant link_registration_participant_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_participant
    ADD CONSTRAINT link_registration_participant_pkey PRIMARY KEY (registration_participant_hk);


--
-- Name: link_registration_participant link_registration_participant_registration_hk_participant_h_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_participant
    ADD CONSTRAINT link_registration_participant_registration_hk_participant_h_key UNIQUE (registration_hk, participant_hk);


--
-- Name: link_registration_team link_registration_team_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_team
    ADD CONSTRAINT link_registration_team_pkey PRIMARY KEY (registration_team_hk);


--
-- Name: link_registration_team link_registration_team_registration_hk_team_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_team
    ADD CONSTRAINT link_registration_team_registration_hk_team_hk_key UNIQUE (registration_hk, team_hk);


--
-- Name: link_result_registration link_result_registration_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_result_registration
    ADD CONSTRAINT link_result_registration_pkey PRIMARY KEY (result_registration_hk);


--
-- Name: link_result_registration link_result_registration_result_hk_registration_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_result_registration
    ADD CONSTRAINT link_result_registration_result_hk_registration_hk_key UNIQUE (result_hk, registration_hk);


--
-- Name: link_result_stage link_result_stage_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_result_stage
    ADD CONSTRAINT link_result_stage_pkey PRIMARY KEY (result_stage_hk);


--
-- Name: link_result_stage link_result_stage_result_hk_stage_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_result_stage
    ADD CONSTRAINT link_result_stage_result_hk_stage_hk_key UNIQUE (result_hk, stage_hk);


--
-- Name: link_stage_event link_stage_event_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_stage_event
    ADD CONSTRAINT link_stage_event_pkey PRIMARY KEY (stage_event_hk);


--
-- Name: link_stage_event link_stage_event_stage_hk_event_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_stage_event
    ADD CONSTRAINT link_stage_event_stage_hk_event_hk_key UNIQUE (stage_hk, event_hk);


--
-- Name: link_team_participant link_team_participant_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_team_participant
    ADD CONSTRAINT link_team_participant_pkey PRIMARY KEY (team_participant_hk);


--
-- Name: link_team_participant link_team_participant_team_hk_participant_hk_key; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_team_participant
    ADD CONSTRAINT link_team_participant_team_hk_participant_hk_key UNIQUE (team_hk, participant_hk);


--
-- Name: sat_competition sat_competition_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_competition
    ADD CONSTRAINT sat_competition_pkey PRIMARY KEY (competition_hk, load_dts);


--
-- Name: sat_discipline sat_discipline_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_discipline
    ADD CONSTRAINT sat_discipline_pkey PRIMARY KEY (discipline_hk, load_dts);


--
-- Name: sat_event_judge sat_event_judge_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_event_judge
    ADD CONSTRAINT sat_event_judge_pkey PRIMARY KEY (event_judge_hk, load_dts);


--
-- Name: sat_event sat_event_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_event
    ADD CONSTRAINT sat_event_pkey PRIMARY KEY (event_hk, load_dts);


--
-- Name: sat_judge sat_judge_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_judge
    ADD CONSTRAINT sat_judge_pkey PRIMARY KEY (judge_hk, load_dts);


--
-- Name: sat_participant sat_participant_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_participant
    ADD CONSTRAINT sat_participant_pkey PRIMARY KEY (participant_hk, load_dts);


--
-- Name: sat_registration sat_registration_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_registration
    ADD CONSTRAINT sat_registration_pkey PRIMARY KEY (registration_hk, load_dts);


--
-- Name: sat_result sat_result_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_result
    ADD CONSTRAINT sat_result_pkey PRIMARY KEY (result_hk, load_dts);


--
-- Name: sat_sport sat_sport_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_sport
    ADD CONSTRAINT sat_sport_pkey PRIMARY KEY (sport_hk, load_dts);


--
-- Name: sat_stage sat_stage_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_stage
    ADD CONSTRAINT sat_stage_pkey PRIMARY KEY (stage_hk, load_dts);


--
-- Name: sat_team_participant sat_team_participant_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_team_participant
    ADD CONSTRAINT sat_team_participant_pkey PRIMARY KEY (team_participant_hk, load_dts);


--
-- Name: sat_team sat_team_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_team
    ADD CONSTRAINT sat_team_pkey PRIMARY KEY (team_hk, load_dts);


--
-- Name: sat_venue sat_venue_pkey; Type: CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_venue
    ADD CONSTRAINT sat_venue_pkey PRIMARY KEY (venue_hk, load_dts);


--
-- Name: competition_events competition_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competition_events
    ADD CONSTRAINT competition_events_pkey PRIMARY KEY (event_id);


--
-- Name: competition_stages competition_stages_event_id_stage_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competition_stages
    ADD CONSTRAINT competition_stages_event_id_stage_number_key UNIQUE (event_id, stage_number);


--
-- Name: competition_stages competition_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competition_stages
    ADD CONSTRAINT competition_stages_pkey PRIMARY KEY (stage_id);


--
-- Name: competitions competitions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competitions
    ADD CONSTRAINT competitions_pkey PRIMARY KEY (competition_id);


--
-- Name: disciplines disciplines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_pkey PRIMARY KEY (discipline_id);


--
-- Name: disciplines disciplines_sport_id_discipline_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_sport_id_discipline_name_key UNIQUE (sport_id, discipline_name);


--
-- Name: event_judges event_judges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_judges
    ADD CONSTRAINT event_judges_pkey PRIMARY KEY (event_id, judge_id);


--
-- Name: judges judges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.judges
    ADD CONSTRAINT judges_pkey PRIMARY KEY (judge_id);


--
-- Name: participants participants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participants
    ADD CONSTRAINT participants_pkey PRIMARY KEY (participant_id);


--
-- Name: registrations registrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registrations
    ADD CONSTRAINT registrations_pkey PRIMARY KEY (registration_id);


--
-- Name: results results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_pkey PRIMARY KEY (result_id);


--
-- Name: results results_stage_id_registration_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_stage_id_registration_id_key UNIQUE (stage_id, registration_id);


--
-- Name: sports sports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sports
    ADD CONSTRAINT sports_pkey PRIMARY KEY (sport_id);


--
-- Name: sports sports_sport_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sports
    ADD CONSTRAINT sports_sport_name_key UNIQUE (sport_name);


--
-- Name: team_members team_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_pkey PRIMARY KEY (team_id, participant_id, joined_at);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams teams_team_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_team_name_key UNIQUE (team_name);


--
-- Name: venues venues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venues
    ADD CONSTRAINT venues_pkey PRIMARY KEY (venue_id);


--
-- Name: link_discipline_sport link_discipline_sport_discipline_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_discipline_sport
    ADD CONSTRAINT link_discipline_sport_discipline_hk_fkey FOREIGN KEY (discipline_hk) REFERENCES dv.hub_discipline(discipline_hk);


--
-- Name: link_discipline_sport link_discipline_sport_sport_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_discipline_sport
    ADD CONSTRAINT link_discipline_sport_sport_hk_fkey FOREIGN KEY (sport_hk) REFERENCES dv.hub_sport(sport_hk);


--
-- Name: link_event_competition link_event_competition_competition_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_competition
    ADD CONSTRAINT link_event_competition_competition_hk_fkey FOREIGN KEY (competition_hk) REFERENCES dv.hub_competition(competition_hk);


--
-- Name: link_event_competition link_event_competition_event_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_competition
    ADD CONSTRAINT link_event_competition_event_hk_fkey FOREIGN KEY (event_hk) REFERENCES dv.hub_event(event_hk);


--
-- Name: link_event_discipline link_event_discipline_discipline_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_discipline
    ADD CONSTRAINT link_event_discipline_discipline_hk_fkey FOREIGN KEY (discipline_hk) REFERENCES dv.hub_discipline(discipline_hk);


--
-- Name: link_event_discipline link_event_discipline_event_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_discipline
    ADD CONSTRAINT link_event_discipline_event_hk_fkey FOREIGN KEY (event_hk) REFERENCES dv.hub_event(event_hk);


--
-- Name: link_event_judge link_event_judge_event_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_judge
    ADD CONSTRAINT link_event_judge_event_hk_fkey FOREIGN KEY (event_hk) REFERENCES dv.hub_event(event_hk);


--
-- Name: link_event_judge link_event_judge_judge_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_judge
    ADD CONSTRAINT link_event_judge_judge_hk_fkey FOREIGN KEY (judge_hk) REFERENCES dv.hub_judge(judge_hk);


--
-- Name: link_event_participant link_event_participant_event_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_participant
    ADD CONSTRAINT link_event_participant_event_hk_fkey FOREIGN KEY (event_hk) REFERENCES dv.hub_event(event_hk);


--
-- Name: link_event_participant link_event_participant_participant_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_participant
    ADD CONSTRAINT link_event_participant_participant_hk_fkey FOREIGN KEY (participant_hk) REFERENCES dv.hub_participant(participant_hk);


--
-- Name: link_event_team link_event_team_event_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_team
    ADD CONSTRAINT link_event_team_event_hk_fkey FOREIGN KEY (event_hk) REFERENCES dv.hub_event(event_hk);


--
-- Name: link_event_team link_event_team_team_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_team
    ADD CONSTRAINT link_event_team_team_hk_fkey FOREIGN KEY (team_hk) REFERENCES dv.hub_team(team_hk);


--
-- Name: link_event_venue link_event_venue_event_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_venue
    ADD CONSTRAINT link_event_venue_event_hk_fkey FOREIGN KEY (event_hk) REFERENCES dv.hub_event(event_hk);


--
-- Name: link_event_venue link_event_venue_venue_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_event_venue
    ADD CONSTRAINT link_event_venue_venue_hk_fkey FOREIGN KEY (venue_hk) REFERENCES dv.hub_venue(venue_hk);


--
-- Name: link_registration_event link_registration_event_event_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_event
    ADD CONSTRAINT link_registration_event_event_hk_fkey FOREIGN KEY (event_hk) REFERENCES dv.hub_event(event_hk);


--
-- Name: link_registration_event link_registration_event_registration_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_event
    ADD CONSTRAINT link_registration_event_registration_hk_fkey FOREIGN KEY (registration_hk) REFERENCES dv.hub_registration(registration_hk);


--
-- Name: link_registration_participant link_registration_participant_participant_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_participant
    ADD CONSTRAINT link_registration_participant_participant_hk_fkey FOREIGN KEY (participant_hk) REFERENCES dv.hub_participant(participant_hk);


--
-- Name: link_registration_participant link_registration_participant_registration_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_participant
    ADD CONSTRAINT link_registration_participant_registration_hk_fkey FOREIGN KEY (registration_hk) REFERENCES dv.hub_registration(registration_hk);


--
-- Name: link_registration_team link_registration_team_registration_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_team
    ADD CONSTRAINT link_registration_team_registration_hk_fkey FOREIGN KEY (registration_hk) REFERENCES dv.hub_registration(registration_hk);


--
-- Name: link_registration_team link_registration_team_team_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_registration_team
    ADD CONSTRAINT link_registration_team_team_hk_fkey FOREIGN KEY (team_hk) REFERENCES dv.hub_team(team_hk);


--
-- Name: link_result_registration link_result_registration_registration_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_result_registration
    ADD CONSTRAINT link_result_registration_registration_hk_fkey FOREIGN KEY (registration_hk) REFERENCES dv.hub_registration(registration_hk);


--
-- Name: link_result_registration link_result_registration_result_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_result_registration
    ADD CONSTRAINT link_result_registration_result_hk_fkey FOREIGN KEY (result_hk) REFERENCES dv.hub_result(result_hk);


--
-- Name: link_result_stage link_result_stage_result_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_result_stage
    ADD CONSTRAINT link_result_stage_result_hk_fkey FOREIGN KEY (result_hk) REFERENCES dv.hub_result(result_hk);


--
-- Name: link_result_stage link_result_stage_stage_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_result_stage
    ADD CONSTRAINT link_result_stage_stage_hk_fkey FOREIGN KEY (stage_hk) REFERENCES dv.hub_stage(stage_hk);


--
-- Name: link_stage_event link_stage_event_event_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_stage_event
    ADD CONSTRAINT link_stage_event_event_hk_fkey FOREIGN KEY (event_hk) REFERENCES dv.hub_event(event_hk);


--
-- Name: link_stage_event link_stage_event_stage_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_stage_event
    ADD CONSTRAINT link_stage_event_stage_hk_fkey FOREIGN KEY (stage_hk) REFERENCES dv.hub_stage(stage_hk);


--
-- Name: link_team_participant link_team_participant_participant_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_team_participant
    ADD CONSTRAINT link_team_participant_participant_hk_fkey FOREIGN KEY (participant_hk) REFERENCES dv.hub_participant(participant_hk);


--
-- Name: link_team_participant link_team_participant_team_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.link_team_participant
    ADD CONSTRAINT link_team_participant_team_hk_fkey FOREIGN KEY (team_hk) REFERENCES dv.hub_team(team_hk);


--
-- Name: sat_competition sat_competition_competition_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_competition
    ADD CONSTRAINT sat_competition_competition_hk_fkey FOREIGN KEY (competition_hk) REFERENCES dv.hub_competition(competition_hk);


--
-- Name: sat_discipline sat_discipline_discipline_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_discipline
    ADD CONSTRAINT sat_discipline_discipline_hk_fkey FOREIGN KEY (discipline_hk) REFERENCES dv.hub_discipline(discipline_hk);


--
-- Name: sat_event sat_event_event_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_event
    ADD CONSTRAINT sat_event_event_hk_fkey FOREIGN KEY (event_hk) REFERENCES dv.hub_event(event_hk);


--
-- Name: sat_event_judge sat_event_judge_event_judge_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_event_judge
    ADD CONSTRAINT sat_event_judge_event_judge_hk_fkey FOREIGN KEY (event_judge_hk) REFERENCES dv.link_event_judge(event_judge_hk);


--
-- Name: sat_judge sat_judge_judge_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_judge
    ADD CONSTRAINT sat_judge_judge_hk_fkey FOREIGN KEY (judge_hk) REFERENCES dv.hub_judge(judge_hk);


--
-- Name: sat_participant sat_participant_participant_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_participant
    ADD CONSTRAINT sat_participant_participant_hk_fkey FOREIGN KEY (participant_hk) REFERENCES dv.hub_participant(participant_hk);


--
-- Name: sat_registration sat_registration_registration_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_registration
    ADD CONSTRAINT sat_registration_registration_hk_fkey FOREIGN KEY (registration_hk) REFERENCES dv.hub_registration(registration_hk);


--
-- Name: sat_result sat_result_result_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_result
    ADD CONSTRAINT sat_result_result_hk_fkey FOREIGN KEY (result_hk) REFERENCES dv.hub_result(result_hk);


--
-- Name: sat_sport sat_sport_sport_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_sport
    ADD CONSTRAINT sat_sport_sport_hk_fkey FOREIGN KEY (sport_hk) REFERENCES dv.hub_sport(sport_hk);


--
-- Name: sat_stage sat_stage_stage_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_stage
    ADD CONSTRAINT sat_stage_stage_hk_fkey FOREIGN KEY (stage_hk) REFERENCES dv.hub_stage(stage_hk);


--
-- Name: sat_team_participant sat_team_participant_team_participant_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_team_participant
    ADD CONSTRAINT sat_team_participant_team_participant_hk_fkey FOREIGN KEY (team_participant_hk) REFERENCES dv.link_team_participant(team_participant_hk);


--
-- Name: sat_team sat_team_team_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_team
    ADD CONSTRAINT sat_team_team_hk_fkey FOREIGN KEY (team_hk) REFERENCES dv.hub_team(team_hk);


--
-- Name: sat_venue sat_venue_venue_hk_fkey; Type: FK CONSTRAINT; Schema: dv; Owner: postgres
--

ALTER TABLE ONLY dv.sat_venue
    ADD CONSTRAINT sat_venue_venue_hk_fkey FOREIGN KEY (venue_hk) REFERENCES dv.hub_venue(venue_hk);


--
-- Name: competition_events competition_events_competition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competition_events
    ADD CONSTRAINT competition_events_competition_id_fkey FOREIGN KEY (competition_id) REFERENCES public.competitions(competition_id);


--
-- Name: competition_events competition_events_discipline_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competition_events
    ADD CONSTRAINT competition_events_discipline_id_fkey FOREIGN KEY (discipline_id) REFERENCES public.disciplines(discipline_id);


--
-- Name: competition_events competition_events_venue_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competition_events
    ADD CONSTRAINT competition_events_venue_id_fkey FOREIGN KEY (venue_id) REFERENCES public.venues(venue_id);


--
-- Name: competition_stages competition_stages_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.competition_stages
    ADD CONSTRAINT competition_stages_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.competition_events(event_id);


--
-- Name: disciplines disciplines_sport_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_sport_id_fkey FOREIGN KEY (sport_id) REFERENCES public.sports(sport_id);


--
-- Name: event_judges event_judges_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_judges
    ADD CONSTRAINT event_judges_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.competition_events(event_id);


--
-- Name: event_judges event_judges_judge_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_judges
    ADD CONSTRAINT event_judges_judge_id_fkey FOREIGN KEY (judge_id) REFERENCES public.judges(judge_id);


--
-- Name: registrations registrations_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registrations
    ADD CONSTRAINT registrations_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.competition_events(event_id);


--
-- Name: registrations registrations_participant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registrations
    ADD CONSTRAINT registrations_participant_id_fkey FOREIGN KEY (participant_id) REFERENCES public.participants(participant_id);


--
-- Name: registrations registrations_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.registrations
    ADD CONSTRAINT registrations_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


--
-- Name: results results_registration_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_registration_id_fkey FOREIGN KEY (registration_id) REFERENCES public.registrations(registration_id);


--
-- Name: results results_stage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.competition_stages(stage_id);


--
-- Name: team_members team_members_participant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_participant_id_fkey FOREIGN KEY (participant_id) REFERENCES public.participants(participant_id);


--
-- Name: team_members team_members_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.team_members
    ADD CONSTRAINT team_members_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

\unrestrict tdfSmBIG2c3CMLGcE9rBK10wGqunBs9B4rhr90a2MV1284GEoRVexp9ewTiksgI

