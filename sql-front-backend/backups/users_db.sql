--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13
-- Dumped by pg_dump version 15.13

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

ALTER TABLE IF EXISTS ONLY public.users_clues DROP CONSTRAINT IF EXISTS users_clues_users_user_id_fk;
ALTER TABLE IF EXISTS ONLY public.users_clues DROP CONSTRAINT IF EXISTS users_clues_tasks_task_global_id_fk;
ALTER TABLE IF EXISTS ONLY public.user_refresh_tokens DROP CONSTRAINT IF EXISTS user_refresh_tokens_users_user_id_fk;
ALTER TABLE IF EXISTS ONLY public.user_achievement_progress DROP CONSTRAINT IF EXISTS user_achievement_progress_users_user_id_fk;
ALTER TABLE IF EXISTS ONLY public.user_achievement_progress DROP CONSTRAINT IF EXISTS user_achievement_progress_achievements_achievement_id_fk;
ALTER TABLE IF EXISTS ONLY public.quest_tasks_solved DROP CONSTRAINT IF EXISTS quest_tasks_solved_user_id_fkey;
ALTER TABLE IF EXISTS ONLY public.users_achievements DROP CONSTRAINT IF EXISTS fk_users_user_id_to_users_achievements_user_id;
ALTER TABLE IF EXISTS ONLY public.user_progress DROP CONSTRAINT IF EXISTS fk_users_user_id_to_user_progress_user_id;
ALTER TABLE IF EXISTS ONLY public.tasks_solved DROP CONSTRAINT IF EXISTS fk_users_user_id_to_tasks_solved_user_id;
ALTER TABLE IF EXISTS ONLY public.password_hashes DROP CONSTRAINT IF EXISTS fk_users_user_id_to_password_hashes_user_id;
ALTER TABLE IF EXISTS ONLY public.tasks_solved DROP CONSTRAINT IF EXISTS fk_tasks_task_global_id_to_tasks_solved_task_global_id;
ALTER TABLE IF EXISTS ONLY public.users_achievements DROP CONSTRAINT IF EXISTS fk_achievements_achievement_id_to_users_achievements_achievemen;
DROP INDEX IF EXISTS public.user_events_timestamp_idx;
DROP INDEX IF EXISTS public.idx_users_quest_user_id;
DROP INDEX IF EXISTS public.idx_user_events_user;
DROP INDEX IF EXISTS public.idx_user_events_type;
DROP INDEX IF EXISTS public.idx_user_events_time;
DROP INDEX IF EXISTS public.idx_user_events_task;
DROP INDEX IF EXISTS public.idx_quest_tasks_solved_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_9_chunk_user_events_timestamp_idx;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_9_chunk_idx_user_events_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_9_chunk_idx_user_events_type;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_9_chunk_idx_user_events_task;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_6_chunk_user_events_timestamp_idx;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_6_chunk_idx_user_events_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_6_chunk_idx_user_events_type;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_6_chunk_idx_user_events_time;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_6_chunk_idx_user_events_task;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_5_chunk_user_events_timestamp_idx;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_5_chunk_idx_user_events_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_5_chunk_idx_user_events_type;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_5_chunk_idx_user_events_time;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_5_chunk_idx_user_events_task;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_4_chunk_user_events_timestamp_idx;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_4_chunk_idx_user_events_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_4_chunk_idx_user_events_type;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_4_chunk_idx_user_events_time;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_4_chunk_idx_user_events_task;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_3_chunk_user_events_timestamp_idx;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_3_chunk_idx_user_events_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_3_chunk_idx_user_events_type;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_3_chunk_idx_user_events_time;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_3_chunk_idx_user_events_task;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_2_chunk_user_events_timestamp_idx;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_2_chunk_idx_user_events_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_2_chunk_idx_user_events_type;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_2_chunk_idx_user_events_time;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_2_chunk_idx_user_events_task;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_1_chunk_user_events_timestamp_idx;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_1_chunk_idx_user_events_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_1_chunk_idx_user_events_type;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_1_chunk_idx_user_events_time;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_1_chunk_idx_user_events_task;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_11_chunk_user_events_timestamp_idx;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_11_chunk_idx_user_events_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_11_chunk_idx_user_events_type;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_11_chunk_idx_user_events_task;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_10_chunk_user_events_timestamp_idx;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_10_chunk_idx_user_events_user;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_10_chunk_idx_user_events_type;
DROP INDEX IF EXISTS _timescaledb_internal._hyper_1_10_chunk_idx_user_events_task;
ALTER TABLE IF EXISTS ONLY public.users_quest DROP CONSTRAINT IF EXISTS users_quest_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_login_key;
ALTER TABLE IF EXISTS ONLY public.users DROP CONSTRAINT IF EXISTS users_email_key;
ALTER TABLE IF EXISTS ONLY public.users_clues DROP CONSTRAINT IF EXISTS users_clues_pk;
ALTER TABLE IF EXISTS ONLY public.user_refresh_tokens DROP CONSTRAINT IF EXISTS user_refresh_tokens_refresh_token_key;
ALTER TABLE IF EXISTS ONLY public.user_refresh_tokens DROP CONSTRAINT IF EXISTS user_refresh_tokens_pk;
ALTER TABLE IF EXISTS ONLY public.user_progress DROP CONSTRAINT IF EXISTS user_progress_user_id_key;
ALTER TABLE IF EXISTS ONLY public.user_achievement_progress DROP CONSTRAINT IF EXISTS user_achievement_progress_pk;
ALTER TABLE IF EXISTS ONLY public.tasks DROP CONSTRAINT IF EXISTS tasks_pkey;
ALTER TABLE IF EXISTS ONLY public.schema_migrations DROP CONSTRAINT IF EXISTS schema_migrations_version_key;
ALTER TABLE IF EXISTS ONLY public.schema_migrations DROP CONSTRAINT IF EXISTS schema_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.quest_tasks_solved DROP CONSTRAINT IF EXISTS quest_tasks_solved_pkey;
ALTER TABLE IF EXISTS ONLY public.password_hashes DROP CONSTRAINT IF EXISTS password_hashes_user_id_key;
ALTER TABLE IF EXISTS ONLY public.achievements DROP CONSTRAINT IF EXISTS achievements_pkey;
ALTER TABLE IF EXISTS public.user_events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.schema_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.quest_tasks_solved ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_9_chunk ALTER COLUMN payload DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_9_chunk ALTER COLUMN "timestamp" DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_9_chunk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_6_chunk ALTER COLUMN payload DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_6_chunk ALTER COLUMN "timestamp" DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_6_chunk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_5_chunk ALTER COLUMN payload DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_5_chunk ALTER COLUMN "timestamp" DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_5_chunk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_4_chunk ALTER COLUMN payload DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_4_chunk ALTER COLUMN "timestamp" DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_4_chunk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_3_chunk ALTER COLUMN payload DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_3_chunk ALTER COLUMN "timestamp" DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_3_chunk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_2_chunk ALTER COLUMN payload DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_2_chunk ALTER COLUMN "timestamp" DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_2_chunk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_1_chunk ALTER COLUMN payload DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_1_chunk ALTER COLUMN "timestamp" DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_1_chunk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_11_chunk ALTER COLUMN payload DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_11_chunk ALTER COLUMN "timestamp" DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_11_chunk ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_10_chunk ALTER COLUMN payload DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_10_chunk ALTER COLUMN "timestamp" DROP DEFAULT;
ALTER TABLE IF EXISTS _timescaledb_internal._hyper_1_10_chunk ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.users_quest;
DROP TABLE IF EXISTS public.users_clues;
DROP TABLE IF EXISTS public.users_achievements;
DROP TABLE IF EXISTS public.users;
DROP SEQUENCE IF EXISTS public.users_user_id_seq;
DROP TABLE IF EXISTS public.user_refresh_tokens;
DROP TABLE IF EXISTS public.user_progress;
DROP SEQUENCE IF EXISTS public.user_events_id_seq;
DROP TABLE IF EXISTS public.user_achievement_progress;
DROP TABLE IF EXISTS public.tasks_solved;
DROP TABLE IF EXISTS public.tasks;
DROP SEQUENCE IF EXISTS public.tasks_task_global_id_seq;
DROP SEQUENCE IF EXISTS public.schema_migrations_id_seq;
DROP TABLE IF EXISTS public.schema_migrations;
DROP SEQUENCE IF EXISTS public.quest_tasks_solved_id_seq;
DROP TABLE IF EXISTS public.quest_tasks_solved;
DROP TABLE IF EXISTS public.password_hashes;
DROP TABLE IF EXISTS public.achievements;
DROP SEQUENCE IF EXISTS public.achievements_achievement_id_seq;
DROP TABLE IF EXISTS _timescaledb_internal._hyper_1_9_chunk;
DROP TABLE IF EXISTS _timescaledb_internal._hyper_1_6_chunk;
DROP TABLE IF EXISTS _timescaledb_internal._hyper_1_5_chunk;
DROP TABLE IF EXISTS _timescaledb_internal._hyper_1_4_chunk;
DROP TABLE IF EXISTS _timescaledb_internal._hyper_1_3_chunk;
DROP TABLE IF EXISTS _timescaledb_internal._hyper_1_2_chunk;
DROP TABLE IF EXISTS _timescaledb_internal._hyper_1_1_chunk;
DROP TABLE IF EXISTS _timescaledb_internal._hyper_1_11_chunk;
DROP TABLE IF EXISTS _timescaledb_internal._hyper_1_10_chunk;
DROP TABLE IF EXISTS public.user_events;
DROP EXTENSION IF EXISTS timescaledb;
--
-- Name: timescaledb; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS timescaledb WITH SCHEMA public;


--
-- Name: EXTENSION timescaledb; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION timescaledb IS 'Enables scalable inserts and complex queries for time-series data (Community Edition)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: user_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_events (
    id bigint NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    user_id integer NOT NULL,
    task_id integer,
    event_type text NOT NULL,
    payload jsonb DEFAULT '{}'::jsonb
);


ALTER TABLE public.user_events OWNER TO postgres;

--
-- Name: _hyper_1_10_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_1_10_chunk (
    CONSTRAINT constraint_10 CHECK ((("timestamp" >= '2026-10-29 00:00:00+00'::timestamp with time zone) AND ("timestamp" < '2026-11-05 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.user_events);


ALTER TABLE _timescaledb_internal._hyper_1_10_chunk OWNER TO postgres;

--
-- Name: _hyper_1_11_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_1_11_chunk (
    CONSTRAINT constraint_11 CHECK ((("timestamp" >= '2026-11-05 00:00:00+00'::timestamp with time zone) AND ("timestamp" < '2026-11-12 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.user_events);


ALTER TABLE _timescaledb_internal._hyper_1_11_chunk OWNER TO postgres;

--
-- Name: _hyper_1_1_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_1_1_chunk (
    CONSTRAINT constraint_1 CHECK ((("timestamp" >= '2026-09-03 00:00:00+00'::timestamp with time zone) AND ("timestamp" < '2026-09-10 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.user_events);


ALTER TABLE _timescaledb_internal._hyper_1_1_chunk OWNER TO postgres;

--
-- Name: _hyper_1_2_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_1_2_chunk (
    CONSTRAINT constraint_2 CHECK ((("timestamp" >= '2026-09-10 00:00:00+00'::timestamp with time zone) AND ("timestamp" < '2026-09-17 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.user_events);


ALTER TABLE _timescaledb_internal._hyper_1_2_chunk OWNER TO postgres;

--
-- Name: _hyper_1_3_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_1_3_chunk (
    CONSTRAINT constraint_3 CHECK ((("timestamp" >= '2026-09-17 00:00:00+00'::timestamp with time zone) AND ("timestamp" < '2026-09-24 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.user_events);


ALTER TABLE _timescaledb_internal._hyper_1_3_chunk OWNER TO postgres;

--
-- Name: _hyper_1_4_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_1_4_chunk (
    CONSTRAINT constraint_4 CHECK ((("timestamp" >= '2026-09-24 00:00:00+00'::timestamp with time zone) AND ("timestamp" < '2026-10-01 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.user_events);


ALTER TABLE _timescaledb_internal._hyper_1_4_chunk OWNER TO postgres;

--
-- Name: _hyper_1_5_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_1_5_chunk (
    CONSTRAINT constraint_5 CHECK ((("timestamp" >= '2026-10-01 00:00:00+00'::timestamp with time zone) AND ("timestamp" < '2026-10-08 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.user_events);


ALTER TABLE _timescaledb_internal._hyper_1_5_chunk OWNER TO postgres;

--
-- Name: _hyper_1_6_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_1_6_chunk (
    CONSTRAINT constraint_6 CHECK ((("timestamp" >= '2026-10-08 00:00:00+00'::timestamp with time zone) AND ("timestamp" < '2026-10-15 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.user_events);


ALTER TABLE _timescaledb_internal._hyper_1_6_chunk OWNER TO postgres;

--
-- Name: _hyper_1_9_chunk; Type: TABLE; Schema: _timescaledb_internal; Owner: postgres
--

CREATE TABLE _timescaledb_internal._hyper_1_9_chunk (
    CONSTRAINT constraint_9 CHECK ((("timestamp" >= '2026-10-22 00:00:00+00'::timestamp with time zone) AND ("timestamp" < '2026-10-29 00:00:00+00'::timestamp with time zone)))
)
INHERITS (public.user_events);


ALTER TABLE _timescaledb_internal._hyper_1_9_chunk OWNER TO postgres;

--
-- Name: achievements_achievement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.achievements_achievement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.achievements_achievement_id_seq OWNER TO postgres;

--
-- Name: achievements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.achievements (
    achievement_id integer DEFAULT nextval('public.achievements_achievement_id_seq'::regclass) NOT NULL,
    category_name character varying NOT NULL,
    icon character varying NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    historical_info character varying NOT NULL,
    tag character varying,
    required_count integer
);


ALTER TABLE public.achievements OWNER TO postgres;

--
-- Name: password_hashes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_hashes (
    user_id integer NOT NULL,
    password_hash character varying NOT NULL
);


ALTER TABLE public.password_hashes OWNER TO postgres;

--
-- Name: quest_tasks_solved; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quest_tasks_solved (
    id integer NOT NULL,
    user_id integer NOT NULL,
    quest_id character varying NOT NULL,
    scene_id character varying NOT NULL,
    user_query text,
    created_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.quest_tasks_solved OWNER TO postgres;

--
-- Name: quest_tasks_solved_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quest_tasks_solved_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quest_tasks_solved_id_seq OWNER TO postgres;

--
-- Name: quest_tasks_solved_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quest_tasks_solved_id_seq OWNED BY public.quest_tasks_solved.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    id integer NOT NULL,
    version character varying(255) NOT NULL,
    applied_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: schema_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schema_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schema_migrations_id_seq OWNER TO postgres;

--
-- Name: schema_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schema_migrations_id_seq OWNED BY public.schema_migrations.id;


--
-- Name: tasks_task_global_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tasks_task_global_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_task_global_id_seq OWNER TO postgres;

--
-- Name: tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasks (
    task_global_id integer DEFAULT nextval('public.tasks_task_global_id_seq'::regclass) NOT NULL,
    mission_id integer NOT NULL,
    task_id integer NOT NULL,
    title character varying NOT NULL,
    description character varying NOT NULL,
    clue character varying NOT NULL,
    correct_query text,
    expected_result jsonb,
    tags character varying[]
);


ALTER TABLE public.tasks OWNER TO postgres;

--
-- Name: tasks_solved; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasks_solved (
    user_id integer NOT NULL,
    task_global_id integer NOT NULL,
    solved_at date,
    user_query text,
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.tasks_solved OWNER TO postgres;

--
-- Name: user_achievement_progress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_achievement_progress (
    user_id integer NOT NULL,
    achievement_id integer NOT NULL,
    current_count integer DEFAULT 0
);


ALTER TABLE public.user_achievement_progress OWNER TO postgres;

--
-- Name: user_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_events_id_seq OWNER TO postgres;

--
-- Name: user_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_events_id_seq OWNED BY public.user_events.id;


--
-- Name: user_progress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_progress (
    user_id integer NOT NULL,
    easy_tasks_solved integer DEFAULT 0,
    medium_tasks_solved integer DEFAULT 0,
    hard_tasks_solved integer DEFAULT 0
);


ALTER TABLE public.user_progress OWNER TO postgres;

--
-- Name: user_refresh_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_refresh_tokens (
    user_id integer NOT NULL,
    refresh_token character varying NOT NULL,
    expires_at date NOT NULL,
    created_at date
);


ALTER TABLE public.user_refresh_tokens OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer DEFAULT nextval('public.users_user_id_seq'::regclass) NOT NULL,
    login character varying NOT NULL,
    email character varying NOT NULL,
    fullname character varying NOT NULL,
    "group" character varying NOT NULL,
    total_score integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_achievements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_achievements (
    user_id integer NOT NULL,
    achievement_id integer NOT NULL
);


ALTER TABLE public.users_achievements OWNER TO postgres;

--
-- Name: users_clues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_clues (
    user_id integer NOT NULL,
    task_global_id integer NOT NULL,
    clue_type integer NOT NULL
);


ALTER TABLE public.users_clues OWNER TO postgres;

--
-- Name: users_quest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_quest (
    user_id integer NOT NULL,
    quest_id text NOT NULL,
    current_scene_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    completed_at timestamp with time zone
);


ALTER TABLE public.users_quest OWNER TO postgres;

--
-- Name: _hyper_1_10_chunk id; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_10_chunk ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: _hyper_1_10_chunk timestamp; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_10_chunk ALTER COLUMN "timestamp" SET DEFAULT now();


--
-- Name: _hyper_1_10_chunk payload; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_10_chunk ALTER COLUMN payload SET DEFAULT '{}'::jsonb;


--
-- Name: _hyper_1_11_chunk id; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_11_chunk ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: _hyper_1_11_chunk timestamp; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_11_chunk ALTER COLUMN "timestamp" SET DEFAULT now();


--
-- Name: _hyper_1_11_chunk payload; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_11_chunk ALTER COLUMN payload SET DEFAULT '{}'::jsonb;


--
-- Name: _hyper_1_1_chunk id; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_1_chunk ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: _hyper_1_1_chunk timestamp; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_1_chunk ALTER COLUMN "timestamp" SET DEFAULT now();


--
-- Name: _hyper_1_1_chunk payload; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_1_chunk ALTER COLUMN payload SET DEFAULT '{}'::jsonb;


--
-- Name: _hyper_1_2_chunk id; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_2_chunk ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: _hyper_1_2_chunk timestamp; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_2_chunk ALTER COLUMN "timestamp" SET DEFAULT now();


--
-- Name: _hyper_1_2_chunk payload; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_2_chunk ALTER COLUMN payload SET DEFAULT '{}'::jsonb;


--
-- Name: _hyper_1_3_chunk id; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_3_chunk ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: _hyper_1_3_chunk timestamp; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_3_chunk ALTER COLUMN "timestamp" SET DEFAULT now();


--
-- Name: _hyper_1_3_chunk payload; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_3_chunk ALTER COLUMN payload SET DEFAULT '{}'::jsonb;


--
-- Name: _hyper_1_4_chunk id; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_4_chunk ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: _hyper_1_4_chunk timestamp; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_4_chunk ALTER COLUMN "timestamp" SET DEFAULT now();


--
-- Name: _hyper_1_4_chunk payload; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_4_chunk ALTER COLUMN payload SET DEFAULT '{}'::jsonb;


--
-- Name: _hyper_1_5_chunk id; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_5_chunk ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: _hyper_1_5_chunk timestamp; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_5_chunk ALTER COLUMN "timestamp" SET DEFAULT now();


--
-- Name: _hyper_1_5_chunk payload; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_5_chunk ALTER COLUMN payload SET DEFAULT '{}'::jsonb;


--
-- Name: _hyper_1_6_chunk id; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_6_chunk ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: _hyper_1_6_chunk timestamp; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_6_chunk ALTER COLUMN "timestamp" SET DEFAULT now();


--
-- Name: _hyper_1_6_chunk payload; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_6_chunk ALTER COLUMN payload SET DEFAULT '{}'::jsonb;


--
-- Name: _hyper_1_9_chunk id; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_9_chunk ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: _hyper_1_9_chunk timestamp; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_9_chunk ALTER COLUMN "timestamp" SET DEFAULT now();


--
-- Name: _hyper_1_9_chunk payload; Type: DEFAULT; Schema: _timescaledb_internal; Owner: postgres
--

ALTER TABLE ONLY _timescaledb_internal._hyper_1_9_chunk ALTER COLUMN payload SET DEFAULT '{}'::jsonb;


--
-- Name: quest_tasks_solved id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quest_tasks_solved ALTER COLUMN id SET DEFAULT nextval('public.quest_tasks_solved_id_seq'::regclass);


--
-- Name: schema_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations ALTER COLUMN id SET DEFAULT nextval('public.schema_migrations_id_seq'::regclass);


--
-- Name: user_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_events ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Data for Name: hypertable; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.hypertable (id, schema_name, table_name, associated_schema_name, associated_table_prefix, num_dimensions, chunk_sizing_func_schema, chunk_sizing_func_name, chunk_target_size, compression_state, compressed_hypertable_id, status) FROM stdin;
1	public	user_events	_timescaledb_internal	_hyper_1	1	_timescaledb_functions	calculate_chunk_interval	0	0	\N	0
\.


--
-- Data for Name: bgw_job; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.bgw_job (id, application_name, schedule_interval, max_runtime, max_retries, retry_period, proc_schema, proc_name, owner, scheduled, fixed_schedule, initial_start, hypertable_id, config, check_schema, check_name, timezone) FROM stdin;
\.


--
-- Data for Name: chunk; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.chunk (id, hypertable_id, schema_name, table_name, compressed_chunk_id, status, osm_chunk, creation_time) FROM stdin;
1	1	_timescaledb_internal	_hyper_1_1_chunk	\N	0	f	2026-10-13 08:30:33.620242+00
2	1	_timescaledb_internal	_hyper_1_2_chunk	\N	0	f	2026-10-13 08:30:33.734825+00
3	1	_timescaledb_internal	_hyper_1_3_chunk	\N	0	f	2026-10-13 08:30:33.985874+00
4	1	_timescaledb_internal	_hyper_1_4_chunk	\N	0	f	2026-10-13 08:30:34.308753+00
5	1	_timescaledb_internal	_hyper_1_5_chunk	\N	0	f	2026-10-13 08:30:42.173752+00
6	1	_timescaledb_internal	_hyper_1_6_chunk	\N	0	f	2026-10-13 08:30:42.212791+00
9	1	_timescaledb_internal	_hyper_1_9_chunk	\N	0	f	2026-10-23 07:55:45.816172+00
10	1	_timescaledb_internal	_hyper_1_10_chunk	\N	0	f	2026-10-31 13:15:58.419813+00
11	1	_timescaledb_internal	_hyper_1_11_chunk	\N	0	f	2026-11-05 19:58:16.635071+00
\.


--
-- Data for Name: chunk_column_stats; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.chunk_column_stats (id, hypertable_id, chunk_id, column_name, range_start, range_end, valid) FROM stdin;
\.


--
-- Data for Name: dimension; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.dimension (id, hypertable_id, column_name, column_type, aligned, num_slices, partitioning_func_schema, partitioning_func, interval_length, compress_interval_length, integer_now_func_schema, integer_now_func) FROM stdin;
1	1	timestamp	timestamp with time zone	t	\N	\N	\N	604800000000	\N	\N	\N
\.


--
-- Data for Name: dimension_slice; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.dimension_slice (id, dimension_id, range_start, range_end) FROM stdin;
1	1	1788393600000000	1788998400000000
2	1	1788998400000000	1789603200000000
3	1	1789603200000000	1790208000000000
4	1	1790208000000000	1790812800000000
5	1	1790812800000000	1791417600000000
6	1	1791417600000000	1792022400000000
9	1	1792627200000000	1793232000000000
10	1	1793232000000000	1793836800000000
11	1	1793836800000000	1794441600000000
\.


--
-- Data for Name: chunk_constraint; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.chunk_constraint (chunk_id, dimension_slice_id, constraint_name, hypertable_constraint_name) FROM stdin;
1	1	constraint_1	\N
2	2	constraint_2	\N
3	3	constraint_3	\N
4	4	constraint_4	\N
5	5	constraint_5	\N
6	6	constraint_6	\N
9	9	constraint_9	\N
10	10	constraint_10	\N
11	11	constraint_11	\N
\.


--
-- Data for Name: compression_chunk_size; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.compression_chunk_size (chunk_id, compressed_chunk_id, uncompressed_heap_size, uncompressed_toast_size, uncompressed_index_size, compressed_heap_size, compressed_toast_size, compressed_index_size, numrows_pre_compression, numrows_post_compression, numrows_frozen_immediately) FROM stdin;
\.


--
-- Data for Name: compression_settings; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.compression_settings (relid, compress_relid, segmentby, orderby, orderby_desc, orderby_nullsfirst, index) FROM stdin;
\.


--
-- Data for Name: continuous_agg; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_agg (mat_hypertable_id, raw_hypertable_id, parent_mat_hypertable_id, user_view_schema, user_view_name, partial_view_schema, partial_view_name, direct_view_schema, direct_view_name, materialized_only) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_bucket_function; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_aggs_bucket_function (mat_hypertable_id, bucket_func, bucket_width, bucket_origin, bucket_offset, bucket_timezone, bucket_fixed_width) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_hypertable_invalidation_log; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_aggs_hypertable_invalidation_log (hypertable_id, lowest_modified_value, greatest_modified_value) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_invalidation_threshold; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_aggs_invalidation_threshold (hypertable_id, watermark) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_materialization_invalidation_log; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_aggs_materialization_invalidation_log (materialization_id, lowest_modified_value, greatest_modified_value) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_materialization_ranges; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_aggs_materialization_ranges (materialization_id, lowest_modified_value, greatest_modified_value) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_watermark; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_aggs_watermark (mat_hypertable_id, watermark) FROM stdin;
\.


--
-- Data for Name: metadata; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.metadata (key, value, include_in_telemetry) FROM stdin;
install_timestamp	2026-10-13 08:30:31.35394+00	t
timescaledb_version	2.26.1	f
exported_uuid	5258eaed-7aba-4d5f-a143-96cea2364984	t
\.


--
-- Data for Name: tablespace; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.tablespace (id, hypertable_id, tablespace_name) FROM stdin;
\.


--
-- Data for Name: _hyper_1_10_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: postgres
--

COPY _timescaledb_internal._hyper_1_10_chunk (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: _hyper_1_11_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: postgres
--

COPY _timescaledb_internal._hyper_1_11_chunk (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: _hyper_1_1_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: postgres
--

COPY _timescaledb_internal._hyper_1_1_chunk (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: _hyper_1_2_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: postgres
--

COPY _timescaledb_internal._hyper_1_2_chunk (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: _hyper_1_3_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: postgres
--

COPY _timescaledb_internal._hyper_1_3_chunk (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: _hyper_1_4_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: postgres
--

COPY _timescaledb_internal._hyper_1_4_chunk (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: _hyper_1_5_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: postgres
--

COPY _timescaledb_internal._hyper_1_5_chunk (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: _hyper_1_6_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: postgres
--

COPY _timescaledb_internal._hyper_1_6_chunk (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: _hyper_1_9_chunk; Type: TABLE DATA; Schema: _timescaledb_internal; Owner: postgres
--

COPY _timescaledb_internal._hyper_1_9_chunk (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: achievements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.achievements (achievement_id, category_name, icon, name, description, historical_info, tag, required_count) FROM stdin;
6	Техническое мастерство	🧩	CTE Специалист	Решить 3 задачи с использованием рекурсивных CTE	Рекурсивные операции, как партизанские сети, требуют глубокого планирования	cte	3
3	Боевые достижения	🗺	Опытный командир	Решить 20 задач нормальной сложности	Как командующие фронтами, вы учитесь принимать решения под давлением	medium	20
8	Исторические подвиги	🏆	Блокадный Ленинград	Решить 5 задач на логистику и распределение ресурсов	125 граммов хлеба в день — так жил Ленинград. Ваши расчеты спасают жизни!	supply	5
5	Техническое мастерство	🔍	Мастер оконных функций	Использовать RANK(), LAG(), и SUM() OVER() в 5 разных задачах	Анализ данных — это современная артиллерия. Точный расчет решает исход битвы!	window	5
7	Исторические подвиги	🏙	Защитник Сталинграда	Решить все задачи, связанные со Сталинградской битвой	200 дней мужества. Вы защитили город, как это делали герои 1943 года!	stalingrad	5
1	Боевые достижения	🎖	Первая кровь	Решить первую задачу любого уровня	Первый шаг к победе - самый важный. Так начинался путь многих героев ВОВ	first_any_level	1
10	Боевые достижения	📈	Стратег Победы	Решить 10 задач, связанных с анализом эффективности военных операций	Великие полководцы, как Жуков и Рокоссовский, строили победы на точных расчётах. Теперь и ваш анализ ведёт к успеху!	efficiency	10
4	Боевые достижения	🏅	Ветеран SQL-фронта	Решить 15 сложных задач	Сложные миссии требуют мастерства. Вы достойны звания ветерана!	hard	15
2	Боевые достижения	📜	Стратег-новичок	Решить 10 легких задач	В 1941 году советские солдаты учились воевать в тяжелейших условиях. Ты на верном пути!	easy	10
9	Исторические подвиги	🚩	Освободитель Берлина	Завершить все миссии финального этапа войны	Знамя Победы над Рейхстагом — ваш код водружает его снова!	final	15
\.


--
-- Data for Name: password_hashes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_hashes (user_id, password_hash) FROM stdin;
\.


--
-- Data for Name: quest_tasks_solved; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quest_tasks_solved (id, user_id, quest_id, scene_id, user_query, created_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (id, version, applied_at) FROM stdin;
1	001_sync_tasks_and_tables.sql	2026-10-13 12:54:50.8661+00
2	002_fix_curriculum_duplicates.sql	2026-10-13 12:54:50.8661+00
3	002_user_events_task_id_nullable.sql	2026-10-23 07:57:22.977154+00
4	003_fix_curriculum_duplicates.sql	2026-10-31 13:12:27.278594+00
5	004_feedback_fixes.sql	2026-10-31 13:53:47.885847+00
6	005_fix_task_0_25.sql	2026-10-31 14:58:43.848919+00
7	006_mission_3_clue_syntax.sql	2026-10-31 15:00:42.475759+00
8	007_standardize_output_columns.sql	2026-10-31 15:24:28.315383+00
9	008_fix_mission_2_and_task_1_3.sql	2026-10-31 17:29:38.198516+00
10	009_compact_output_column_hints.sql	2026-10-31 18:25:00.775179+00
11	010_fix_tasks_1_9_and_1_23.sql	2026-11-02 17:24:21.893093+00
12	011_add_user_query_to_tasks_solved.sql	2026-11-05 19:47:23.137166+00
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasks (task_global_id, mission_id, task_id, title, description, clue, correct_query, expected_result, tags) FROM stdin;
51	1	23	Категории потерь под Сталинградом	Оцените потери советских войск в Сталинградской битве. С помощью CTE выделите бойцов подразделений, участвовавших в Сталинградской битве (через battle_military_unit и battle), проходивших службу в период её проведения. Разделите потери на две категории: «Безвозвратные потери» (статус «убит» или «пропал без вести») и «Санитарные потери» (статус «ранен»), и объедините результаты через UNION ALL.\n\nПоля в результирующей таблице: `loss_category`, `soldiers_count`	Соедините soldier, military_service, battle_military_unit и battle с фильтром b.battle_name = 'Сталинградская битва' и проверкой пересечения периодов службы с битвой: ms.start_date <= b.end_date AND (ms.end_date IS NULL OR ms.end_date >= b.start_date). Разделите потери через два CTE или FILTER и объедините с помощью UNION ALL.	WITH stalingrad_soldiers AS (\n    SELECT DISTINCT s.id, s.status\n    FROM soldier s\n    JOIN military_service ms ON s.id = ms.soldier_id\n    JOIN battle_military_unit bmu ON ms.unit_id = bmu.unit_id\n    JOIN battle b ON bmu.battle_id = b.id\n    WHERE b.battle_name = 'Сталинградская битва'\n      AND ms.start_date <= b.end_date\n      AND (ms.end_date IS NULL OR ms.end_date >= b.start_date)\n),\nirrecoverable AS (\n    SELECT 'Безвозвратные потери' AS loss_category, COUNT(*)::int AS soldiers_count\n    FROM stalingrad_soldiers\n    WHERE status IN ('убит', 'пропал без вести')\n),\nsanitary AS (\n    SELECT 'Санитарные потери' AS loss_category, COUNT(*)::int AS soldiers_count\n    FROM stalingrad_soldiers\n    WHERE status = 'ранен'\n)\nSELECT loss_category, soldiers_count FROM irrecoverable\nUNION ALL\nSELECT loss_category, soldiers_count FROM sanitary;	{"data": [["Безвозвратные потери", 2], ["Санитарные потери", 1]], "columns": ["loss_category", "soldiers_count"], "row_count": 2}	{cte,union,medium}
7	0	6	Семейная история	Выявите всех солдат с фамилией, начинающейся на «Иванов». Возможно, это представители одной семьи.\n\nПоля в результирующей таблице: `full_name`	Используйте оператор `LIKE` с шаблоном для поиска по началу строки	\N	{"data": [["Иванов Алексей Петрович"]], "columns": ["full_name"], "row_count": 1}	{easy}
80	2	6	Полный портрет части	Сформируйте сводку по каждой воинской части: общее количество солдат, разнообразие типов снаряжения, количество сражений, в которых участвовала часть, и перечень полученных наград бойцами через запятую (или «Нет», если наград нет). Отсортируйте результат по убыванию количества солдат, а затем по названию части.\n\nПоля в результирующей таблице: `unit_name`, `soldiers_total`, `equipment_types`, `battles_participated`, `medals_received`	Используйте LEFT JOIN подразделения с military_service, equipment, battle_military_unit и цепочкой soldier_medal -> medal. Примените COUNT(DISTINCT ...) для подсчёта уникальных солдат, типов снаряжения и битв части (bmu.battle_id). Для наград примените COALESCE(STRING_AGG(DISTINCT m.medal_name, ', ' ORDER BY m.medal_name), 'Нет').	SELECT mu.unit_name,\n       COUNT(DISTINCT ms.soldier_id)::int AS soldiers_total,\n       COUNT(DISTINCT e.equipment_type)::int AS equipment_types,\n       COUNT(DISTINCT bmu.battle_id)::int AS battles_participated,\n       COALESCE(STRING_AGG(DISTINCT m.medal_name, ', ' ORDER BY m.medal_name), 'Нет') AS medals_received\nFROM military_unit mu\nLEFT JOIN military_service ms ON mu.id = ms.unit_id\nLEFT JOIN equipment e ON mu.id = e.unit_id\nLEFT JOIN battle_military_unit bmu ON mu.id = bmu.unit_id\nLEFT JOIN soldier_medal sm ON ms.soldier_id = sm.soldier_id\nLEFT JOIN medal m ON sm.medal_id = m.id\nGROUP BY mu.id, mu.unit_name\nORDER BY soldiers_total DESC, mu.unit_name;	{"data": [["62-я армия", 3, 3, 3, "Герой Советского Союза, Медаль \\"За взятие Берлина\\", Орден Отечественной войны"], ["1-й отдельный чехословацкий батальон", 2, 0, 3, "Нет"], ["1-я гвардейская танковая армия", 2, 1, 4, "Герой Советского Союза"], ["101-й инженерно-сапёрный батальон", 2, 0, 1, "Нет"], ["150-я стрелковая дивизия", 2, 1, 2, "Медаль \\"За оборону Сталинграда\\", Медаль \\"За отвагу\\""], ["16-я воздушная армия", 2, 1, 1, "Медаль \\"За оборону Москвы\\", Орден Красной Звезды"], ["316-я стрелковая дивизия", 2, 3, 3, "Медаль \\"За отвагу\\""], ["46-й гвардейский ночной бомбардировочный полк", 2, 0, 4, "Нет"], ["64-я стрелковая дивизия", 2, 1, 1, "Нет"], ["Отдельный отряд собак-миноискателей", 2, 0, 1, "Нет"], ["1-й чехословацкий отдельный батальон", 1, 0, 2, "Нет"], ["1-я морская бригада", 1, 2, 1, "Нет"], ["101-й полк НКВД", 1, 0, 4, "Нет"], ["101-й учебный полк", 1, 0, 1, "Нет"], ["106-я стрелковая дивизия", 1, 1, 1, "Медаль \\"Партизану Отечественной войны\\""], ["14-я отдельная штрафная рота", 1, 0, 1, "Нет"], ["18-я дивизия СС \\"Хорст Вессель\\"", 1, 0, 1, "Нет"], ["2-я ударная армия", 1, 1, 2, "Орден Отечественной войны"], ["225-й отдельный инженерный батальон", 1, 0, 1, "Нет"], ["28-я дивизия народного ополчения", 1, 0, 2, "Нет"], ["3-я воздушная армия", 1, 1, 2, "Орден Красной Звезды"], ["369-й отдельный батальон морской пехоты", 1, 0, 1, "Нет"], ["37-й гвардейский миномётный полк", 1, 1, 1, "Нет"], ["585-й женский авиаполк", 1, 1, 1, "Нет"], ["8-я гвардейская армия", 1, 1, 4, "Орден Славы"], ["88-й отдельный лыжный батальон", 1, 0, 3, "Нет"], ["Отдельная медико-санитарная рота", 1, 2, 1, "Нет"], ["Отдельный батальон связи №45", 1, 0, 1, "Нет"], ["Отдельный отряд собак-истребителей танков", 1, 0, 1, "Нет"], ["7-я гвардейская миномётная дивизия", 0, 2, 1, "Нет"]], "columns": ["unit_name", "soldiers_total", "equipment_types", "battles_participated", "medals_received"], "row_count": 30}	{hard}
8	0	7	Элитные подразделения	Найдите все воинские части(подразделения), в названии которых встречается слово «гвардейская» (в любом регистре). Такие части часто были элитой армии.\n\nПоля в результирующей таблице: `unit_name`	Регистронезависимый поиск через `ILIKE`	\N	{"data": [["1-я гвардейская танковая армия"], ["7-я гвардейская миномётная дивизия"], ["8-я гвардейская армия"]], "columns": ["unit_name"], "row_count": 3}	{easy}
9	0	8	Артиллерийский учет	Составьте список снаряжения, в названии которого есть «пушка». Это поможет оценить наличие тяжелого вооружения.\n\nПоля в результирующей таблице: `item_name`	Используйте POSIX-оператор `~` для поиска по регулярному выражению	SELECT item_name FROM equipment WHERE item_name ~ 'пушка';	{"data": [["76-мм дивизионная пушка ЗИС-3"]], "columns": ["item_name"], "row_count": 1}	{easy,supply}
61	2	10	Эффективность наград	Для оценки соответствия воинских наград реальным результатам в бою сопоставьте для каждого подразделения полученные награды с реальными победами и потерями. Победоносными считаются битвы с исходами побед советских войск (фильтр b.result ~* '(побед|успеш|освобожд|разгром|взятие|капитуляц)' AND b.result !~* 'вермахт'). Рассчитайте число награждений (awarded), число погибших и пропавших без вести бойцов подразделения (deaths), число побед подразделения (victories), соотношение побед к числу наград (victory_per_medal) и потерь к числу наград (death_per_medal). Отсортируйте результат: строки с нулевыми победами поместите в конец, затем по убыванию victory_per_medal, названию части и названию награды.\n\nПоля в результирующей таблице: `unit_name`, `medal_name`, `awarded`, `deaths`, `victories`, `victory_per_medal`, `death_per_medal`	Используйте CTE. В первом CTE подсчитайте победы подразделения (фильтр b.result) и безвозвратные потери (status IN ('убит', 'пропал без вести')). Во втором CTE подсчитайте число награждений по каждой награде. В основном запросе вычислите victory_per_medal и death_per_medal через ROUND(...::numeric / NULLIF(awarded, 0), 2)::float. В ORDER BY используйте CASE WHEN victories = 0 THEN 1 ELSE 0 END, victory_per_medal DESC.	WITH unit_stats AS (\n    SELECT mu.id AS unit_id,\n           mu.unit_name,\n           COUNT(DISTINCT b.id) FILTER (WHERE b.result ~* '(побед|успеш|освобожд|разгром|взятие|капитуляц)' AND b.result !~* 'вермахт')::int AS victories,\n           COUNT(DISTINCT s.id) FILTER (WHERE s.status IN ('убит', 'пропал без вести'))::int AS deaths\n    FROM military_unit mu\n    LEFT JOIN battle_military_unit bmu ON mu.id = bmu.unit_id\n    LEFT JOIN battle b ON bmu.battle_id = b.id\n    LEFT JOIN military_service ms ON mu.id = ms.unit_id\n    LEFT JOIN soldier s ON ms.soldier_id = s.id\n    GROUP BY mu.id, mu.unit_name\n),\nunit_medals AS (\n    SELECT mu.id AS unit_id,\n           m.medal_name,\n           COUNT(sm.medal_id)::int AS awarded\n    FROM military_unit mu\n    JOIN military_service ms ON mu.id = ms.unit_id\n    JOIN soldier_medal sm ON ms.soldier_id = sm.soldier_id\n    JOIN medal m ON sm.medal_id = m.id\n    GROUP BY mu.id, m.medal_name\n)\nSELECT us.unit_name,\n       um.medal_name,\n       um.awarded,\n       us.deaths,\n       us.victories,\n       ROUND(us.victories::numeric / NULLIF(um.awarded, 0), 2)::float AS victory_per_medal,\n       ROUND(us.deaths::numeric / NULLIF(um.awarded, 0), 2)::float AS death_per_medal\nFROM unit_medals um\nJOIN unit_stats us ON um.unit_id = us.unit_id\nORDER BY CASE WHEN us.victories = 0 THEN 1 ELSE 0 END, victory_per_medal DESC, us.unit_name, um.medal_name;	{"data": [["1-я гвардейская танковая армия", "Герой Советского Союза", 1, 1, 3, 3.0, 1.0], ["8-я гвардейская армия", "Орден Славы", 1, 0, 3, 3.0, 0.0], ["150-я стрелковая дивизия", "Медаль \\"За оборону Сталинграда\\"", 1, 1, 2, 2.0, 1.0], ["150-я стрелковая дивизия", "Медаль \\"За отвагу\\"", 1, 1, 2, 2.0, 1.0], ["62-я армия", "Герой Советского Союза", 1, 1, 2, 2.0, 1.0], ["62-я армия", "Медаль \\"За взятие Берлина\\"", 1, 1, 2, 2.0, 1.0], ["62-я армия", "Орден Отечественной войны", 1, 1, 2, 2.0, 1.0], ["16-я воздушная армия", "Медаль \\"За оборону Москвы\\"", 1, 0, 1, 1.0, 0.0], ["16-я воздушная армия", "Орден Красной Звезды", 1, 0, 1, 1.0, 0.0], ["3-я воздушная армия", "Орден Красной Звезды", 1, 1, 1, 1.0, 1.0], ["316-я стрелковая дивизия", "Медаль \\"За отвагу\\"", 1, 1, 1, 1.0, 1.0], ["106-я стрелковая дивизия", "Медаль \\"Партизану Отечественной войны\\"", 1, 1, 0, 0.0, 1.0], ["2-я ударная армия", "Орден Отечественной войны", 1, 0, 0, 0.0, 0.0]], "columns": ["unit_name", "medal_name", "awarded", "deaths", "victories", "victory_per_medal", "death_per_medal"], "row_count": 13}	{window,hard}
3	0	15	Логистика вооружений	Определите общее количество снаряжения каждого типа. Назовите вычисленное поле "total". Это основа для оценки обеспеченности войск.\n\nПоля в результирующей таблице: `equipment_type`, `total`	Группировка по типу снаряжения с применением `SUM`	\N	{"data": [["авиабомбы", 3200], ["боеприпасы", 310000], ["артиллерия", 24], ["миномёты", 2268], ["противотанковые", 68], ["связь", 15], ["медицина", 1330], ["самолёты", 45], ["инженерное", 850], ["реактивные снаряды", 1500], ["оружие", 1200], ["танки", 100]], "columns": ["equipment_type", "total"], "row_count": 12}	{window,easy}
41	1	9	Логистика артиллерии Сталинградского фронта	Рассчитайте суммарный объем артиллерии и среднее количество артиллерийского вооружения на одного военнослужащего в частях, дислоцированных в Сталинграде.\n\nПоля в результирующей таблице: `equipment_type`, `total`, `per_soldier`\nПримечание: округленное до 2 знаков; Отфильтруйте данные по расположению части «Сталинград» (mu.location = 'Сталинград') и типу вооружения «артиллерия» (e.equipment_type = 'артиллерия').	Используйте CTE или раздельные агрегации для подсчёта общего объёма артиллерии частей в Сталинграде и общего количества солдат в этих же частях, чтобы избежать эффекта размножения строк при JOIN. Затем разделите суммарное вооружение на число бойцов с округлением до 2 знаков.	WITH stalingrad_artillery AS (\n    SELECT e.equipment_type,\n           SUM(e.quantity) AS total_qty\n    FROM military_unit mu\n    JOIN equipment e ON mu.id = e.unit_id\n    WHERE mu.location = 'Сталинград' AND e.equipment_type = 'артиллерия'\n    GROUP BY e.equipment_type\n),\nstalingrad_soldiers AS (\n    SELECT COUNT(DISTINCT ms.soldier_id) AS soldiers_count\n    FROM military_service ms\n    JOIN military_unit mu ON ms.unit_id = mu.id\n    JOIN equipment e ON mu.id = e.unit_id\n    WHERE mu.location = 'Сталинград' AND e.equipment_type = 'артиллерия'\n)\nSELECT sa.equipment_type,\n       sa.total_qty::int AS total,\n       ROUND(sa.total_qty::numeric / NULLIF(ss.soldiers_count, 0), 2)::float AS per_soldier\nFROM stalingrad_artillery sa\nCROSS JOIN stalingrad_soldiers ss;	{"data": [["артиллерия", 24, 8.0]], "columns": ["equipment_type", "total", "per_soldier"], "row_count": 1}	{supply,stalingrad,medium}
30	0	30	Танковые части	Найдите подразделения, оснащенные танками. Это важно для анализа бронетанковых сил.\n\nПоля в результирующей таблице: `unit_name`	Используйте подзапрос с `EXISTS` для проверки наличия снаряжения	\N	{"data": [["1-я гвардейская танковая армия"], ["8-я гвардейская армия"]], "columns": ["unit_name"], "row_count": 2}	{easy}
40	1	5	Логистика Курской дуги	Определите рейтинг частей в Курске по объему снабжения. Выведите столбцы unit_name, equipment_type, total, supply_rank. Это ключевые данные для анализа подготовки к крупнейшему танковому сражению.\n\nПоля в результирующей таблице: `unit_name`, `equipment_type`, `total`, `supply_rank`	Используйте `RANK()` с группировкой по типам снаряжения	\N	{"data": [["16-я воздушная армия", "самолёты", 45, 1], ["1-я гвардейская танковая армия", "танки", 58, 2]], "columns": ["unit_name", "equipment_type", "total", "supply_rank"], "row_count": 2}	{supply,window,medium}
46	1	19	Накопление резервов призыва	Для оценки темпов мобилизации рассчитайте общее количество призывников по годам и нарастающий итог призыва по годам. Выведите год призыва (year), число призванных в этом году (yearly_enlisted) и накопленный итог призыва за все предшествующие и текущий годы (cumulative_enlisted). Отсортируйте по году.\n\nПоля в результирующей таблице: `year`, `yearly_enlisted`, `cumulative_enlisted`	Используйте оконную агрегацию SUM(COUNT(*)) OVER (ORDER BY EXTRACT(YEAR FROM enlistment_date)) поверх группировки по годам.	SELECT EXTRACT(YEAR FROM enlistment_date)::int AS year,\n       COUNT(*) AS yearly_enlisted,\n       SUM(COUNT(*)) OVER (ORDER BY EXTRACT(YEAR FROM enlistment_date))::int AS cumulative_enlisted\nFROM soldier\nGROUP BY EXTRACT(YEAR FROM enlistment_date)\nORDER BY year;	{"data": [[1941, 13, 13], [1942, 10, 23], [1943, 11, 34], [1944, 6, 40]], "columns": ["year", "yearly_enlisted", "cumulative_enlisted"], "row_count": 4}	{window,aggregation,medium}
57	2	3	Анализ интервалов поставок	Определите среднее время между пополнениями снаряжения для каждой части. Выведите столбцы unit_name, equipment_type, last_replenishment, prev_replenishment (дата предыдущего пополнения), next_replenishment (дата следующего пополнения), days_between (интервал). Это поможет выявить логистические задержки или перебои.\n\nПоля в результирующей таблице: `unit_name`, `equipment_type`, `last_replenishment`, `prev_replenishment`, `next_replenishment`, `days_between`	Примените `LAG()` для получения предыдущей даты пополнения и рассчитайте разницу между датами	\N	{"data": [["316-я стрелковая дивизия", "оружие", "1942-03-01", null, "1942-03-05", null], ["316-я стрелковая дивизия", "боеприпасы", "1942-03-05", "1942-03-01", "1942-05-10", 4], ["316-я стрелковая дивизия", "связь", "1942-05-10", "1942-03-05", null, 66], ["62-я армия", "боеприпасы", "1942-03-05", null, "1942-11-10", null], ["62-я армия", "артиллерия", "1942-11-10", "1942-03-05", "1943-01-10", 250], ["62-я армия", "медицина", "1943-01-10", "1942-11-10", "1943-12-01", 61], ["62-я армия", "медицина", "1943-12-01", "1943-01-10", null, 325], ["1-я гвардейская танковая армия", "танки", "1943-07-05", null, null, null], ["150-я стрелковая дивизия", "миномёты", "1944-01-15", null, null, null], ["16-я воздушная армия", "самолёты", "1943-05-01", null, null, null], ["7-я гвардейская миномётная дивизия", "боеприпасы", "1942-12-01", null, "1942-12-01", null], ["7-я гвардейская миномётная дивизия", "реактивные снаряды", "1942-12-01", "1942-12-01", null, 0], ["2-я ударная армия", "инженерное", "1943-08-14", null, null, null], ["8-я гвардейская армия", "танки", "1944-10-01", null, null, null], ["3-я воздушная армия", "авиабомбы", "1943-09-05", null, null, null], ["106-я стрелковая дивизия", "противотанковые", "1944-02-28", null, null, null], ["1-я морская бригада", "медицина", "1942-03-05", null, "1942-03-05", null], ["1-я морская бригада", "миномёты", "1942-03-05", "1942-03-05", "1942-06-06", 0], ["1-я морская бригада", "миномёты", "1942-06-06", "1942-03-05", null, 93], ["Отдельная медико-санитарная рота", "медицина", "1942-03-05", null, "1942-03-05", null], ["Отдельная медико-санитарная рота", "боеприпасы", "1942-03-05", "1942-03-05", null, 0], ["585-й женский авиаполк", "боеприпасы", "1942-03-05", null, null, null], ["37-й гвардейский миномётный полк", "боеприпасы", "1942-03-05", null, null, null], ["64-я стрелковая дивизия", "боеприпасы", "1942-03-05", null, null, null]], "columns": ["unit_name", "equipment_type", "last_replenishment", "prev_replenishment", "next_replenishment", "days_between"], "row_count": 24}	{window,hard}
73	1	21	Долгосрочная служба	Выявите солдат, чья служба длилась более трех лет. Выведите полное имя солдата и длительность службы в днях (days). Отсортируйте результат от меньшей длительности к большей. Это может указывать на ветеранов, участвовавших в ключевых операциях.\n\nПоля в результирующей таблице: `full_name`, `days`	Рассчитайте разницу между датами начала и окончания службы с помощью `AGE`	\N	{"data": [["Громов Михаил Сергеевич", 1126], ["Кузнецов Пётр Васильевич", 1153], ["Гришин Алексей Петрович", 1245]], "columns": ["full_name", "days"], "row_count": 3}	{medium}
76	1	12	Скользящие потери	Проанализируйте динамику потерь среди солдат в 1942 году, используя данные о дате призыва. Для каждого месяца 1942 года рассчитайте количество солдат, погибших к этому моменту, и постройте трёхмесячное скользящее среднее для сглаживания временного ряда. Выведите номер месяца (month), количество потерь (killed) и скользящее среднее (moving_avg). Это покажет динамику снижения боеспособности.\n\nПоля в результирующей таблице: `month`, `killed`, `moving_avg`\nПримечание: округленное до 2 знаков.	Используйте `AVG()` с окном `ROWS BETWEEN 2 PRECEDING AND CURRENT ROW`. Дата смерти - end_date из military_service.	\N	{"data": [[11.0, 1, 1.0]], "columns": ["month", "killed", "moving_avg"], "row_count": 1}	{medium}
82	2	9	Прогноз износа техники	Для прогнозирования будущих потребностей в ремонте и замене снаряжения необходимо проанализировать его расход по годам с использованием сглаживающего алгоритма. Для каждого типа снаряжения (equipment_type) и каждого года (issue_date) требуется рассчитать коэффициент потерь как отношение количества снаряжения, выданного солдатам, к количеству солдат, проходивших службу в тот же год, чтобы учесть масштабы деятельности частей. Данный коэффициент следует сгладить с помощью трёхлетнего скользящего среднего (включая текущий год и два предыдущих), чтобы устранить случайные колебания и выявить общую тенденцию. Выведите тип снаряжения, год, исходный коэффициент потерь и сглаженное значение, отсортировав результат сначала по типу снаряжения, а затем по году в порядке возрастания.\n\nПоля в результирующей таблице: `equipment_type`, `year`, `loss_ratio`, `smoothed_ratio`	Используйте CTE для подсчёта примените AVG(...) OVER (ORDER BY year ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) для сглаживания	\N	{"data": [["авиабомбы", 1943.0, 2.1818, 2.1818], ["артиллерия", 1942.0, 0.0769, 0.0769], ["боеприпасы", 1942.0, 9.2308, 9.2308], ["инженерное", 1943.0, 0.0909, 0.0909], ["медицина", 1943.0, 0.7273, 0.7273], ["миномёты", 1944.0, 20.0, 20.0], ["оружие", 1942.0, 0.0769, 0.0769], ["противотанковые", 1944.0, 0.1667, 0.1667], ["самолёты", 1943.0, 0.0909, 0.0909], ["связь", 1942.0, 0.0769, 0.0769], ["танки", 1943.0, 0.0909, 0.0909], ["танки", 1944.0, 0.1667, 0.1288]], "columns": ["equipment_type", "year", "loss_ratio", "smoothed_ratio"], "row_count": 12}	{hard}
84	3	1	Пространство имён	Отряд занял немецкий вычислительный узел; база пуста — ни одной таблицы, ни одного объекта. Прежде чем вносить разведданные, подпольному архиву нужно своё пространство имён, чтобы не смешаться с тем, что осталось от немцев.\r\n\r\nСоздайте схему podpolye — отдельное пространство имён для подпольной базы.	Пространство имён создаётся одним оператором: CREATE SCHEMA <имя>. Схема — это «папка» для таблиц; больше в этом задании ничего не требуется.	CREATE SCHEMA podpolye	{"mode": "model", "setup": [], "expect": [{"args": {"name": "podpolye"}, "probe": "schema_exists", "title": "схема подполья создана", "value": true}, {"args": {"name": "public"}, "probe": "schema_exists", "title": "схема public не тронута", "value": true}, {"args": {"schema": "podpolye", "grantee": "PUBLIC"}, "probe": "schema_privs", "title": "посторонним схему не открывали", "value": []}, {"args": {}, "probe": "all_roles", "title": "посторонних ролей не заводили", "value": []}], "reveal": "Что проверяется: схема подполья создана; схема public не тронута; посторонним схему не открывали; посторонних ролей не заводили."}	{ddl,schema}
86	3	3	Таблица складов	Первое, что нужно Центру, — учёт немецких складов: номер, название, сектор города и вместимость. Номер — то, чем склад отличается от всех остальных; безымянный склад разведданными не является, а вот вместимость известна не всегда.\r\n\r\nСоздайте таблицу podpolye.depots: depot_id — целое число, первичный ключ; depot_name — строка не длиннее 40 символов, обязательная; sector — ровно один символ, обязательный; capacity_t — целое число, может оставаться пустым.	«Целое число» — тип integer, «строка не длиннее N» — varchar(N), «ровно один символ» — char(1). Обязательность — NOT NULL, а первичный ключ можно объявить прямо в определении столбца: depot_id integer PRIMARY KEY.	CREATE TABLE podpolye.depots(\r\n    depot_id   integer PRIMARY KEY,\r\n    depot_name varchar(40) NOT NULL,\r\n    sector     char(1) NOT NULL,\r\n    capacity_t integer)	{"mode": "model", "setup": ["CREATE SCHEMA podpolye"], "expect": [{"args": {"table": "podpolye.depots"}, "probe": "columns", "title": "столбцы таблицы складов", "value": [["depot_id", "integer", null, true, false], ["depot_name", "character varying", 40, true, false], ["sector", "character", 1, true, false], ["capacity_t", "integer", null, false, false]]}, {"args": {"table": "podpolye.depots"}, "probe": "primary_key", "title": "первичный ключ складов", "value": ["depot_id"]}, {"args": {"table": "podpolye.depots"}, "probe": "uniques", "title": "лишних ограничений уникальности нет", "value": []}, {"args": {"table": "podpolye.depots"}, "probe": "public_privs", "title": "права никому не раздавали", "value": []}], "reveal": "Что проверяется: столбцы таблицы складов; первичный ключ складов; лишних ограничений уникальности нет; права никому не раздавали."}	{ddl,table,constraint}
87	3	4	Заплата на сектор	Наблюдатель при свече вывел «8» вместо «B» — и база приняла склад в несуществующем секторе. Город поделён ровно на четыре сектора: A, B, C и D. Дыра должна закрыться этой же ночью.\r\n\r\nДобавьте к таблице podpolye.depots ограничение-проверку, которое разрешает в столбце sector только значения 'A', 'B', 'C' и 'D'.	Ограничение добавляется к готовой таблице: ALTER TABLE ... ADD CONSTRAINT <имя> CHECK (условие). Условие «одно из перечисленных значений» короче всего записывается через IN: sector IN ('A','B','C','D').	ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_chk CHECK (sector IN ('A','B','C','D'))	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)"], "expect": [{"args": {"cases": [{"row": {"sector": "A", "depot_id": 99, "capacity_t": 10, "depot_name": "Проба"}, "label": "A"}, {"row": {"sector": "B", "depot_id": 99, "capacity_t": 10, "depot_name": "Проба"}, "label": "B"}, {"row": {"sector": "C", "depot_id": 99, "capacity_t": 10, "depot_name": "Проба"}, "label": "C"}, {"row": {"sector": "D", "depot_id": 99, "capacity_t": 10, "depot_name": "Проба"}, "label": "D"}, {"row": {"sector": "E", "depot_id": 99, "capacity_t": 10, "depot_name": "Проба"}, "label": "E"}, {"row": {"sector": "X", "depot_id": 99, "capacity_t": 10, "depot_name": "Проба"}, "label": "X"}, {"row": {"sector": "Z", "depot_id": 99, "capacity_t": 10, "depot_name": "Проба"}, "label": "Z"}, {"row": {"sector": "a", "depot_id": 99, "capacity_t": 10, "depot_name": "Проба"}, "label": "строчная a"}, {"row": {"sector": "Z", "depot_id": 99, "depot_name": "Проба"}, "label": "Z без вместимости"}], "table": "podpolye.depots"}, "probe": "accepts", "title": "какие сектора база принимает", "value": [["A", true], ["B", true], ["C", true], ["D", true], ["E", false], ["X", false], ["Z", false], ["строчная a", false], ["Z без вместимости", false]]}, {"args": {"table": "podpolye.depots"}, "probe": "columns", "title": "столбцы складов не тронуты", "value": [["depot_id", "integer", null, true, false], ["depot_name", "character varying", 40, true, false], ["sector", "character", 1, true, false], ["capacity_t", "integer", null, false, false]]}, {"args": {"table": "podpolye.depots"}, "probe": "primary_key", "title": "первичный ключ на месте", "value": ["depot_id"]}], "reveal": "Что проверяется: какие сектора база принимает; столбцы складов не тронуты; первичный ключ на месте."}	{ddl,alter,constraint,check}
88	3	5	Справочник секторов	Сектор — не буква, а самостоятельная вещь с названием: «Заречный», «Вокзальный». Склады должны ссылаться на справочник по-настоящему: сектор, за которым числятся склады, стереть нельзя.\r\n\r\nСоздайте справочник podpolye.sectors: sector — ровно один символ, первичный ключ; title — строка не длиннее 30 символов, обязательная. Затем свяжите с ним склады: добавьте к podpolye.depots внешний ключ из столбца sector на sectors.sector, запрещающий удалять сектор, пока на него ссылаются склады.	Справочник создаётся обычным CREATE TABLE, а связь добавляется к уже существующей таблице: ALTER TABLE ... ADD CONSTRAINT ... FOREIGN KEY (sector) REFERENCES podpolye.sectors(sector). Запрет удаления «пока есть ссылки» — это ON DELETE RESTRICT.	CREATE TABLE podpolye.sectors(sector char(1) PRIMARY KEY, title varchar(30) NOT NULL); ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_fk FOREIGN KEY (sector) REFERENCES podpolye.sectors(sector) ON DELETE RESTRICT	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_chk CHECK (sector IN ('A','B','C','D'))"], "expect": [{"args": {"table": "podpolye.sectors"}, "probe": "columns", "title": "столбцы справочника секторов", "value": [["sector", "character", 1, true, false], ["title", "character varying", 30, true, false]]}, {"args": {"table": "podpolye.sectors"}, "probe": "primary_key", "title": "первичный ключ справочника", "value": ["sector"]}, {"args": {"table": "podpolye.depots"}, "probe": "foreign_keys", "title": "внешний ключ складов на сектора", "value": [["sector", "podpolye.sectors", "sector", "запрещает удаление"]]}, {"args": {"table": "podpolye.depots"}, "probe": "columns", "title": "склады остались прежними", "value": [["depot_id", "integer", null, true, false], ["depot_name", "character varying", 40, true, false], ["sector", "character", 1, true, false], ["capacity_t", "integer", null, false, false]]}, {"args": {"table": "podpolye.depots"}, "probe": "primary_key", "title": "первичный ключ складов на месте", "value": ["depot_id"]}], "reveal": "Что проверяется: столбцы справочника секторов; первичный ключ справочника; внешний ключ складов на сектора; склады остались прежними; первичный ключ складов на месте."}	{ddl,table,foreign_key}
89	3	6	Первые донесения	Каркас готов, справочник заполнен, база пуста. Три первых склада должны попасть в базу без единой ошибки: что внесено неверно, Центр примет за правду.\r\n\r\nВнесите в podpolye.depots три склада: (1, 'Арсенал №1', 'A', 800), (2, 'Топливный склад', 'A', 450) и (3, 'Продовольственный', 'B', 300).	Несколько строк вносятся одним оператором: INSERT INTO <таблица>(столбцы) VALUES (...), (...), (...). Строковые значения — в одинарных кавычках, порядок значений должен совпадать с порядком перечисленных столбцов.	INSERT INTO podpolye.depots(depot_id, depot_name, sector, capacity_t) VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_chk CHECK (sector IN ('A','B','C','D'))", "CREATE TABLE podpolye.sectors(sector char(1) PRIMARY KEY, title varchar(30) NOT NULL)", "INSERT INTO podpolye.sectors VALUES ('A','Заречный'),('B','Вокзальный'),('C','Старый город'),('D','Фабричный')", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_fk FOREIGN KEY (sector) REFERENCES podpolye.sectors(sector) ON DELETE RESTRICT"], "expect": [{"args": {"table": "podpolye.depots", "columns": ["depot_id", "depot_name", "sector", "capacity_t"], "order_by": "depot_id"}, "probe": "rows", "title": "содержимое таблицы складов", "value": [[1, "Арсенал №1", "A", 800], [2, "Топливный склад", "A", 450], [3, "Продовольственный", "B", 300]]}, {"args": {"table": "podpolye.depots"}, "probe": "columns", "title": "таблица осталась прежней", "value": [["depot_id", "integer", null, true, false], ["depot_name", "character varying", 40, true, false], ["sector", "character", 1, true, false], ["capacity_t", "integer", null, false, false]]}, {"args": {"table": "podpolye.depots"}, "probe": "primary_key", "title": "первичный ключ на месте", "value": ["depot_id"]}], "reveal": "Что проверяется: содержимое таблицы складов; таблица осталась прежней; первичный ключ на месте."}	{dml,insert}
104	4	9	Передоверие	Отряд уходит, узел передаётся соседней группе. Их бойцы вам незнакомы — и не должны быть: раздавать доступ своим людям соседи будут сами. Для этого командованию нужно право передавать чтение дальше.\r\n\r\nВыдайте роли commanders право читать таблицу podpolye.safehouses так, чтобы она могла передавать это право другим ролям.	Возможность передавать право дальше добавляется к обычной выдаче: GRANT SELECT ON podpolye.safehouses TO commanders WITH GRANT OPTION. Именно WITH GRANT OPTION отличает передоверие от простого чтения.	GRANT SELECT ON podpolye.safehouses TO commanders WITH GRANT OPTION	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)", "CREATE ROLE commanders", "CREATE ROLE scouts", "CREATE ROLE spies", "GRANT USAGE ON SCHEMA podpolye TO commanders", "GRANT ALL PRIVILEGES ON podpolye.depots, podpolye.safehouses TO commanders", "GRANT USAGE ON SCHEMA podpolye TO scouts", "GRANT SELECT, INSERT ON podpolye.depots TO scouts", "GRANT USAGE ON SCHEMA podpolye TO spies", "GRANT SELECT (house_id, sector) ON podpolye.safehouses TO spies", "ALTER TABLE podpolye.safehouses ENABLE ROW LEVEL SECURITY", "CREATE POLICY house_open ON podpolye.safehouses FOR SELECT TO spies USING (is_burnt = false)", "CREATE ROLE grisha LOGIN", "GRANT scouts TO grisha", "ALTER DEFAULT PRIVILEGES IN SCHEMA podpolye GRANT SELECT ON TABLES TO scouts"], "expect": [{"args": {"table": "podpolye.safehouses", "grantee": "commanders"}, "probe": "grantable", "title": "право командования и возможность передачи", "value": [["DELETE", false], ["INSERT", false], ["REFERENCES", false], ["SELECT", true], ["TRIGGER", false], ["TRUNCATE", false], ["UPDATE", false]]}, {"args": {"privs": ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES", "TRIGGER"], "table": "podpolye.safehouses", "grantee": "commanders"}, "probe": "has_privs", "title": "состав прав командования не менялся", "value": [["SELECT", true], ["INSERT", true], ["UPDATE", true], ["DELETE", true], ["TRUNCATE", true], ["REFERENCES", true], ["TRIGGER", true]]}, {"args": {"schema": "podpolye", "grantee": "commanders"}, "probe": "schema_privs", "title": "доступ командования к схеме сохранён", "value": ["USAGE"]}, {"args": {"privs": ["SELECT"], "table": "podpolye.safehouses", "grantees": ["spies", "PUBLIC"]}, "probe": "privs_matrix", "title": "посторонним явки не открывали", "value": [["spies", "SELECT", false], ["PUBLIC", "SELECT", false]]}, {"args": {}, "probe": "all_memberships", "title": "членство ролей не меняли", "value": [["grisha", "scouts"]]}], "reveal": "Что проверяется: право командования и возможность передачи; состав прав командования не менялся; доступ командования к схеме сохранён; посторонним явки не открывали; членство ролей не меняли."}	{dcl,grant,grant_option}
90	3	7	Журнал рейсов	Наблюдатели приносят записки о вывозе: склад, дата, тоннаж. Дата почти всегда сегодняшняя — пусть база подставляет её сама. А рейсы склада, ушедшего из учёта, обязаны исчезнуть вместе с ним.\r\n\r\nСоздайте таблицу podpolye.movements: move_id — целое, первичный ключ; depot_id — целое, обязательное, внешний ключ на podpolye.depots(depot_id), причём вместе со складом должны удаляться и его рейсы; at_date — дата, обязательная, по умолчанию текущая; tons — целое.	Связь можно объявить прямо в столбце: depot_id integer NOT NULL REFERENCES podpolye.depots(depot_id) ON DELETE CASCADE — каскад и означает «удалять рейсы вместе со складом». Текущая дата по умолчанию — DEFAULT current_date.	CREATE TABLE podpolye.movements(\r\n    move_id  integer PRIMARY KEY,\r\n    depot_id integer NOT NULL REFERENCES podpolye.depots(depot_id) ON DELETE CASCADE,\r\n    at_date  date NOT NULL DEFAULT current_date,\r\n    tons     integer)	{"mode": "model", "post": ["INSERT INTO podpolye.movements(move_id, depot_id, tons) VALUES (1,1,60),(2,1,38),(3,2,52)"], "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_chk CHECK (sector IN ('A','B','C','D'))", "CREATE TABLE podpolye.sectors(sector char(1) PRIMARY KEY, title varchar(30) NOT NULL)", "INSERT INTO podpolye.sectors VALUES ('A','Заречный'),('B','Вокзальный'),('C','Старый город'),('D','Фабричный')", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_fk FOREIGN KEY (sector) REFERENCES podpolye.sectors(sector) ON DELETE RESTRICT", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)"], "expect": [{"args": {"table": "podpolye.movements"}, "probe": "columns", "title": "столбцы таблицы рейсов", "value": [["move_id", "integer", null, true, false], ["depot_id", "integer", null, true, false], ["at_date", "date", null, true, true], ["tons", "integer", null, false, false]]}, {"args": {"table": "podpolye.movements"}, "probe": "primary_key", "title": "первичный ключ рейсов", "value": ["move_id"]}, {"args": {"table": "podpolye.movements"}, "probe": "foreign_keys", "title": "внешний ключ рейсов на склады", "value": [["depot_id", "podpolye.depots", "depot_id", "удаляет следом"]]}, {"args": {"table": "podpolye.movements", "columns": ["at_date"]}, "probe": "default_kind", "title": "дата подставляется сама", "value": [["at_date", "текущий момент"]]}, {"args": {"table": "podpolye.depots", "value": 1, "column": "depot_id"}, "probe": "delete_allowed", "title": "склад удаляется вместе со своими рейсами", "value": true}, {"args": {"cases": [{"row": {"tons": 5, "move_id": 1, "depot_id": 2}, "label": "повтор номера"}, {"row": {"tons": 5, "move_id": 99, "depot_id": 2}, "label": "новый номер"}], "table": "podpolye.movements"}, "probe": "accepts", "title": "повтор номера рейса и новый номер", "value": [["повтор номера", false], ["новый номер", true]]}], "reveal": "Что проверяется: столбцы таблицы рейсов; первичный ключ рейсов; внешний ключ рейсов на склады; дата подставляется сама; склад удаляется вместе со своими рейсами; повтор номера рейса и новый номер."}	{ddl,table,foreign_key,default}
91	3	8	Груз и вес	В таблице рейсов не хватает главного — что именно вывозят. Заодно в базу попал рейс с отрицательным весом: отрицательных тонн не бывает, и база должна знать это сама.\r\n\r\nВ таблицу podpolye.movements добавьте столбец cargo_ru — строка не длиннее 30 символов, и ограничение, требующее, чтобы значение tons было строго больше нуля.	Здесь два отдельных действия над готовой таблицей: ALTER TABLE ... ADD COLUMN cargo_ru varchar(30) и ALTER TABLE ... ADD CONSTRAINT ... CHECK (tons > 0). «Строго больше нуля» — именно >, а не >=.	ALTER TABLE podpolye.movements ADD COLUMN cargo_ru varchar(30); ALTER TABLE podpolye.movements ADD CONSTRAINT movements_tons_chk CHECK (tons > 0)	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_chk CHECK (sector IN ('A','B','C','D'))", "CREATE TABLE podpolye.sectors(sector char(1) PRIMARY KEY, title varchar(30) NOT NULL)", "INSERT INTO podpolye.sectors VALUES ('A','Заречный'),('B','Вокзальный'),('C','Старый город'),('D','Фабричный')", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_fk FOREIGN KEY (sector) REFERENCES podpolye.sectors(sector) ON DELETE RESTRICT", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.movements(\\n    move_id  integer PRIMARY KEY,\\n    depot_id integer NOT NULL REFERENCES podpolye.depots(depot_id) ON DELETE CASCADE,\\n    at_date  date NOT NULL DEFAULT current_date,\\n    tons     integer)", "INSERT INTO podpolye.movements(move_id, depot_id, at_date, tons) VALUES (1,1,'1944-09-11',60),(2,1,'1944-09-15',38),(3,2,'1944-09-12',52),(4,3,'1944-09-14',22),(5,3,'1944-09-18',45)"], "expect": [{"args": {"table": "podpolye.movements"}, "probe": "columns", "title": "столбцы рейсов после правки", "value": [["move_id", "integer", null, true, false], ["depot_id", "integer", null, true, false], ["at_date", "date", null, true, true], ["tons", "integer", null, false, false], ["cargo_ru", "character varying", 30, false, false]]}, {"args": {"cases": [{"row": {"tons": 10, "move_id": 99, "depot_id": 1}, "label": "10 тонн"}, {"row": {"tons": 5, "move_id": 99, "depot_id": 1}, "label": "5 тонн"}, {"row": {"tons": 1, "move_id": 99, "depot_id": 1}, "label": "1 тонна"}, {"row": {"tons": 0, "move_id": 99, "depot_id": 1}, "label": "ноль"}, {"row": {"tons": -5, "move_id": 99, "depot_id": 1}, "label": "минус пять"}, {"row": {"tons": -100, "move_id": 99, "depot_id": 1}, "label": "минус сто"}], "table": "podpolye.movements"}, "probe": "accepts", "title": "какой вес база принимает", "value": [["10 тонн", true], ["5 тонн", true], ["1 тонна", true], ["ноль", false], ["минус пять", false], ["минус сто", false]]}, {"args": {"table": "podpolye.movements"}, "probe": "foreign_keys", "title": "связь со складами не потеряна", "value": [["depot_id", "podpolye.depots", "depot_id", "удаляет следом"]]}, {"args": {"table": "podpolye.movements"}, "probe": "primary_key", "title": "первичный ключ рейсов на месте", "value": ["move_id"]}, {"args": {"table": "podpolye.movements", "columns": ["move_id", "depot_id", "tons"], "order_by": "move_id"}, "probe": "rows", "title": "рейсы на месте", "value": [[1, 1, 60], [2, 1, 38], [3, 2, 52], [4, 3, 22], [5, 3, 45]]}], "reveal": "Что проверяется: столбцы рейсов после правки; какой вес база принимает; связь со складами не потеряна; первичный ключ рейсов на месте; рейсы на месте."}	{ddl,alter,constraint,check}
92	3	9	Указатель	Счётная машина перебирает весь журнал рейсов ради одной сводки по складу. Нужен указатель по столбцу связи — и он не обязан быть уникальным: с одного склада рейсов много.\r\n\r\nПостройте по столбцу depot_id таблицы podpolye.movements обычный, не уникальный индекс.	Индекс создаётся оператором CREATE INDEX <имя> ON <таблица>(<столбец>). Слово UNIQUE добавлять не нужно — как раз потому, что значения в depot_id повторяются.	CREATE INDEX movements_depot_idx ON podpolye.movements(depot_id)	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_chk CHECK (sector IN ('A','B','C','D'))", "CREATE TABLE podpolye.sectors(sector char(1) PRIMARY KEY, title varchar(30) NOT NULL)", "INSERT INTO podpolye.sectors VALUES ('A','Заречный'),('B','Вокзальный'),('C','Старый город'),('D','Фабричный')", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_fk FOREIGN KEY (sector) REFERENCES podpolye.sectors(sector) ON DELETE RESTRICT", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.movements(\\n    move_id  integer PRIMARY KEY,\\n    depot_id integer NOT NULL REFERENCES podpolye.depots(depot_id) ON DELETE CASCADE,\\n    at_date  date NOT NULL DEFAULT current_date,\\n    tons     integer)", "INSERT INTO podpolye.movements(move_id, depot_id, at_date, tons) VALUES (1,1,'1944-09-11',60),(2,1,'1944-09-15',38),(3,2,'1944-09-12',52),(4,3,'1944-09-14',22),(5,3,'1944-09-18',45)"], "expect": [{"args": {"table": "podpolye.movements"}, "probe": "indexes", "title": "индексы рейсов, кроме первичного ключа", "value": [["depot_id", false, "btree", false]]}, {"args": {"table": "podpolye.movements"}, "probe": "primary_key", "title": "первичный ключ не тронут", "value": ["move_id"]}, {"args": {"table": "podpolye.movements", "columns": ["move_id", "depot_id", "tons"], "order_by": "move_id"}, "probe": "rows", "title": "рейсы на месте", "value": [[1, 1, 60], [2, 1, 38], [3, 2, 52], [4, 3, 22], [5, 3, 45]]}], "reveal": "Что проверяется: индексы рейсов, кроме первичного ключа; первичный ключ не тронут; рейсы на месте."}	{ddl,index}
93	3	10	Сводка одним словом	Семён требует, чтобы сводка вывоза по секторам собиралась сама, одним словом. Мелкие рейсы до 30 тонн — текучка гарнизона, в сводку они не идут.\r\n\r\nСоздайте представление podpolye.depot_load, явно объявив его столбцы: sector — сектор склада и tons — суммарный вывоз по этому сектору. Учитывайте только рейсы тяжелее 30 тонн, записав условие отбора именно как tons > 30. Имена столбцов укажите в скобках после имени представления: CREATE VIEW podpolye.depot_load(sector, tons) AS ...	Представление — это сохранённый запрос: CREATE VIEW <имя>(<столбцы>) AS SELECT ... Внутри — соединение depots и movements по depot_id, отбор WHERE tons > 30 и группировка по сектору с sum(tons).	CREATE VIEW podpolye.depot_load(sector, tons) AS SELECT d.sector, sum(m.tons) FROM podpolye.depots d JOIN podpolye.movements m ON m.depot_id = d.depot_id WHERE m.tons > 30 GROUP BY d.sector	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_chk CHECK (sector IN ('A','B','C','D'))", "CREATE TABLE podpolye.sectors(sector char(1) PRIMARY KEY, title varchar(30) NOT NULL)", "INSERT INTO podpolye.sectors VALUES ('A','Заречный'),('B','Вокзальный'),('C','Старый город'),('D','Фабричный')", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_fk FOREIGN KEY (sector) REFERENCES podpolye.sectors(sector) ON DELETE RESTRICT", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.movements(\\n    move_id  integer PRIMARY KEY,\\n    depot_id integer NOT NULL REFERENCES podpolye.depots(depot_id) ON DELETE CASCADE,\\n    at_date  date NOT NULL DEFAULT current_date,\\n    tons     integer)", "INSERT INTO podpolye.movements(move_id, depot_id, at_date, tons) VALUES (1,1,'1944-09-11',60),(2,1,'1944-09-15',38),(3,2,'1944-09-12',52),(4,3,'1944-09-14',22),(5,3,'1944-09-18',45)"], "expect": [{"args": {"name": "podpolye.depot_load"}, "probe": "view_columns", "title": "столбцы представления", "value": ["sector", "tons"]}, {"args": {"name": "podpolye.depot_load", "mentions": ["depots", "movements", "sum", "group", "sector", "30"]}, "probe": "view_shape", "title": "форма определения представления", "value": [["существует", true], ["упоминает depots", true], ["упоминает movements", true], ["упоминает sum", true], ["упоминает group", true], ["упоминает sector", true], ["упоминает 30", true]]}], "reveal": "Что проверяется: столбцы представления; форма определения представления."}	{ddl,view,select,where}
94	3	11	Наблюдение за складами	За каждым складом закреплён свой человек. Один наблюдатель ведёт несколько складов, за одним складом могут следить двое — но пара «человек и склад» должна встречаться ровно один раз. Ключ здесь — именно пара.\r\n\r\nСоздайте таблицу podpolye.watch: spotter — строка не длиннее 20 символов; depot_id — целое, ссылающееся на podpolye.depots(depot_id). Первичный ключ должен быть составным: пара (spotter, depot_id).	Составной ключ нельзя объявить в одном столбце — он записывается отдельным элементом таблицы: PRIMARY KEY (spotter, depot_id). Ссылка на склады при этом остаётся обычным REFERENCES в определении depot_id.	CREATE TABLE podpolye.watch(spotter varchar(20), depot_id integer REFERENCES podpolye.depots(depot_id), PRIMARY KEY (spotter, depot_id))	{"mode": "model", "post": ["INSERT INTO podpolye.watch VALUES ('Гриша', 1)"], "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_chk CHECK (sector IN ('A','B','C','D'))", "CREATE TABLE podpolye.sectors(sector char(1) PRIMARY KEY, title varchar(30) NOT NULL)", "INSERT INTO podpolye.sectors VALUES ('A','Заречный'),('B','Вокзальный'),('C','Старый город'),('D','Фабричный')", "ALTER TABLE podpolye.depots ADD CONSTRAINT depots_sector_fk FOREIGN KEY (sector) REFERENCES podpolye.sectors(sector) ON DELETE RESTRICT", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)"], "expect": [{"args": {"table": "podpolye.watch"}, "probe": "primary_key", "title": "состав первичного ключа наблюдения", "value": ["spotter", "depot_id"]}, {"args": {"table": "podpolye.watch"}, "probe": "columns", "title": "столбцы наблюдения", "value": [["spotter", "character varying", 20, true, false], ["depot_id", "integer", null, true, false]]}, {"args": {"table": "podpolye.watch"}, "probe": "foreign_keys", "title": "ссылка на склады", "value": [["depot_id", "podpolye.depots", "depot_id", "запрещает удаление"]]}, {"args": {"cases": [{"row": {"spotter": "Гриша", "depot_id": 1}, "label": "та же пара"}, {"row": {"spotter": "Гриша", "depot_id": 2}, "label": "другой склад"}, {"row": {"spotter": "Гриша", "depot_id": 77}, "label": "несуществующий склад"}], "table": "podpolye.watch"}, "probe": "accepts", "title": "повтор пары и другая пара", "value": [["та же пара", false], ["другой склад", true], ["несуществующий склад", false]]}], "reveal": "Что проверяется: состав первичного ключа наблюдения; столбцы наблюдения; ссылка на склады; повтор пары и другая пара."}	{ddl,table,primary_key,foreign_key}
95	3	12	Журнал радиограмм	Повтор донесения Центр считает подтверждением и удваивает оценку сил противника — одинаковых текстов быть не должно. Время отправки база ставит сама: радист в эфире на часы не смотрит.\r\n\r\nСоздайте таблицу podpolye.radiograms: radio_id — целое, первичный ключ; body — текст, обязательный, причём два донесения с одинаковым текстом в журнал попадать не должны; sent_at — отметка времени, обязательная, по умолчанию текущий момент.	«Одинаковых текстов быть не должно» — это ограничение UNIQUE на столбце body. «Отметка времени» — тип timestamp, а текущий момент по умолчанию — DEFAULT now().	CREATE TABLE podpolye.radiograms(radio_id integer PRIMARY KEY, body text NOT NULL UNIQUE, sent_at timestamp NOT NULL DEFAULT now())	{"mode": "model", "post": ["INSERT INTO podpolye.radiograms(radio_id, body) VALUES (1, 'связь установлена')"], "setup": ["CREATE SCHEMA podpolye"], "expect": [{"args": {"table": "podpolye.radiograms"}, "probe": "columns", "title": "столбцы журнала донесений", "value": [["radio_id", "integer", null, true, false], ["body", "text", null, true, false], ["sent_at", "timestamp without time zone", null, true, true]]}, {"args": {"table": "podpolye.radiograms"}, "probe": "primary_key", "title": "первичный ключ журнала", "value": ["radio_id"]}, {"args": {"table": "podpolye.radiograms"}, "probe": "uniques", "title": "уникальность в журнале", "value": ["body"]}, {"args": {"table": "podpolye.radiograms", "columns": ["sent_at"]}, "probe": "default_kind", "title": "время проставляется само", "value": [["sent_at", "текущий момент"]]}, {"args": {"table": "podpolye.radiograms", "column": "sent_at"}, "probe": "rows_filled", "title": "отметка времени заполнена", "value": true}, {"args": {"cases": [{"row": {"body": "связь установлена", "radio_id": 2}, "label": "повтор текста"}, {"row": {"body": "иное донесение", "radio_id": 1}, "label": "повтор номера"}, {"row": {"body": "эшелон на восток", "radio_id": 2}, "label": "новое"}], "table": "podpolye.radiograms"}, "probe": "accepts", "title": "повтор текста, повтор номера и новое донесение", "value": [["повтор текста", false], ["повтор номера", false], ["новое", true]]}], "reveal": "Что проверяется: столбцы журнала донесений; первичный ключ журнала; уникальность в журнале; время проставляется само; отметка времени заполнена; повтор текста, повтор номера и новое донесение."}	{ddl,table,unique,default}
96	4	1	Роли отряда	Условное имя явки всплыло в немецкой сводке, а работали до сих пор все под одной учётной записью. Разграничение начинается с ролей: командование, разведка, агентура. Это группы, а не люди — входить под ними нельзя.\r\n\r\nЗаведите три роли: commanders, scouts и spies. Входить в систему непосредственно под ними нельзя.	Роль заводится оператором CREATE ROLE <имя> — по одному на каждую. Право входа по умолчанию выключено, поэтому дописывать ничего не нужно; главное — не написать CREATE USER, который как раз вход разрешает.	CREATE ROLE commanders; CREATE ROLE scouts; CREATE ROLE spies	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)"], "expect": [{"args": {"names": ["commanders", "scouts", "spies"]}, "probe": "roles", "title": "роли отряда", "value": [["commanders", false, false], ["scouts", false, false], ["spies", false, false]]}, {"args": {}, "probe": "all_roles", "title": "посторонних ролей не заведено", "value": ["commanders", "scouts", "spies"]}, {"args": {}, "probe": "all_memberships", "title": "роли друг в друга не вложены", "value": []}], "reveal": "Что проверяется: роли отряда; посторонних ролей не заведено; роли друг в друга не вложены."}	{dcl,role}
97	4	2	Полный доступ командованию	Семён отвечает за отряд целиком; урезать его в правах бессмысленно — он возьмёт их обратно окольным путём. Полный доступ начинается с права войти в саму схему.\r\n\r\nОткройте командованию полный доступ: роль commanders должна получить право пользоваться схемой podpolye и все привилегии на таблицы podpolye.depots и podpolye.safehouses.	Право войти в схему и права на таблицы выдаются разными операторами: GRANT USAGE ON SCHEMA podpolye TO commanders и GRANT ALL PRIVILEGES ON <таблицы> TO commanders. Слово ALL PRIVILEGES заменяет перечисление всех прав, а таблицы можно указать через запятую.	GRANT USAGE ON SCHEMA podpolye TO commanders; GRANT ALL PRIVILEGES ON podpolye.depots, podpolye.safehouses TO commanders	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)", "CREATE ROLE commanders", "CREATE ROLE scouts", "CREATE ROLE spies"], "expect": [{"args": {"schema": "podpolye", "grantee": "commanders"}, "probe": "schema_privs", "title": "права командования на схему", "value": ["USAGE"]}, {"args": {"privs": ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES", "TRIGGER"], "table": "podpolye.depots", "grantee": "commanders"}, "probe": "has_privs", "title": "права командования на склады", "value": [["SELECT", true], ["INSERT", true], ["UPDATE", true], ["DELETE", true], ["TRUNCATE", true], ["REFERENCES", true], ["TRIGGER", true]]}, {"args": {"privs": ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES", "TRIGGER"], "table": "podpolye.safehouses", "grantee": "commanders"}, "probe": "has_privs", "title": "права командования на явки", "value": [["SELECT", true], ["INSERT", true], ["UPDATE", true], ["DELETE", true], ["TRUNCATE", true], ["REFERENCES", true], ["TRIGGER", true]]}, {"args": {"table": "podpolye.safehouses", "grantee": "commanders"}, "probe": "grantable", "title": "передоверия не давали", "value": [["DELETE", false], ["INSERT", false], ["REFERENCES", false], ["SELECT", false], ["TRIGGER", false], ["TRUNCATE", false], ["UPDATE", false]]}, {"args": {"privs": ["SELECT", "UPDATE"], "table": "podpolye.safehouses", "grantees": ["scouts", "spies", "PUBLIC"]}, "probe": "privs_matrix", "title": "остальным ничего не открыли", "value": [["scouts", "SELECT", false], ["scouts", "UPDATE", false], ["spies", "SELECT", false], ["spies", "UPDATE", false], ["PUBLIC", "SELECT", false], ["PUBLIC", "UPDATE", false]]}], "reveal": "Что проверяется: права командования на схему; права командования на склады; права командования на явки; передоверия не давали; остальным ничего не открыли."}	{dcl,grant}
98	4	3	Разведке — только перо	Разведчику нужно одно: принести новое. Увидел эшелон — вписал строку. Право править и стирать чужие записи в руках противника опаснее, чем право читать: тихо изменённые координаты уведут удар в жилой квартал.\r\n\r\nВыдайте роли scouts право пользоваться схемой podpolye и на таблицу podpolye.depots — только чтение и добавление строк. Права изменять и удалять записи у неё быть не должно.	Права перечисляются через запятую в одном операторе: GRANT SELECT, INSERT ON podpolye.depots TO scouts. Отдельным оператором — доступ к схеме: GRANT USAGE ON SCHEMA podpolye TO scouts. ALL здесь писать нельзя — это выдаст лишнее.	GRANT USAGE ON SCHEMA podpolye TO scouts; GRANT SELECT, INSERT ON podpolye.depots TO scouts	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)", "CREATE ROLE commanders", "CREATE ROLE scouts", "CREATE ROLE spies", "GRANT USAGE ON SCHEMA podpolye TO commanders", "GRANT ALL PRIVILEGES ON podpolye.depots, podpolye.safehouses TO commanders"], "expect": [{"args": {"schema": "podpolye", "grantee": "scouts"}, "probe": "schema_privs", "title": "права разведки на схему", "value": ["USAGE"]}, {"args": {"privs": ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES", "TRIGGER"], "table": "podpolye.depots", "grantee": "scouts"}, "probe": "has_privs", "title": "права разведки на склады", "value": [["SELECT", true], ["INSERT", true], ["UPDATE", false], ["DELETE", false], ["TRUNCATE", false], ["REFERENCES", false], ["TRIGGER", false]]}, {"args": {"table": "podpolye.depots", "grantee": "scouts"}, "probe": "grantable", "title": "передоверия не давали", "value": [["INSERT", false], ["SELECT", false]]}, {"args": {"privs": ["SELECT"], "table": "podpolye.depots", "grantees": ["spies", "PUBLIC"]}, "probe": "privs_matrix", "title": "остальным складов не открывали", "value": [["spies", "SELECT", false], ["PUBLIC", "SELECT", false]]}, {"args": {}, "probe": "all_memberships", "title": "роли друг в друга не вложены", "value": []}, {"args": {"schema": "podpolye"}, "probe": "default_privs", "title": "прав по умолчанию не заводили", "value": []}], "reveal": "Что проверяется: права разведки на схему; права разведки на склады; передоверия не давали; остальным складов не открывали; роли друг в друга не вложены; прав по умолчанию не заводили."}	{dcl,grant}
99	4	4	Явки по столбцам	В ночь спешки агентам открыли таблицу явок целиком: адреса, хозяева, всё. Агенту нужны только номер явки и сектор; улица и хозяин не должны быть доступны ему ни при каких условиях. Сначала отобрать всё — потом вернуть ровно необходимое.\r\n\r\nОтберите у роли spies все права на таблицу podpolye.safehouses, а затем выдайте ей право читать только два столбца — house_id и sector.	Сначала REVOKE ALL ON podpolye.safehouses FROM spies. Права на отдельные столбцы выдаются перечислением в скобках сразу после названия права: GRANT SELECT (house_id, sector) ON podpolye.safehouses TO spies.	REVOKE ALL ON podpolye.safehouses FROM spies; GRANT SELECT (house_id, sector) ON podpolye.safehouses TO spies	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)", "CREATE ROLE commanders", "CREATE ROLE scouts", "CREATE ROLE spies", "GRANT USAGE ON SCHEMA podpolye TO commanders", "GRANT ALL PRIVILEGES ON podpolye.depots, podpolye.safehouses TO commanders", "GRANT USAGE ON SCHEMA podpolye TO scouts", "GRANT SELECT, INSERT ON podpolye.depots TO scouts", "GRANT USAGE ON SCHEMA podpolye TO spies", "GRANT SELECT ON podpolye.safehouses TO spies"], "expect": [{"args": {"privs": ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES", "TRIGGER"], "table": "podpolye.safehouses", "grantee": "spies"}, "probe": "has_privs", "title": "права на таблицу явок целиком", "value": [["SELECT", false], ["INSERT", false], ["UPDATE", false], ["DELETE", false], ["TRUNCATE", false], ["REFERENCES", false], ["TRIGGER", false]]}, {"args": {"table": "podpolye.safehouses", "grantee": "spies"}, "probe": "column_grants_all", "title": "права на отдельные столбцы", "value": [["house_id", "SELECT", false], ["sector", "SELECT", false]]}, {"args": {"table": "podpolye.safehouses", "columns": ["house_id", "sector", "street", "keeper"], "grantee": "spies"}, "probe": "can_read_columns", "title": "что агент может прочитать", "value": [["house_id", true], ["sector", true], ["street", false], ["keeper", false]]}, {"args": {"table": "podpolye.safehouses", "grantee": "spies"}, "probe": "grantable", "title": "передоверия не давали", "value": []}, {"args": {"privs": ["SELECT"], "table": "podpolye.safehouses", "grantees": ["scouts", "PUBLIC"]}, "probe": "privs_matrix", "title": "посторонним явки не открывали", "value": [["scouts", "SELECT", false], ["PUBLIC", "SELECT", false]]}, {"args": {"schema": "podpolye"}, "probe": "default_privs", "title": "прав по умолчанию не заводили", "value": []}], "reveal": "Что проверяется: права на таблицу явок целиком; права на отдельные столбцы; что агент может прочитать; передоверия не давали; посторонним явки не открывали; прав по умолчанию не заводили."}	{dcl,revoke,column_privileges}
100	4	5	Явки по строкам	Вторая линия обороны: проваленная явка опаснее незнания — агент придёт по адресу, который уже под наблюдением. Строки с провалом должны исчезнуть из его выборки на уровне правила самой таблицы.\r\n\r\nВключите на таблице podpolye.safehouses защиту строк и создайте политику с именем house_open, разрешающую роли spies читать только те строки, где is_burnt равно false.	Защита строк включается отдельным оператором: ALTER TABLE ... ENABLE ROW LEVEL SECURITY. Правило видимости — политикой: CREATE POLICY house_open ON podpolye.safehouses FOR SELECT TO spies USING (is_burnt = false). Пока защита не включена, политика не действует.	ALTER TABLE podpolye.safehouses ENABLE ROW LEVEL SECURITY; CREATE POLICY house_open ON podpolye.safehouses FOR SELECT TO spies USING (is_burnt = false)	{"mode": "model", "post": ["INSERT INTO podpolye.safehouses VALUES (7,'Мост','Речная, 4','Игнат','D',false),(8,'Склеп','Тихая, 1','Ким','D',true)"], "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)", "CREATE ROLE commanders", "CREATE ROLE scouts", "CREATE ROLE spies", "GRANT USAGE ON SCHEMA podpolye TO commanders", "GRANT ALL PRIVILEGES ON podpolye.depots, podpolye.safehouses TO commanders", "GRANT USAGE ON SCHEMA podpolye TO scouts", "GRANT SELECT, INSERT ON podpolye.depots TO scouts", "GRANT USAGE ON SCHEMA podpolye TO spies", "GRANT SELECT (house_id, sector) ON podpolye.safehouses TO spies"], "expect": [{"args": {"table": "podpolye.safehouses"}, "probe": "rls", "title": "защита строк на таблице явок", "value": [true, false]}, {"args": {"table": "podpolye.safehouses"}, "probe": "policies", "title": "политика", "value": [["house_open", "SELECT", "spies"]]}, {"args": {"role": "spies", "table": "podpolye.safehouses", "columns": ["house_id"], "order_by": "house_id"}, "probe": "visible_rows", "title": "номера явок, видимых агенту", "value": [[1], [3], [4], [6], [7]]}, {"args": {"privs": ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES", "TRIGGER"], "table": "podpolye.safehouses", "grantee": "spies"}, "probe": "has_privs", "title": "лишних прав агенту не выдали", "value": [["SELECT", false], ["INSERT", false], ["UPDATE", false], ["DELETE", false], ["TRUNCATE", false], ["REFERENCES", false], ["TRIGGER", false]]}, {"args": {"table": "podpolye.safehouses", "grantee": "spies"}, "probe": "column_grants_all", "title": "столбцовые права не расширяли", "value": [["house_id", "SELECT", false], ["sector", "SELECT", false]]}], "reveal": "Что проверяется: защита строк на таблице явок; политика; номера явок, видимых агенту; лишних прав агенту не выдали; столбцовые права не расширяли."}	{dcl,rls,policy}
101	4	6	Боец Гриша	Пора заводить людей поимённо. Если Гришу возьмут, отключить надо будет именно его, не тронув остальных. Личных прав не выдавать ни одного: боец получает их только через роль.\r\n\r\nЗаведите учётную запись grisha, которая может входить в систему, и включите её в роль scouts. Никаких прав на таблицы непосредственно этой учётной записи выдавать не нужно.	Учётная запись с правом входа — CREATE ROLE grisha LOGIN (или CREATE USER grisha). Включение в роль — тем же словом, что и выдача прав: GRANT scouts TO grisha. На таблицы при этом не выдаётся ничего.	CREATE ROLE grisha LOGIN; GRANT scouts TO grisha	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)", "CREATE ROLE commanders", "CREATE ROLE scouts", "CREATE ROLE spies", "GRANT USAGE ON SCHEMA podpolye TO commanders", "GRANT ALL PRIVILEGES ON podpolye.depots, podpolye.safehouses TO commanders", "GRANT USAGE ON SCHEMA podpolye TO scouts", "GRANT SELECT, INSERT ON podpolye.depots TO scouts", "GRANT USAGE ON SCHEMA podpolye TO spies", "GRANT SELECT (house_id, sector) ON podpolye.safehouses TO spies", "ALTER TABLE podpolye.safehouses ENABLE ROW LEVEL SECURITY", "CREATE POLICY house_open ON podpolye.safehouses FOR SELECT TO spies USING (is_burnt = false)"], "expect": [{"args": {"names": ["grisha"]}, "probe": "roles", "title": "учётная запись бойца", "value": [["grisha", true, false]]}, {"args": {"member": "grisha"}, "probe": "member_of", "title": "в какие роли включён боец", "value": ["scouts"]}, {"args": {"member": "grisha"}, "probe": "member_admin", "title": "раздавать членство боец не может", "value": [["scouts", false]]}, {"args": {"table": "podpolye.depots", "grantee": "grisha"}, "probe": "direct_table_grants", "title": "личных прав на таблицы нет", "value": []}, {"args": {"table": "podpolye.depots", "grantee": "grisha"}, "probe": "column_grants_all", "title": "личных прав на столбцы нет", "value": []}, {"args": {"privs": ["SELECT", "INSERT"], "table": "podpolye.depots", "grantee": "grisha"}, "probe": "has_privs", "title": "права пришли через роль", "value": [["SELECT", true], ["INSERT", true]]}, {"args": {"table": "podpolye.depots"}, "probe": "public_privs", "title": "посторонним ничего не открыли", "value": []}, {"args": {"schema": "podpolye"}, "probe": "default_privs", "title": "прав по умолчанию не заводили", "value": []}], "reveal": "Что проверяется: учётная запись бойца; в какие роли включён боец; раздавать членство боец не может; личных прав на таблицы нет; личных прав на столбцы нет; права пришли через роль; посторонним ничего не открыли; прав по умолчанию не заводили."}	{dcl,role,membership}
102	4	7	Отзыв у PUBLIC	Права на таблицу явок в спешке выдали PUBLIC — всем, кто сумеет подключиться. Вот почему имя явки оказалось в немецкой сводке: взламывать ничего не пришлось.\r\n\r\nОтберите у PUBLIC все права на таблицу podpolye.safehouses. Права, выданные роли commanders отдельно, при этом трогать нельзя.	PUBLIC в операторе отзыва пишется как обычное имя роли: REVOKE ALL ON podpolye.safehouses FROM PUBLIC. Отзыв у PUBLIC не трогает права, выданные ролям поимённо, — их отбирать не нужно.	REVOKE ALL ON podpolye.safehouses FROM PUBLIC	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)", "CREATE ROLE commanders", "CREATE ROLE scouts", "CREATE ROLE spies", "GRANT USAGE ON SCHEMA podpolye TO commanders", "GRANT ALL PRIVILEGES ON podpolye.depots, podpolye.safehouses TO commanders", "GRANT USAGE ON SCHEMA podpolye TO scouts", "GRANT SELECT, INSERT ON podpolye.depots TO scouts", "GRANT USAGE ON SCHEMA podpolye TO spies", "GRANT SELECT (house_id, sector) ON podpolye.safehouses TO spies", "ALTER TABLE podpolye.safehouses ENABLE ROW LEVEL SECURITY", "CREATE POLICY house_open ON podpolye.safehouses FOR SELECT TO spies USING (is_burnt = false)", "CREATE ROLE grisha LOGIN", "GRANT scouts TO grisha", "GRANT SELECT ON podpolye.safehouses TO PUBLIC"], "expect": [{"args": {"table": "podpolye.safehouses"}, "probe": "public_privs", "title": "права PUBLIC на явки", "value": []}, {"args": {"privs": ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES", "TRIGGER"], "table": "podpolye.safehouses", "grantee": "commanders"}, "probe": "has_privs", "title": "права командования не тронуты", "value": [["SELECT", true], ["INSERT", true], ["UPDATE", true], ["DELETE", true], ["TRUNCATE", true], ["REFERENCES", true], ["TRIGGER", true]]}, {"args": {"privs": ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES", "TRIGGER"], "table": "podpolye.safehouses", "grantee": "spies"}, "probe": "has_privs", "title": "агентура сверх столбцов ничего не получила", "value": [["SELECT", false], ["INSERT", false], ["UPDATE", false], ["DELETE", false], ["TRUNCATE", false], ["REFERENCES", false], ["TRIGGER", false]]}, {"args": {"privs": ["SELECT", "INSERT", "UPDATE", "DELETE", "TRUNCATE", "REFERENCES", "TRIGGER"], "table": "podpolye.safehouses", "grantee": "scouts"}, "probe": "has_privs", "title": "разведке явки не открывали", "value": [["SELECT", false], ["INSERT", false], ["UPDATE", false], ["DELETE", false], ["TRUNCATE", false], ["REFERENCES", false], ["TRIGGER", false]]}, {"args": {"table": "podpolye.safehouses"}, "probe": "columns", "title": "таблица явок цела", "value": [["house_id", "integer", null, true, false], ["code_name", "character varying", 20, true, false], ["street", "character varying", 40, true, false], ["keeper", "character varying", 20, true, false], ["sector", "character", 1, true, false], ["is_burnt", "boolean", null, true, true]]}], "reveal": "Что проверяется: права PUBLIC на явки; права командования не тронуты; агентура сверх столбцов ничего не получила; разведке явки не открывали; таблица явок цела."}	{dcl,revoke,public}
103	4	8	Права наперёд	Каждая новая таблица появляется закрытой, и разведка узнаёт о ней, когда кто-нибудь вспомнит выдать права. Правило должно действовать наперёд: всё, что появится в схеме, разведка видит сразу.\r\n\r\nЗадайте право по умолчанию: все таблицы, которые впредь будут создаваться в схеме podpolye, должны становиться доступными роли scouts на чтение.	Права по умолчанию задаются оператором ALTER DEFAULT PRIVILEGES IN SCHEMA podpolye GRANT SELECT ON TABLES TO scouts. Он не трогает существующие таблицы, а описывает, что произойдёт с будущими.	ALTER DEFAULT PRIVILEGES IN SCHEMA podpolye GRANT SELECT ON TABLES TO scouts	{"mode": "model", "post": ["CREATE TABLE podpolye.trains(train_id integer PRIMARY KEY, cargo_ru text)"], "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)", "CREATE ROLE commanders", "CREATE ROLE scouts", "CREATE ROLE spies", "GRANT USAGE ON SCHEMA podpolye TO commanders", "GRANT ALL PRIVILEGES ON podpolye.depots, podpolye.safehouses TO commanders", "GRANT USAGE ON SCHEMA podpolye TO scouts", "GRANT SELECT, INSERT ON podpolye.depots TO scouts", "GRANT USAGE ON SCHEMA podpolye TO spies", "GRANT SELECT (house_id, sector) ON podpolye.safehouses TO spies", "ALTER TABLE podpolye.safehouses ENABLE ROW LEVEL SECURITY", "CREATE POLICY house_open ON podpolye.safehouses FOR SELECT TO spies USING (is_burnt = false)", "CREATE ROLE grisha LOGIN", "GRANT scouts TO grisha"], "expect": [{"args": {"schema": "podpolye"}, "probe": "default_privs", "title": "правило по умолчанию в схеме подполья", "value": [["r", "scouts", "SELECT"]]}, {"args": {"schema": "public"}, "probe": "default_privs", "title": "в других схемах правил не заводили", "value": []}, {"args": {"privs": ["SELECT"], "table": "podpolye.trains", "grantee": "scouts"}, "probe": "has_privs", "title": "новая таблица сразу доступна разведке", "value": [["SELECT", true]]}, {"args": {"privs": ["SELECT"], "table": "podpolye.trains", "grantees": ["spies", "PUBLIC"]}, "probe": "privs_matrix", "title": "посторонним она недоступна", "value": [["spies", "SELECT", false], ["PUBLIC", "SELECT", false]]}, {"args": {"schema": "podpolye", "grantee": "scouts"}, "probe": "schema_privs", "title": "доступ разведки к схеме не тронут", "value": ["USAGE"]}, {"args": {}, "probe": "all_memberships", "title": "членство ролей не меняли", "value": [["grisha", "scouts"]]}], "reveal": "Что проверяется: правило по умолчанию в схеме подполья; в других схемах правил не заводили; новая таблица сразу доступна разведке; посторонним она недоступна; доступ разведки к схеме не тронут; членство ролей не меняли."}	{dcl,default_privileges}
105	4	10	Защита от владельца	Политика защиты строк не действует на владельца таблицы: тот, кто доберётся до учётной записи узла, увидит все явки разом. Правило надо сделать обязательным и для владельца — пусть узел, оставшись без хозяев, не выдаст никого.\r\n\r\nВключите для таблицы podpolye.safehouses принудительную защиту строк, чтобы действующие политики распространялись и на владельца таблицы.	Принудительный режим включается оператором ALTER TABLE podpolye.safehouses FORCE ROW LEVEL SECURITY. Обычный ENABLE уже включён раньше — FORCE добавляется поверх него и распространяет правила на владельца.	ALTER TABLE podpolye.safehouses FORCE ROW LEVEL SECURITY	{"mode": "model", "setup": ["CREATE SCHEMA podpolye", "CREATE TABLE podpolye.depots(\\n    depot_id   integer PRIMARY KEY,\\n    depot_name varchar(40) NOT NULL,\\n    sector     char(1) NOT NULL,\\n    capacity_t integer)", "INSERT INTO podpolye.depots VALUES (1,'Арсенал №1','A',800),(2,'Топливный склад','A',450),(3,'Продовольственный','B',300)", "CREATE TABLE podpolye.safehouses(\\n    house_id  integer PRIMARY KEY,\\n    code_name varchar(20) NOT NULL,\\n    street    varchar(40) NOT NULL,\\n    keeper    varchar(20) NOT NULL,\\n    sector    char(1) NOT NULL,\\n    is_burnt  boolean NOT NULL DEFAULT false)", "INSERT INTO podpolye.safehouses VALUES (1,'Мельница','Заречная, 7','Прохор','A',false),(2,'Аптека','Соборная, 14','Вера','A',true),(3,'Сапожник','Кузнечная, 3','Пётр','B',false),(4,'Пекарня','Хлебный пер., 2','Дарья','B',false),(5,'Часовщик','Ратушная, 21','Артур','C',true),(6,'Прачечная','Луговая, 9','Клава','C',false)", "CREATE ROLE commanders", "CREATE ROLE scouts", "CREATE ROLE spies", "GRANT USAGE ON SCHEMA podpolye TO commanders", "GRANT ALL PRIVILEGES ON podpolye.depots, podpolye.safehouses TO commanders", "GRANT USAGE ON SCHEMA podpolye TO scouts", "GRANT SELECT, INSERT ON podpolye.depots TO scouts", "GRANT USAGE ON SCHEMA podpolye TO spies", "GRANT SELECT (house_id, sector) ON podpolye.safehouses TO spies", "ALTER TABLE podpolye.safehouses ENABLE ROW LEVEL SECURITY", "CREATE POLICY house_open ON podpolye.safehouses FOR SELECT TO spies USING (is_burnt = false)", "CREATE ROLE grisha LOGIN", "GRANT scouts TO grisha", "ALTER DEFAULT PRIVILEGES IN SCHEMA podpolye GRANT SELECT ON TABLES TO scouts", "GRANT SELECT ON podpolye.safehouses TO commanders WITH GRANT OPTION"], "expect": [{"args": {"table": "podpolye.safehouses"}, "probe": "rls", "title": "принудительная защита строк", "value": [true, true]}, {"args": {"table": "podpolye.safehouses"}, "probe": "policies", "title": "политика на месте", "value": [["house_open", "SELECT", "spies"]]}, {"args": {"role": "owner", "table": "podpolye.safehouses", "columns": ["house_id"], "order_by": "house_id"}, "probe": "visible_rows", "title": "владелец больше не видит ни одной явки", "value": []}, {"args": {"table": "podpolye.safehouses"}, "probe": "public_privs", "title": "посторонним прав не раздавали", "value": []}], "reveal": "Что проверяется: принудительная защита строк; политика на месте; владелец больше не видит ни одной явки; посторонним прав не раздавали."}	{dcl,rls,force}
23	0	23	Годовой отчет сражений	Определите, в какие годы начинались боевые операции, и подсчитайте их количество. Выведите год начала (как year) и количество (как battles_count). Отсортируйте по году. (Учитывайте только год начала start_date).\n\nПоля в результирующей таблице: `year`, `battles_count`	Извлеките год из даты с помощью `EXTRACT` и сгруппируйте по нему	\N	{"data": [[1941.0, 9], [1942.0, 6], [1943.0, 4], [1944.0, 4], [1945.0, 7]], "columns": ["year", "battles_count"], "row_count": 5}	{easy}
24	0	24	Возраст призывника	Рассчитайте возраст солдат на момент призыва (год призыва минус год рождения). Назовите колонку enlistment_age. Выведите ФИО и возраст.\n\nПоля в результирующей таблице: `full_name`, `enlistment_age`	Используйте функцию `AGE` для расчета разницы между датами	\N	{"data": [["Иванов Алексей Петрович", 18.0], ["Смирнова Анна Васильевна", 17.0], ["Петров Дмитрий Иванович", 23.0], ["Козлов Николай Семёнович", 21.0], ["Фёдорова Мария Ивановна", 21.0], ["Жуков Андрей Григорьевич", 26.0], ["Павлов Яков Фёдорович", 25.0], ["Зайцева Людмила Михайловна", 19.0], ["Громов Михаил Сергеевич", 23.0], ["Орлова Вера Павловна", 22.0], ["Новиков Александр Иванович", 20.0], ["Васнецова Татьяна Дмитриевна", 20.0], ["Кузнецов Пётр Васильевич", 25.0], ["Белов Алексей Николаевич", 19.0], ["Соколова Ольга Ивановна", 22.0], ["Морозов Иван Кузьмич", 27.0], ["Волкова Елена Сергеевна", 17.0], ["Ткаченко Григорий Петрович", 17.0], ["Беляев Павел Дмитриевич", 29.0], ["Семёнова Валентина Михайловна", 22.0], ["Ковалёв Сергей Николаевич", 18.0], ["Мельникова Галина Ивановна", 18.0], ["Фёдоров Игорь Васильевич", 28.0], ["Горбачёв Алексей Дмитриевич", 17.0], ["Сидорова Екатерина Петровна", 23.0], ["Смирнов Василий Иванович", 30.0], ["Крылова Надежда Фёдоровна", 18.0], ["Орлов Денис Сергеевич", 17.0], ["Жукова Елена Викторовна", 19.0], ["Гришин Алексей Петрович", 23.0], ["Ткаченко Иван Григорьевич", 21.0], ["Воронцова Лидия Павловна", 19.0], ["Жуковский Виктор Михайлович", 26.0], ["Морозова Анна Сергеевна", 20.0], ["Кузнецов Артём Игоревич", 17.0], ["Соколовская Надежда Викторовна", 18.0], ["Белов Дмитрий Николаевич", 25.0], ["Громова Екатерина Ивановна", 18.0], ["Фролов Павел Сергеевич", 16.0], ["Ковалёва Ольга Дмитриевна", 21.0]], "columns": ["full_name", "enlistment_age"], "row_count": 40}	{easy}
1	0	1	Архив личного состава	Составьте список всех военнослужащих с указанием их полных имен и годов рождения. Это необходимо для анализа возрастного состава армии и планирования ресурсов.\n\nПоля в результирующей таблице: `full_name`, `birth_year`	Используйте таблицу `soldier`, выбрав два ключевых столбца.	\N	{"data": [["Иванов Алексей Петрович", 1923], ["Смирнова Анна Васильевна", 1925], ["Петров Дмитрий Иванович", 1918], ["Козлов Николай Семёнович", 1920], ["Фёдорова Мария Ивановна", 1922], ["Жуков Андрей Григорьевич", 1915], ["Павлов Яков Фёдорович", 1917], ["Зайцева Людмила Михайловна", 1924], ["Громов Михаил Сергеевич", 1919], ["Орлова Вера Павловна", 1921], ["Новиков Александр Иванович", 1924], ["Васнецова Татьяна Дмитриевна", 1923], ["Кузнецов Пётр Васильевич", 1916], ["Белов Алексей Николаевич", 1925], ["Соколова Ольга Ивановна", 1920], ["Морозов Иван Кузьмич", 1914], ["Волкова Елена Сергеевна", 1926], ["Ткаченко Григорий Петрович", 1927], ["Беляев Павел Дмитриевич", 1912], ["Семёнова Валентина Михайловна", 1920], ["Ковалёв Сергей Николаевич", 1925], ["Мельникова Галина Ивановна", 1924], ["Фёдоров Игорь Васильевич", 1913], ["Горбачёв Алексей Дмитриевич", 1926], ["Сидорова Екатерина Петровна", 1921], ["Смирнов Василий Иванович", 1911], ["Крылова Надежда Фёдоровна", 1925], ["Орлов Денис Сергеевич", 1927], ["Жукова Елена Викторовна", 1923], ["Гришин Алексей Петрович", 1918], ["Ткаченко Иван Григорьевич", 1920], ["Воронцова Лидия Павловна", 1924], ["Жуковский Виктор Михайлович", 1915], ["Морозова Анна Сергеевна", 1922], ["Кузнецов Артём Игоревич", 1926], ["Соколовская Надежда Викторовна", 1923], ["Белов Дмитрий Николаевич", 1917], ["Громова Екатерина Ивановна", 1925], ["Фролов Павел Сергеевич", 1928], ["Ковалёва Ольга Дмитриевна", 1921]], "columns": ["full_name", "birth_year"], "row_count": 40}	{first_any_level,supply,easy}
12	0	11	Короткие названия	Найдите снаряжение, название которого состоит ровно из 4 символов. Возможно, это кодированные обозначения.\n\nПоля в результирующей таблице: `item_name`	Используйте `LIKE` с четырьмя символами подчеркивания `____`	SELECT item_name FROM equipment WHERE item_name LIKE '____';	{"data": [["Т-34"], ["Ил-2"], ["М-31"], ["ИС-2"], ["ПТРД"]], "columns": ["item_name"], "row_count": 5}	{easy,like}
13	0	12	Тип операции	Выявите бои, в названии которых есть слова «освобождение» или «оборона». Это поможет классифицировать сражения по их целям.\n\nПоля в результирующей таблице: `battle_name`	Примените POSIX-оператор `|` для поиска по двум ключевым словам	SELECT battle_name FROM battle WHERE battle_name ~ '(Освобождение|Оборона)';	{"data": [["Оборона Брестской крепости"], ["Оборона Севастополя"], ["Оборона Заполярья"], ["Оборона Брестской крепости"], ["Оборона Тулы"]], "columns": ["battle_name"], "row_count": 5}	{easy}
106	5	1	Возраст призыва	Напишите скалярную функцию get_enlistment_age(p_soldier_id INT), возвращающую возраст солдата на момент призыва (год призыва из enlistment_date минус birth_year).	Используйте CREATE OR REPLACE FUNCTION get_enlistment_age(p_soldier_id INT) RETURNS INT AS $$ ... $$ LANGUAGE plpgsql;	CREATE OR REPLACE FUNCTION get_enlistment_age(p_soldier_id INT) RETURNS INT AS $$ DECLARE v_age INT; BEGIN SELECT (EXTRACT(YEAR FROM enlistment_date) - birth_year)::INT INTO v_age FROM soldier WHERE id = p_soldier_id; RETURN v_age; END; $$ LANGUAGE plpgsql;	{"data": [[18]], "mode": "ddl", "columns": ["get_enlistment_age"], "test_query": "SELECT get_enlistment_age(1);"}	{plpgsql,function,scalar,mission5}
108	5	3	Перевод военнослужащего	Напишите хранимую процедуру transfer_soldier(p_soldier_id INT, p_new_unit_id INT), которая переводит солдата в новую часть: закрывает текущую службу (end_date = CURRENT_DATE, где end_date IS NULL) и создает новую запись о службе с unit_id = p_new_unit_id и start_date = CURRENT_DATE.	Используйте CREATE OR REPLACE PROCEDURE transfer_soldier(p_soldier_id INT, p_new_unit_id INT) AS $$ BEGIN UPDATE military_service SET end_date = CURRENT_DATE WHERE soldier_id = p_soldier_id AND end_date IS NULL; INSERT INTO military_service (soldier_id, unit_id, start_date) VALUES (p_soldier_id, p_new_unit_id, CURRENT_DATE); END; $$ LANGUAGE plpgsql;	CREATE OR REPLACE PROCEDURE transfer_soldier(p_soldier_id INT, p_new_unit_id INT) AS $$ BEGIN UPDATE military_service SET end_date = CURRENT_DATE WHERE soldier_id = p_soldier_id AND end_date IS NULL; INSERT INTO military_service (soldier_id, unit_id, start_date) VALUES (p_soldier_id, p_new_unit_id, CURRENT_DATE); END; $$ LANGUAGE plpgsql;	{"data": [[2]], "mode": "ddl", "columns": ["unit_id"], "test_query": "CALL transfer_soldier(1, 2); SELECT unit_id FROM military_service WHERE soldier_id = 1 ORDER BY id DESC LIMIT 1;"}	{plpgsql,procedure,mission5}
109	5	4	Аудит поступления техники	Создайте триггерную функцию log_equipment_addition() и триггер trg_after_equipment_insert на таблице equipment (AFTER INSERT FOR EACH ROW), который при добавлении новой техники записывает в таблицу equipment_audit строку с item_name (NEW.item_name) и added_at (CURRENT_DATE).	Триггерная функция должна иметь RETURNS TRIGGER, выполнять INSERT INTO equipment_audit (item_name, added_at) VALUES (NEW.item_name, CURRENT_DATE); RETURN NEW; а триггер: CREATE TRIGGER trg_after_equipment_insert AFTER INSERT ON equipment FOR EACH ROW EXECUTE FUNCTION log_equipment_addition();	CREATE OR REPLACE FUNCTION log_equipment_addition() RETURNS TRIGGER AS $$ BEGIN INSERT INTO equipment_audit (item_name, added_at) VALUES (NEW.item_name, CURRENT_DATE); RETURN NEW; END; $$ LANGUAGE plpgsql; CREATE TRIGGER trg_after_equipment_insert AFTER INSERT ON equipment FOR EACH ROW EXECUTE FUNCTION log_equipment_addition();	{"data": [["Тестовый образец"]], "mode": "ddl", "columns": ["item_name"], "test_query": "INSERT INTO equipment (id, unit_id, equipment_type, item_name, quantity, last_replenishment) VALUES (9999, 1, 'тест', 'Тестовый образец', 1, CURRENT_DATE); SELECT item_name FROM equipment_audit WHERE item_name = 'Тестовый образец';"}	{plpgsql,trigger,audit,mission5}
110	5	5	Контроль возраста призыва	Создайте триггерную функцию validate_soldier_age() и триггер trg_before_soldier_insert на таблице soldier (BEFORE INSERT FOR EACH ROW), который проверяет возраст бойца: если EXTRACT(YEAR FROM NEW.enlistment_date) - NEW.birth_year < 16, вызывается ошибка RAISE EXCEPTION 'Возраст призывника не может быть меньше 16 лет'. В остальных случаях возвращается NEW.	В теле триггерной функции проверьте IF (EXTRACT(YEAR FROM NEW.enlistment_date) - NEW.birth_year) < 16 THEN RAISE EXCEPTION 'Возраст призывника не может быть меньше 16 лет'; END IF; RETURN NEW;	CREATE OR REPLACE FUNCTION validate_soldier_age() RETURNS TRIGGER AS $$ BEGIN IF (EXTRACT(YEAR FROM NEW.enlistment_date) - NEW.birth_year) < 16 THEN RAISE EXCEPTION 'Возраст призывника не может быть меньше 16 лет'; END IF; RETURN NEW; END; $$ LANGUAGE plpgsql; CREATE TRIGGER trg_before_soldier_insert BEFORE INSERT ON soldier FOR EACH ROW EXECUTE FUNCTION validate_soldier_age();	{"mode": "ddl", "test_query": "INSERT INTO soldier (id, full_name, birth_year, rank, branch, enlistment_city, enlistment_date) VALUES (9999, 'Малолетний боец', 1930, 'рядовой', 'пехота', 'Москва', '1941-01-01');", "expect_error": true}	{plpgsql,trigger,validation,mission5}
28	0	28	История воинских частей	Сгруппируйте части по году формирования и подсчитайте их количество. Выведите год формирования (как formation_year) и количество частей (как units_count). Отсортируйте по году формирования.\n\nПоля в результирующей таблице: `formation_year`, `units_count`	Извлеките год из `formation_date` с помощью `EXTRACT`	\N	{"data": [[1939.0, 1], [1941.0, 8], [1942.0, 12], [1943.0, 8], [1944.0, 1]], "columns": ["formation_year", "units_count"], "row_count": 5}	{easy}
14	0	13	Сила в единстве	Подсчитайте количество солдат в каждой воинской части и выведите названия этих подразделений. Это покажет, какие формирования были наиболее многочисленными.\n\nПоля в результирующей таблице: `unit_name`, `total_soldiers`\nПримечание: Отсортируйте результат по названию части (unit_name) в алфавитном порядке..	Используйте JOIN между military_unit и military_service, сгруппируйте по mu.unit_name, выведите SELECT mu.unit_name, COUNT(ms.soldier_id) AS total_soldiers ORDER BY mu.unit_name;	SELECT mu.unit_name, COUNT(ms.soldier_id) AS total_soldiers\nFROM military_unit mu\nJOIN military_service ms ON mu.id = ms.unit_id\nGROUP BY mu.unit_name\nORDER BY mu.unit_name;	{"data": [["1-й отдельный чехословацкий батальон", 2], ["1-й чехословацкий отдельный батальон", 1], ["1-я гвардейская танковая армия", 2], ["1-я морская бригада", 1], ["101-й инженерно-сапёрный батальон", 2], ["101-й полк НКВД", 1], ["101-й учебный полк", 1], ["106-я стрелковая дивизия", 1], ["14-я отдельная штрафная рота", 1], ["150-я стрелковая дивизия", 2], ["16-я воздушная армия", 2], ["18-я дивизия СС \\"Хорст Вессель\\"", 1], ["2-я ударная армия", 1], ["225-й отдельный инженерный батальон", 1], ["28-я дивизия народного ополчения", 1], ["3-я воздушная армия", 1], ["316-я стрелковая дивизия", 2], ["369-й отдельный батальон морской пехоты", 1], ["37-й гвардейский миномётный полк", 1], ["46-й гвардейский ночной бомбардировочный полк", 2], ["585-й женский авиаполк", 1], ["62-я армия", 3], ["64-я стрелковая дивизия", 2], ["8-я гвардейская армия", 1], ["88-й отдельный лыжный батальон", 1], ["Отдельная медико-санитарная рота", 1], ["Отдельный батальон связи №45", 1], ["Отдельный отряд собак-истребителей танков", 1], ["Отдельный отряд собак-миноискателей", 2]], "columns": ["unit_name", "total_soldiers"], "row_count": 29}	{easy}
15	0	14	Средний возраст победителей	Рассчитайте средний возраст солдат на момент окончания войны (1945 год). Назовите столбец average_age. Это ключевой показатель для демографического анализа.\n\nПоля в результирующей таблице: `average_age`	Используйте арифметические операции с `AVG` и `birth_year`	\N	{"data": [[23.875]], "columns": ["average_age"], "row_count": 1}	{easy}
16	0	16	История формирования	Найдите самую раннюю и позднюю даты создания воинских частей. Это отразит этапы развития армии.\n\nПоля в результирующей таблице: `min`, `max`	Используйте агрегатные функции `MIN` и `MAX` для дат	\N	{"data": [["1939-04-20", "1944-01-10"]], "columns": ["min", "max"], "row_count": 1}	{easy}
17	0	17	Идентификация званий	Создайте строку, объединяющую имя солдата и его звание в формате "ФИО (звание)". Назовите получившееся поле soldier_info. Это упростит работу с архивными записями.\n\nПоля в результирующей таблице: `soldier_info`	Конкатенация строк с использованием `||`	\N	{"data": [["Иванов Алексей Петрович (рядовой)"], ["Смирнова Анна Васильевна (медсестра)"], ["Петров Дмитрий Иванович (сержант)"], ["Козлов Николай Семёнович (лейтенант)"], ["Фёдорова Мария Ивановна (санитар)"], ["Жуков Андрей Григорьевич (капитан)"], ["Павлов Яков Фёдорович (сержант)"], ["Зайцева Людмила Михайловна (снайпер)"], ["Громов Михаил Сергеевич (старшина)"], ["Орлова Вера Павловна (радист)"], ["Новиков Александр Иванович (ефрейтор)"], ["Васнецова Татьяна Дмитриевна (разведчик)"], ["Кузнецов Пётр Васильевич (майор)"], ["Белов Алексей Николаевич (рядовой)"], ["Соколова Ольга Ивановна (хирург)"], ["Морозов Иван Кузьмич (полковник)"], ["Волкова Елена Сергеевна (зенитчик)"], ["Ткаченко Григорий Петрович (рядовой)"], ["Беляев Павел Дмитриевич (подполковник)"], ["Семёнова Валентина Михайловна (связист)"], ["Ковалёв Сергей Николаевич (лейтенант)"], ["Мельникова Галина Ивановна (снайпер)"], ["Фёдоров Игорь Васильевич (полковник)"], ["Горбачёв Алексей Дмитриевич (рядовой)"], ["Сидорова Екатерина Петровна (радист)"], ["Смирнов Василий Иванович (генерал-майор)"], ["Крылова Надежда Фёдоровна (санитар)"], ["Орлов Денис Сергеевич (рядовой)"], ["Жукова Елена Викторовна (радист)"], ["Гришин Алексей Петрович (капитан)"], ["Ткаченко Иван Григорьевич (старший сержант)"], ["Воронцова Лидия Павловна (снайпер)"], ["Жуковский Виктор Михайлович (полковник)"], ["Морозова Анна Сергеевна (радист)"], ["Кузнецов Артём Игоревич (рядовой)"], ["Соколовская Надежда Викторовна (хирург)"], ["Белов Дмитрий Николаевич (капитан)"], ["Громова Екатерина Ивановна (зенитчик)"], ["Фролов Павел Сергеевич (рядовой)"], ["Ковалёва Ольга Дмитриевна (разведчик)"]], "columns": ["soldier_info"], "row_count": 40}	{easy}
21	0	21	Анализ надежности	Вычислите дисперсию боевой эффективности для каждого типа частей. Назовите столбец variance и отсортируйте результат по алфавиту. Высокая дисперсия может указывать на нестабильность.\n\nПоля в результирующей таблице: `unit_type`, `variance`	Используйте `VAR_SAMP` для расчета дисперсии	\N	{"data": [["авиация", 27.4625], ["инженерные войска", 0.02], ["лыжные войска", null], ["медицинская", null], ["морская пехота", 21.125], ["общевойсковая", 146.205], ["пехота", 121.09553571428572], ["противник", null], ["реактивная артиллерия", 18.0], ["резерв", null], ["связисты", null], ["спецназ", 68.94333333333333], ["танковые войска", 6.125]], "columns": ["unit_type", "variance"], "row_count": 13}	{easy}
34	0	32	Неуничтоженные враги	Определите вражеские части, которые не были ликвидированы. Отсортируйте результат по убыванию. Это может указывать на сохранившиеся угрозы.\n\nПоля в результирующей таблице: `unit_name`	Используйте `EXCEPT` для исключения уничтоженных частей	\N	{"data": [["Эскадра JG54 \\"Зелёное сердце\\""], ["Люфтваффе: эскадра JG52"]], "columns": ["unit_name"], "row_count": 2}	{easy}
11	0	10	Исключение стрелковых частей	Выведите названия подразделений, не относящихся к стрелковым (не содержащих слово «стрелков» в названии). Это важно для анализа структуры войск.\n\nПоля в результирующей таблице: `unit_name`	Используйте `NOT LIKE '%стрелков%'` для исключения стрелковых частей	SELECT unit_name FROM military_unit WHERE unit_name NOT LIKE '%стрелков%';	{"data": [["62-я армия"], ["1-я гвардейская танковая армия"], ["16-я воздушная армия"], ["7-я гвардейская миномётная дивизия"], ["2-я ударная армия"], ["8-я гвардейская армия"], ["3-я воздушная армия"], ["14-я отдельная штрафная рота"], ["1-я морская бригада"], ["Отдельная медико-санитарная рота"], ["88-й отдельный лыжный батальон"], ["101-й полк НКВД"], ["369-й отдельный батальон морской пехоты"], ["1-й чехословацкий отдельный батальон"], ["585-й женский авиаполк"], ["28-я дивизия народного ополчения"], ["Отдельный отряд собак-истребителей танков"], ["37-й гвардейский миномётный полк"], ["Отдельный батальон связи №45"], ["225-й отдельный инженерный батальон"], ["18-я дивизия СС \\"Хорст Вессель\\""], ["101-й учебный полк"], ["1-й отдельный чехословацкий батальон"], ["46-й гвардейский ночной бомбардировочный полк"], ["101-й инженерно-сапёрный батальон"], ["Отдельный отряд собак-миноискателей"]], "columns": ["unit_name"], "row_count": 26}	{easy,like}
22	0	22	Классификация эффективности	Разделите части на три категории: высокая, средняя и низкая эффективность. Столбец с категориями назовите efficiency_category. Это основа для стратегического планирования. Примечание: "Высокая" (КПД ≥ 90), "Средняя" (70 ≤ КПД < 90), "Низкая" (КПД < 70).\n\nПоля в результирующей таблице: `unit_name`, `efficiency_category`	Примените `CASE` с диапазонами значений `combat_efficiency`	\N	{"data": [["316-я стрелковая дивизия", "Средняя"], ["62-я армия", "Высокая"], ["1-я гвардейская танковая армия", "Высокая"], ["150-я стрелковая дивизия", "Высокая"], ["16-я воздушная армия", "Средняя"], ["7-я гвардейская миномётная дивизия", "Высокая"], ["2-я ударная армия", "Средняя"], ["8-я гвардейская армия", "Высокая"], ["3-я воздушная армия", "Средняя"], ["106-я стрелковая дивизия", "Средняя"], ["14-я отдельная штрафная рота", "Низкая"], ["1-я морская бригада", "Средняя"], ["Отдельная медико-санитарная рота", "Высокая"], ["88-й отдельный лыжный батальон", "Средняя"], ["101-й полк НКВД", "Высокая"], ["369-й отдельный батальон морской пехоты", "Средняя"], ["1-й чехословацкий отдельный батальон", "Средняя"], ["585-й женский авиаполк", "Высокая"], ["28-я дивизия народного ополчения", "Низкая"], ["Отдельный отряд собак-истребителей танков", "Средняя"], ["37-й гвардейский миномётный полк", "Высокая"], ["Отдельный батальон связи №45", "Средняя"], ["225-й отдельный инженерный батальон", "Средняя"], ["18-я дивизия СС \\"Хорст Вессель\\"", "Средняя"], ["101-й учебный полк", "Низкая"], ["64-я стрелковая дивизия", "Высокая"], ["1-й отдельный чехословацкий батальон", "Средняя"], ["46-й гвардейский ночной бомбардировочный полк", "Высокая"], ["101-й инженерно-сапёрный батальон", "Средняя"], ["Отдельный отряд собак-миноискателей", "Средняя"]], "columns": ["unit_name", "efficiency_category"], "row_count": 30}	{easy}
26	0	26	Городская аналитика	Вычислите средний возраст солдат на момент призыва по городам призыва. Выведите название города и средний возраст как avg_age. Результат округлите до целого, а города выведите в обратном алфавитном порядке.\n\nПоля в результирующей таблице: `enlistment_city`, `avg_age`\nПримечание: округленный до целого.	Группировка по городам с использованием `AVG` и арифметических операций. Округление с помощью `ROUND`	\N	{"data": [["Челябинск", 18.0], ["Харьков", 22.0], ["Тула", 27.0], ["Сталинград", 19.0], ["Смоленск", 20.0], ["Севастополь", 18.0], ["Свердловск", 23.0], ["Самара", 29.0], ["Ростов-на-Дону", 20.0], ["Омск", 22.0], ["Одесса", 20.0], ["Новосибирск", 25.0], ["Мурманск", 25.0], ["Москва", 18.0], ["Минск", 25.0], ["Ленинград", 18.0], ["Киев", 23.0], ["Казань", 28.0], ["Горький", 18.0], ["Воронеж", 17.0], ["Волгоград", 25.0], ["Брянск", 17.0]], "columns": ["enlistment_city", "avg_age"], "row_count": 22}	{easy}
27	0	27	Долгие сражения	Найдите бои, длившиеся более 30 дней. Вычисленный столбец назовите duration_days. Результат отсортируйте по убыванию длительности. Такие операции часто становились переломными.\n\nПоля в результирующей таблице: `battle_name`, `duration_days`	Рассчитайте разницу между датами начала и окончания с использованием `HAVING`	\N	{"data": [["Оборона Заполярья", 1190], ["Блокада Ленинграда", 871], ["Ржевская битва", 447], ["Битва за Кавказ", 441], ["Оборона Севастополя", 247], ["Битва за Воронеж", 211], ["Битва за Москву", 202], ["Сталинградская битва", 200], ["Битва за Днепр", 119], ["Будапештская операция", 107], ["Восточно-Прусская операция", 102], ["Демянская операция", 89], ["Операция \\"Багратион\\"", 67], ["Смоленское сражение", 62], ["Курская битва", 49], ["Оборона Тулы", 42], ["Керченско-Эльтигенская операция", 41]], "columns": ["battle_name", "duration_days"], "row_count": 17}	{easy}
29	0	29	Молодая кровь	Для каждой части определите самого молодого солдата. Выведите название части и год рождения самого молодого солдата. Назовите вычисленный столбец youngest_birth_year, а результат отсортируйте по убыванию годов рождения. Это может указывать на пополнение в критический момент.\n\nПоля в результирующей таблице: `unit_name`, `youngest_birth_year`	Используйте `MAX` с годом рождения и группировку по частям	\N	{"data": [["101-й инженерно-сапёрный батальон", 1928], ["Отдельная медико-санитарная рота", 1927], ["225-й отдельный инженерный батальон", 1927], ["1-я морская бригада", 1926], ["Отдельный отряд собак-миноискателей", 1926], ["28-я дивизия народного ополчения", 1926], ["Отдельный батальон связи №45", 1925], ["369-й отдельный батальон морской пехоты", 1925], ["62-я армия", 1925], ["46-й гвардейский ночной бомбардировочный полк", 1925], ["150-я стрелковая дивизия", 1925], ["1-й чехословацкий отдельный батальон", 1924], ["3-я воздушная армия", 1924], ["1-й отдельный чехословацкий батальон", 1924], ["18-я дивизия СС \\"Хорст Вессель\\"", 1923], ["64-я стрелковая дивизия", 1923], ["316-я стрелковая дивизия", 1923], ["106-я стрелковая дивизия", 1923], ["8-я гвардейская армия", 1921], ["Отдельный отряд собак-истребителей танков", 1921], ["101-й полк НКВД", 1920], ["16-я воздушная армия", 1920], ["1-я гвардейская танковая армия", 1920], ["2-я ударная армия", 1919], ["101-й учебный полк", 1918], ["14-я отдельная штрафная рота", 1914], ["585-й женский авиаполк", 1913], ["88-й отдельный лыжный батальон", 1912], ["37-й гвардейский миномётный полк", 1911]], "columns": ["unit_name", "youngest_birth_year"], "row_count": 29}	{easy}
31	0	31	Ветераны частей	Определите солдат, которые были старше всех в своем подразделении. Возможно, это опытные командиры.\n\nПоля в результирующей таблице: `full_name`	Примените подзапрос с `ALL` для сравнения возрастов	\N	{"data": [["Фёдорова Мария Ивановна"], ["Жуков Андрей Григорьевич"], ["Павлов Яков Фёдорович"], ["Зайцева Людмила Михайловна"], ["Громов Михаил Сергеевич"], ["Орлова Вера Павловна"], ["Новиков Александр Иванович"], ["Васнецова Татьяна Дмитриевна"], ["Кузнецов Пётр Васильевич"], ["Морозов Иван Кузьмич"], ["Волкова Елена Сергеевна"], ["Ткаченко Григорий Петрович"], ["Беляев Павел Дмитриевич"], ["Семёнова Валентина Михайловна"], ["Ковалёв Сергей Николаевич"], ["Мельникова Галина Ивановна"], ["Фёдоров Игорь Васильевич"], ["Горбачёв Алексей Дмитриевич"], ["Сидорова Екатерина Петровна"], ["Смирнов Василий Иванович"], ["Крылова Надежда Фёдоровна"], ["Орлов Денис Сергеевич"], ["Жукова Елена Викторовна"], ["Гришин Алексей Петрович"], ["Ткаченко Иван Григорьевич"], ["Жуковский Виктор Михайлович"], ["Морозова Анна Сергеевна"], ["Белов Дмитрий Николаевич"], ["Ковалёва Ольга Дмитриевна"]], "columns": ["full_name"], "row_count": 29}	{easy}
37	1	1	Логистика Сталинградской битвы	Определите общее количество боеприпасов (строго тип снаряжения: «боеприпасы»), выделенных каждой воинской части в Сталинграде. Это поможет оценить обеспеченность войск в критический период обороны.\n\nПоля в результирующей таблице: `unit_id`, `total_ammo`\nПримечание: Отсортируйте результат по возрастанию unit_id..	Используйте JOIN между military_unit и equipment с фильтром mu.location = 'Сталинград' AND e.equipment_type = 'боеприпасы', сгруппируйте по mu.id и добавьте ORDER BY mu.id;	SELECT mu.id AS unit_id, SUM(e.quantity) AS total_ammo\nFROM military_unit mu\nJOIN equipment e ON mu.id = e.unit_id\nWHERE mu.location = 'Сталинград' AND e.equipment_type = 'боеприпасы'\nGROUP BY mu.id\nORDER BY mu.id;	{"data": [[2, 50000], [13, 30000], [18, 40000], [21, 50000], [26, 70000]], "columns": ["unit_id", "total_ammo"], "row_count": 5}	{first_any_level,supply,window,stalingrad,medium}
38	1	3	Поиск героев для награждения	Выявите 20 солдат, участвовавших в наибольшем количестве сражений, и присвойте им ранги. Вычисленные столбцы назовите battles_participated и hero_rank. Это основа для награждения орденами и медалями.\n\nПоля в результирующей таблице: `full_name`, `battles_participated`, `hero_rank`	Соедините soldier, military_service, battle_military_unit и battle. Проверьте периоды службы: ms.start_date <= b.end_date AND (ms.end_date IS NULL OR ms.end_date >= b.start_date). Примените DENSE_RANK() OVER (ORDER BY COUNT(DISTINCT b.id) DESC, s.full_name) и ограничьте вывод 20 записями.	SELECT s.full_name,\n       COUNT(DISTINCT b.id) AS battles_participated,\n       DENSE_RANK() OVER (ORDER BY COUNT(DISTINCT b.id) DESC, s.full_name) AS hero_rank\nFROM soldier s\nJOIN military_service ms ON s.id = ms.soldier_id\nJOIN battle_military_unit bmu ON ms.unit_id = bmu.unit_id\nJOIN battle b ON bmu.battle_id = b.id\nWHERE ms.start_date <= b.end_date AND (ms.end_date IS NULL OR ms.end_date >= b.start_date)\nGROUP BY s.full_name\nORDER BY hero_rank\nLIMIT 20;	{"data": [["Жуковский Виктор Михайлович", 4, 1], ["Орлова Вера Павловна", 4, 2], ["Беляев Павел Дмитриевич", 3, 3], ["Громова Екатерина Ивановна", 3, 4], ["Иванов Алексей Петрович", 3, 5], ["Громов Михаил Сергеевич", 2, 6], ["Зайцева Людмила Михайловна", 2, 7], ["Кузнецов Пётр Васильевич", 2, 8], ["Павлов Яков Фёдорович", 2, 9], ["Петров Дмитрий Иванович", 2, 10], ["Смирнова Анна Васильевна", 2, 11], ["Белов Дмитрий Николаевич", 1, 12], ["Горбачёв Алексей Дмитриевич", 1, 13], ["Жуков Андрей Григорьевич", 1, 14], ["Жукова Елена Викторовна", 1, 15], ["Ковалёв Сергей Николаевич", 1, 16], ["Ковалёва Ольга Дмитриевна", 1, 17], ["Козлов Николай Семёнович", 1, 18], ["Кузнецов Артём Игоревич", 1, 19], ["Морозов Иван Кузьмич", 1, 20]], "columns": ["full_name", "battles_participated", "hero_rank"], "row_count": 20}	{window,medium}
43	1	16	Гендерный баланс	Определите части, где количество мужчин и женщин неравно. Выведите название части military_unit_name и отсортируйте результат в обратном порядке. Это отразит гендерные особенности мобилизации.\n\nПоля в результирующей таблице: `military_unit_name`	Используйте `SUM` с `CASE` для подсчета и фильтрацию через `HAVING`	\N	{"data": [["Отдельный отряд собак-истребителей танков"], ["Отдельный батальон связи №45"], ["Отдельная медико-санитарная рота"], ["8-я гвардейская армия"], ["88-й отдельный лыжный батальон"], ["62-я армия"], ["585-й женский авиаполк"], ["3-я воздушная армия"], ["37-й гвардейский миномётный полк"], ["369-й отдельный батальон морской пехоты"], ["2-я ударная армия"], ["28-я дивизия народного ополчения"], ["225-й отдельный инженерный батальон"], ["1-я морская бригада"], ["1-я гвардейская танковая армия"], ["1-й чехословацкий отдельный батальон"], ["18-я дивизия СС \\"Хорст Вессель\\""], ["14-я отдельная штрафная рота"], ["106-я стрелковая дивизия"], ["101-й учебный полк"], ["101-й полк НКВД"]], "columns": ["military_unit_name"], "row_count": 21}	{window,medium}
77	1	8	Солдаты 1942 года	Выведите список солдат, служба которых началась в 1942 году. Также для каждого солдата выведите название части. Результат отсортируйте по первому столбцу. Это поможет анализировать мобилизацию в критический период.\n\nПоля в результирующей таблице: `full_name`, `unit_name`	Используйте подзапросы для фильтрации дат и объединения таблиц	\N	{"data": [["Белов Дмитрий Николаевич", "1-й отдельный чехословацкий батальон"], ["Громов Михаил Сергеевич", "2-я ударная армия"], ["Жукова Елена Викторовна", "18-я дивизия СС \\"Хорст Вессель\\""], ["Ковалёва Ольга Дмитриевна", "Отдельный отряд собак-миноискателей"], ["Мельникова Галина Ивановна", "1-й чехословацкий отдельный батальон"], ["Морозова Анна Сергеевна", "101-й инженерно-сапёрный батальон"], ["Павлов Яков Фёдорович", "62-я армия"], ["Семёнова Валентина Михайловна", "101-й полк НКВД"], ["Смирнова Анна Васильевна", "62-я армия"], ["Соколова Ольга Ивановна", "16-я воздушная армия"]], "columns": ["full_name", "unit_name"], "row_count": 10}	{medium}
6	0	5	Галерея героев	Создайте список солдат и наград, которые они получили. Это основа для формирования мемориальных архивов.\n\nПоля в результирующей таблице: `full_name`, `medal_name`	Объединение трех таблиц: `soldier`, `soldier_medal` и `medal` через INNER JOIN	\N	{"data": [["Павлов Яков Фёдорович", "Герой Советского Союза"], ["Зайцева Людмила Михайловна", "Медаль \\"За отвагу\\""], ["Жуков Андрей Григорьевич", "Орден Красной Звезды"], ["Громов Михаил Сергеевич", "Орден Отечественной войны"], ["Орлова Вера Павловна", "Орден Славы"], ["Новиков Александр Иванович", "Орден Красной Звезды"], ["Васнецова Татьяна Дмитриевна", "Медаль \\"Партизану Отечественной войны\\""], ["Кузнецов Пётр Васильевич", "Герой Советского Союза"], ["Белов Алексей Николаевич", "Медаль \\"За оборону Сталинграда\\""], ["Соколова Ольга Ивановна", "Медаль \\"За оборону Москвы\\""], ["Иванов Алексей Петрович", "Медаль \\"За отвагу\\""], ["Смирнова Анна Васильевна", "Орден Отечественной войны"], ["Петров Дмитрий Иванович", "Медаль \\"За взятие Берлина\\""]], "columns": ["full_name", "medal_name"], "row_count": 13}	{easy}
10	0	9	Отцовские корни	Найдите солдат с отчеством «Петрович» или «Иванович». Данные могут быть полезны для генеалогических исследований.\n\nПоля в результирующей таблице: `full_name`	Примените POSIX-оператор `|` для выбора одного из двух вариантов	SELECT full_name FROM soldier WHERE full_name ~ '(Петрович|Иванович)$';	{"data": [["Иванов Алексей Петрович"], ["Петров Дмитрий Иванович"], ["Новиков Александр Иванович"], ["Ткаченко Григорий Петрович"], ["Смирнов Василий Иванович"], ["Гришин Алексей Петрович"]], "columns": ["full_name"], "row_count": 6}	{easy}
39	1	4	Анализ эффективности частей	Выведите для каждого военного подразделения его исходную и скорректированную боевую эффективность. Корректировка рассчитывается путем уменьшения исходного показателя (combat_efficiency) пропорционально доле безвозвратных потерь (статусы «убит» и «пропал без вести») от общей численности личного состава подразделения.\n\nПоля в результирующей таблице: `unit_name`, `initial_efficiency`, `loss_percentage`, `adjusted_efficiency`\nПримечание: округленный до 2 знаков; Отсортируйте результат по убыванию initial_efficiency (combat_efficiency), а затем по алфавиту unit_name..	Сгруппируйте солдат по подразделениям. Для подсчета потерь используйте условную агрегацию: COUNT(CASE WHEN s.status IN ('убит', 'пропал без вести') THEN 1 END). Процент потерь равен ROUND(100.0 * потери / всего, 2). Скорректированная эффективность равна ROUND(combat_efficiency * (1.0 - 1.0 * потери / всего), 2).	SELECT mu.unit_name,\n       mu.combat_efficiency AS initial_efficiency,\n       ROUND(100.0 * COUNT(CASE WHEN s.status IN ('убит', 'пропал без вести') THEN 1 END) / COUNT(s.id), 2) AS loss_percentage,\n       ROUND(mu.combat_efficiency * (1.0 - 1.0 * COUNT(CASE WHEN s.status IN ('убит', 'пропал без вести') THEN 1 END) / COUNT(s.id)), 2) AS adjusted_efficiency\nFROM military_unit mu\nJOIN military_service ms ON ms.unit_id = mu.id\nJOIN soldier s ON s.id = ms.soldier_id\nGROUP BY mu.id, mu.unit_name, mu.combat_efficiency\nORDER BY mu.combat_efficiency DESC, mu.unit_name;	{"data": [["8-я гвардейская армия", 98.5, 0.0, 98.5], ["150-я стрелковая дивизия", 97.8, 50.0, 48.9], ["46-й гвардейский ночной бомбардировочный полк", 96.7, 50.0, 48.35], ["37-й гвардейский миномётный полк", 96.5, 100.0, 0.0], ["101-й полк НКВД", 96.2, 100.0, 0.0], ["1-я гвардейская танковая армия", 95.0, 50.0, 47.5], ["585-й женский авиаполк", 94.1, 100.0, 0.0], ["64-я стрелковая дивизия", 92.4, 0.0, 92.4], ["62-я армия", 92.3, 33.33, 61.53], ["Отдельная медико-санитарная рота", 91.7, 100.0, 0.0], ["225-й отдельный инженерный батальон", 89.7, 100.0, 0.0], ["101-й инженерно-сапёрный батальон", 89.5, 50.0, 44.75], ["106-я стрелковая дивизия", 89.3, 100.0, 0.0], ["16-я воздушная армия", 88.9, 0.0, 88.9], ["369-й отдельный батальон морской пехоты", 88.9, 0.0, 88.9], ["18-я дивизия СС \\"Хорст Вессель\\"", 88.1, 0.0, 88.1], ["316-я стрелковая дивизия", 85.5, 50.0, 42.75], ["Отдельный батальон связи №45", 85.2, 0.0, 85.2], ["1-й отдельный чехословацкий батальон", 85.0, 100.0, 0.0], ["3-я воздушная армия", 85.0, 100.0, 0.0], ["1-я морская бригада", 82.4, 0.0, 82.4], ["Отдельный отряд собак-истребителей танков", 82.4, 0.0, 82.4], ["Отдельный отряд собак-миноискателей", 81.3, 0.0, 81.3], ["1-й чехословацкий отдельный батальон", 78.5, 0.0, 78.5], ["2-я ударная армия", 75.2, 0.0, 75.2], ["88-й отдельный лыжный батальон", 73.9, 0.0, 73.9], ["28-я дивизия народного ополчения", 69.8, 100.0, 0.0], ["101-й учебный полк", 68.3, 0.0, 68.3], ["14-я отдельная штрафная рота", 65.8, 0.0, 65.8]], "columns": ["unit_name", "initial_efficiency", "loss_percentage", "adjusted_efficiency"], "row_count": 29}	{cte,medium}
107	5	2	Бойцы подразделения	Напишите табличную функцию get_unit_soldiers(p_unit_name VARCHAR), возвращающую список бойцов, служивших в указанной воинской части.\n\nФормат возвращаемой таблицы (столбцы строго в указанном порядке):\n1. full_name (VARCHAR) — полное имя солдата;\n2. enlistment_city (VARCHAR) — город призыва солдата.	Используйте RETURNS TABLE (full_name VARCHAR, enlistment_city VARCHAR) и RETURN QUERY SELECT s.full_name, s.enlistment_city FROM soldier s JOIN military_service ms ON s.id = ms.soldier_id JOIN military_unit mu ON ms.unit_id = mu.id WHERE mu.unit_name = p_unit_name;	CREATE OR REPLACE FUNCTION get_unit_soldiers(p_unit_name VARCHAR) RETURNS TABLE (full_name VARCHAR, enlistment_city VARCHAR) AS $$ BEGIN RETURN QUERY SELECT s.full_name, s.enlistment_city FROM soldier s JOIN military_service ms ON s.id = ms.soldier_id JOIN military_unit mu ON ms.unit_id = mu.id WHERE mu.unit_name = p_unit_name; END; $$ LANGUAGE plpgsql;	{"data": [["Волкова Елена Сергеевна", "Горький"]], "mode": "ddl", "columns": ["full_name", "enlistment_city"], "test_query": "SELECT * FROM get_unit_soldiers('1-я морская бригада') ORDER BY full_name;"}	{plpgsql,function,table_function,mission5}
85	3	2	Настройка базы	Центр принимает донесения по единому времени, а набирать «podpolye.» перед каждым именем таблицы в полутьме — верный способ ошибиться. Командование штаба требует настроить базу один раз и навсегда.\n\nНастройте базу quest_sandbox: часовой пояс по умолчанию — 'UTC', а путь поиска схем — сначала podpolye, затем public.	Параметры уровня базы задаются оператором ALTER DATABASE <имя> SET <параметр> TO <значение>. Обязательно разделяйте операторы точкой с запятой (;).	ALTER DATABASE quest_sandbox SET timezone TO 'UTC'; ALTER DATABASE quest_sandbox SET search_path TO podpolye, public	{"mode": "model", "setup": ["CREATE SCHEMA podpolye"], "expect": [{"args": {"db": "quest_sandbox"}, "probe": "db_settings", "title": "настройки базы", "value": [["search_path", "podpolye,public"], ["timezone", "UTC"]]}, {"args": {"name": "podpolye"}, "probe": "schema_exists", "title": "схема на месте", "value": true}], "reveal": "Что проверяется: настройки базы; схема на месте."}	{ddl,config}
2	0	2	География сражений	Определите все боевые операции, проведенные в Сталинграде. Результаты помогут оценить стратегическую значимость этого региона.\n\nПоля в результирующей таблице: `battle_name`	Фильтрация по локации в таблице `battles` с использованием точного значения	\N	{"data": [["Сталинградская битва"]], "columns": ["battle_name"], "row_count": 1}	{stalingrad,easy}
4	0	3	Оптимизация численности	Найдите количество подразделений, где численность личного состава людей не превышает 500 человек. Вычисленный столбец назовите answer. Это критично для перераспределения сил между частями.\n\nПоля в результирующей таблице: `answer`	Используйте вложенный запрос с группировкой и агрегатной функцией для подсчета солдат	\N	{"data": [[29]], "columns": ["answer"], "row_count": 1}	{easy}
5	0	4	Хроники войны	Выведите список всех сражений с их названиями, датами начала и окончания и местоположениями, отсортированный в хронологическом порядке по дате начала. Это ключ к пониманию этапов войны. Примечание: в результате допустимо дублирование данных.\n\nПоля в результирующей таблице: `battle_name`, `start_date`, `end_date`, `location`	Сортировка по дате в таблице `battle` с указанием направления	\N	{"data": [["Оборона Брестской крепости", "1941-06-22", "1941-06-29", "Брест"], ["Оборона Брестской крепости", "1941-06-22", "1941-06-29", "Брест"], ["Оборона Заполярья", "1941-06-29", "1944-10-01", "Мурманск"], ["Смоленское сражение", "1941-07-10", "1941-09-10", "Смоленск"], ["Таллинский переход", "1941-08-27", "1941-08-30", "Балтийское море"], ["Блокада Ленинграда", "1941-09-08", "1944-01-27", "Ленинград"], ["Битва за Москву", "1941-09-30", "1942-04-20", "Москва"], ["Оборона Тулы", "1941-10-24", "1941-12-05", "Тула"], ["Оборона Севастополя", "1941-10-30", "1942-07-04", "Севастополь"], ["Ржевская битва", "1942-01-08", "1943-03-31", "Ржев"], ["Демянская операция", "1942-02-20", "1942-05-20", "Новгородская обл."], ["Харьковская операция", "1942-05-12", "1942-05-28", "Харьков"], ["Битва за Воронеж", "1942-06-28", "1943-01-25", "Воронеж"], ["Сталинградская битва", "1942-07-17", "1943-02-02", "Сталинград"], ["Битва за Кавказ", "1942-07-25", "1943-10-09", "Кавказ"], ["Прорыв блокады Ленинграда", "1943-01-12", "1943-01-30", "Ленинград"], ["Курская битва", "1943-07-05", "1943-08-23", "Курск"], ["Битва за Днепр", "1943-08-26", "1943-12-23", "Днепр"], ["Керченско-Эльтигенская операция", "1943-10-31", "1943-12-11", "Керчь"], ["Корсунь-Шевченковская операция", "1944-01-24", "1944-02-17", "Украина"], ["Операция \\"Багратион\\"", "1944-06-23", "1944-08-29", "Белоруссия"], ["Битва при Дебрецене", "1944-10-06", "1944-10-29", "Венгрия"], ["Будапештская операция", "1944-10-29", "1945-02-13", "Венгрия"], ["Висло-Одерская операция", "1945-01-12", "1945-02-03", "Польша"], ["Восточно-Прусская операция", "1945-01-13", "1945-04-25", "Кёнигсберг"], ["Балатонская операция", "1945-03-06", "1945-03-15", "Венгрия"], ["Берлинская операция", "1945-04-16", "1945-05-08", "Берлин"], ["Битва за Берлин", "1945-04-16", "1945-05-08", "Берлин"], ["Пражская операция", "1945-05-06", "1945-05-11", "Прага"], ["Маньчжурская операция", "1945-08-09", "1945-09-02", "Маньчжурия"]], "columns": ["battle_name", "start_date", "end_date", "location"], "row_count": 30}	{easy}
18	0	18	География призыва	Определите количество уникальных городов, откуда призывались солдаты. Это покажет масштаб мобилизации.\n\nПоля в результирующей таблице: `count`	Используйте `COUNT(DISTINCT ...)` для столбца с городами	\N	{"data": [[22]], "columns": ["count"], "row_count": 1}	{easy}
19	0	19	Эффективность подразделений	Рассчитайте среднюю боевую эффективность для каждого типа частей. Вычисленное значение назовите avg_efficiency. Результат выведите в алфавитном порядке. Это поможет оценить их вклад в победу.\n\nПоля в результирующей таблице: `unit_type`, `avg_efficiency`	Группировка по `unit_type` с функцией `AVG`	\N	{"data": [["авиация", 91.175], ["инженерные войска", 89.6], ["лыжные войска", 73.9], ["медицинская", 91.7], ["морская пехота", 85.65], ["общевойсковая", 83.75], ["пехота", 83.0125], ["противник", 88.1], ["реактивная артиллерия", 93.5], ["резерв", 68.3], ["связисты", 85.2], ["спецназ", 86.63333333333334], ["танковые войска", 96.75]], "columns": ["unit_type", "avg_efficiency"], "row_count": 13}	{easy}
20	0	20	Статистика потерь	Подсчитайте количество солдат по каждому статусу (status). Это основа для анализа людских потерь.\n\nПоля в результирующей таблице: `status`, `count`	Группировка по статусу с использованием `CASE` в `COUNT`	\N	{"data": [["жив", 16], ["пропал без вести", 7], ["ранен", 8], ["убит", 9]], "columns": ["status", "count"], "row_count": 4}	{easy}
25	0	25	Демография частей	Определите минимальный и максимальный возраст солдат на момент призыва в каждой части. Выведите название частей и минимальные (min) и максимальные (max) возраста. Отсортируйте по названию части по алфавиту.\n\nПоля в результирующей таблице: `unit_name`, `min`, `max`	Примените `MIN` и `MAX` к году рождения с группировкой по частям	SELECT mu.unit_name,\n       MIN(EXTRACT(YEAR FROM ms.start_date) - s.birth_year)::float AS min,\n       MAX(EXTRACT(YEAR FROM ms.start_date) - s.birth_year)::float AS max\nFROM military_unit mu\nJOIN military_service ms ON mu.id = ms.unit_id\nJOIN soldier s ON ms.soldier_id = s.id\nGROUP BY mu.unit_name\nORDER BY mu.unit_name;	{"data": [["1-й отдельный чехословацкий батальон", 19.0, 25.0], ["1-й чехословацкий отдельный батальон", 18.0, 18.0], ["1-я гвардейская танковая армия", 21.0, 25.0], ["1-я морская бригада", 17.0, 17.0], ["101-й инженерно-сапёрный батальон", 16.0, 20.0], ["101-й полк НКВД", 22.0, 22.0], ["101-й учебный полк", 23.0, 23.0], ["106-я стрелковая дивизия", 20.0, 20.0], ["14-я отдельная штрафная рота", 28.0, 28.0], ["150-я стрелковая дивизия", 19.0, 19.0], ["16-я воздушная армия", 22.0, 26.0], ["18-я дивизия СС \\"Хорст Вессель\\"", 19.0, 19.0], ["2-я ударная армия", 23.0, 23.0], ["225-й отдельный инженерный батальон", 17.0, 17.0], ["28-я дивизия народного ополчения", 17.0, 17.0], ["3-я воздушная армия", 20.0, 20.0], ["316-я стрелковая дивизия", 18.0, 21.0], ["369-й отдельный батальон морской пехоты", 18.0, 18.0], ["37-й гвардейский миномётный полк", 30.0, 30.0], ["46-й гвардейский ночной бомбардировочный полк", 18.0, 27.0], ["585-й женский авиаполк", 29.0, 29.0], ["62-я армия", 17.0, 25.0], ["64-я стрелковая дивизия", 18.0, 21.0], ["8-я гвардейская армия", 22.0, 22.0], ["88-й отдельный лыжный батальон", 29.0, 29.0], ["Отдельная медико-санитарная рота", 17.0, 17.0], ["Отдельный батальон связи №45", 18.0, 18.0], ["Отдельный отряд собак-истребителей танков", 23.0, 23.0], ["Отдельный отряд собак-миноискателей", 17.0, 21.0]], "columns": ["unit_name", "min", "max"], "row_count": 29}	{easy}
64	1	6	Снабжение морской пехоты	Проанализируйте снаряжение морских пехотинцев в Севастополе. Выведите столбцы equipment_type, total, items (перечисление снаряжения через запятую). Это необходимо для оценки их готовности к обороне прибрежных зон.\n\nПоля в результирующей таблице: `equipment_type`, `total`, `items`	Используйте `STRING_AGG` для объединения названий снаряжения и фильтрацию по типу части	\N	{"data": [["медицина", 250, "Аптечки полевые"], ["миномёты", 2256, "82-мм, 50-мм"]], "columns": ["equipment_type", "total", "items"], "row_count": 2}	{medium}
67	1	10	Снаряжение героев	Найдите солдат, получивших снаряжение 12 января 1943 года. Это может быть связано с подготовкой к операции «Искра».\n\nПоля в результирующей таблице: `full_name`	Примените вложенные запросы и фильтрацию по дате и ID снаряжения	\N	{"data": [["Смирнова Анна Васильевна"]], "columns": ["full_name"], "row_count": 1}	{medium}
69	1	11	Возрастные категории	Посчитайте сколько солдат в каждой возрастной группе на момент начала войны(< 18, 18-25, > 25). Колонку с группой назовите age_group, а с количеством солдат — quantity. Результат отсортируйте по убыванию количества. Это поможет понять, какие возрастные группы преобладали в армии.\n\nПоля в результирующей таблице: `age_group`, `quantity`	Используйте `CASE` с диапазонами на основе года рождения	\N	{"data": [["18-25", 19], ["< 18", 15], ["> 25", 6]], "columns": ["age_group", "quantity"], "row_count": 3}	{medium}
70	1	13	Путь солдата	Для проведения комплексного аудита материально-технического обеспечения выведите список выданного снаряжения с привязкой к бойцу и его воинской части. Выведите полное имя солдата (full_name), название подразделения (unit_name), наименование снаряжения (item_name), выданное количество (quantity) и дату выдачи (issue_date). Отсортируйте результат по ФИО солдата, а затем по дате выдачи.\n\nПоля в результирующей таблице: `full_name`, `unit_name`, `item_name`, `quantity`, `issue_date`	Используйте цепочку INNER JOIN для 5 таблиц: soldier -> military_service -> military_unit, а также soldier -> equipment_assignment -> equipment.	SELECT s.full_name, u.unit_name, e.item_name, ea.quantity, ea.issue_date\nFROM soldier s\nJOIN military_service ms ON s.id = ms.soldier_id\nJOIN military_unit u ON ms.unit_id = u.id\nJOIN equipment_assignment ea ON s.id = ea.soldier_id\nJOIN equipment e ON ea.equipment_id = e.id\nORDER BY s.full_name, ea.issue_date;	{"data": [["Васнецова Татьяна Дмитриевна", "106-я стрелковая дивизия", "ПТРД", 1, "1944-03-01"], ["Громов Михаил Сергеевич", "2-я ударная армия", "Сапёрная лопатка", 1, "1943-08-15"], ["Жуков Андрей Григорьевич", "16-я воздушная армия", "Ил-2", 1, "1943-05-05"], ["Зайцева Людмила Михайловна", "150-я стрелковая дивизия", "БМ-13 \\"Катюша\\"", 120, "1944-01-20"], ["Иванов Алексей Петрович", "316-я стрелковая дивизия", "Винтовка Мосина", 1, "1942-03-02"], ["Иванов Алексей Петрович", "316-я стрелковая дивизия", "Патроны 7.62 мм", 120, "1942-03-02"], ["Козлов Николай Семёнович", "1-я гвардейская танковая армия", "Т-34", 1, "1943-07-10"], ["Кузнецов Пётр Васильевич", "1-я гвардейская танковая армия", "Радиостанция РБМ", 1, "1942-05-12"], ["Новиков Александр Иванович", "3-я воздушная армия", "ФАБ-100", 24, "1943-09-06"], ["Орлова Вера Павловна", "8-я гвардейская армия", "ИС-2", 1, "1944-10-02"], ["Павлов Яков Фёдорович", "62-я армия", "76-мм дивизионная пушка ЗИС-3", 1, "1942-11-15"], ["Смирнова Анна Васильевна", "62-я армия", "Аптечки полевые", 5, "1943-01-12"], ["Соколова Ольга Ивановна", "16-я воздушная армия", "Плазменные флаконы", 3, "1943-12-05"]], "columns": ["full_name", "unit_name", "item_name", "quantity", "issue_date"], "row_count": 13}	{join,medium}
48	1	20	Годовая динамика ранений	Проанализируйте динамику ранений бойцов по годам окончания службы. С помощью CTE определите год окончания службы (year) и количество раненых солдат (wounded_count, статус «ранен»), а затем с помощью оконной функции рассчитайте общее среднее число раненых в год (avg_wounded, округлите до 2 знаков). Отсортируйте результат по году.\n\nПоля в результирующей таблице: `year`, `wounded_count`, `avg_wounded`\nПримечание: округленное до 2 знаков.	Сначала сформируйте CTE с группировкой раненых бойцов по годам ms.end_date, затем примените ROUND(AVG(wounded_count) OVER (), 2)::float в основном запросе.	WITH yearly_wounded AS (\n    SELECT EXTRACT(YEAR FROM ms.end_date)::int AS year,\n           COUNT(*) AS wounded_count\n    FROM soldier s\n    JOIN military_service ms ON s.id = ms.soldier_id\n    WHERE s.status = 'ранен' AND ms.end_date IS NOT NULL\n    GROUP BY EXTRACT(YEAR FROM ms.end_date)\n)\nSELECT year,\n       wounded_count,\n       ROUND(AVG(wounded_count) OVER (), 2)::float AS avg_wounded\nFROM yearly_wounded\nORDER BY year;	{"data": [[1943, 3, 2.33], [1944, 3, 2.33], [1945, 1, 2.33]], "columns": ["year", "wounded_count", "avg_wounded"], "row_count": 3}	{cte,window,medium}
71	1	15	Боевые товарищи	Выявите пары солдат, призванных из одного города. Чтобы избежать дубликатов (А, Б) и (Б, А), добавьте условие `s1.id < s2.id` (где s1 и s2 - алиасы таблицы). Назовите столбцы soldier_name1, soldier_name2 и common_city. Отсортируйте результат по всем столбцам. Это может указывать на дружеские связи или совместную службу.\n\nПоля в результирующей таблице: `soldier_name1`, `soldier_name2`, `common_city`	Примените самосоединение таблицы `soldier` по городу призыва	\N	{"data": [["Белов Алексей Николаевич", "Фролов Павел Сергеевич", "Севастополь"], ["Васнецова Татьяна Дмитриевна", "Жукова Елена Викторовна", "Смоленск"], ["Васнецова Татьяна Дмитриевна", "Ковалёва Ольга Дмитриевна", "Смоленск"], ["Волкова Елена Сергеевна", "Громова Екатерина Ивановна", "Горький"], ["Гришин Алексей Петрович", "Ткаченко Иван Григорьевич", "Харьков"], ["Жуков Андрей Григорьевич", "Сидорова Екатерина Петровна", "Минск"], ["Жукова Елена Викторовна", "Ковалёва Ольга Дмитриевна", "Смоленск"], ["Зайцева Людмила Михайловна", "Воронцова Лидия Павловна", "Ленинград"], ["Иванов Алексей Петрович", "Соколовская Надежда Викторовна", "Москва"], ["Козлов Николай Семёнович", "Гришин Алексей Петрович", "Харьков"], ["Козлов Николай Семёнович", "Ткаченко Иван Григорьевич", "Харьков"], ["Крылова Надежда Фёдоровна", "Морозова Анна Сергеевна", "Одесса"], ["Мельникова Галина Ивановна", "Кузнецов Артём Игоревич", "Сталинград"], ["Орлова Вера Павловна", "Крылова Надежда Фёдоровна", "Одесса"], ["Орлова Вера Павловна", "Морозова Анна Сергеевна", "Одесса"], ["Петров Дмитрий Иванович", "Кузнецов Артём Игоревич", "Сталинград"], ["Петров Дмитрий Иванович", "Мельникова Галина Ивановна", "Сталинград"], ["Смирнов Василий Иванович", "Жуковский Виктор Михайлович", "Киев"], ["Смирнова Анна Васильевна", "Воронцова Лидия Павловна", "Ленинград"], ["Смирнова Анна Васильевна", "Зайцева Людмила Михайловна", "Ленинград"], ["Соколова Ольга Ивановна", "Жуковский Виктор Михайлович", "Киев"], ["Соколова Ольга Ивановна", "Смирнов Василий Иванович", "Киев"], ["Соколова Ольга Ивановна", "Ткаченко Григорий Петрович", "Киев"], ["Ткаченко Григорий Петрович", "Жуковский Виктор Михайлович", "Киев"], ["Ткаченко Григорий Петрович", "Смирнов Василий Иванович", "Киев"], ["Фёдорова Мария Ивановна", "Жуковский Виктор Михайлович", "Киев"], ["Фёдорова Мария Ивановна", "Смирнов Василий Иванович", "Киев"], ["Фёдорова Мария Ивановна", "Соколова Ольга Ивановна", "Киев"], ["Фёдорова Мария Ивановна", "Ткаченко Григорий Петрович", "Киев"]], "columns": ["soldier_name1", "soldier_name2", "common_city"], "row_count": 29}	{medium}
53	1	26	Циклы снабжения подразделений	Для анализа регулярности поставок снаряжения в части определите предыдущую и следующую даты поступления имущества. Выведите наименование подразделения (unit_name), название снаряжения (item_name), дату текущей поставки (last_replenishment), а также предыдущую дату (prev_replenishment) с помощью LAG() и следующую дату (next_replenishment) с помощью LEAD() с разбиением по подразделению и упорядочиванием по дате поставки и названию предмета. Отсортируйте результат по unit_name, last_replenishment и item_name.\n\nПоля в результирующей таблице: `unit_name`, `item_name`, `last_replenishment`, `prev_replenishment`, `next_replenishment`	Примените LAG(e.last_replenishment) и LEAD(e.last_replenishment) с OVER (PARTITION BY u.id ORDER BY e.last_replenishment, e.item_name).	SELECT u.unit_name,\n       e.item_name,\n       e.last_replenishment,\n       LAG(e.last_replenishment) OVER (PARTITION BY u.id ORDER BY e.last_replenishment, e.item_name) AS prev_replenishment,\n       LEAD(e.last_replenishment) OVER (PARTITION BY u.id ORDER BY e.last_replenishment, e.item_name) AS next_replenishment\nFROM equipment e\nJOIN military_unit u ON e.unit_id = u.id\nORDER BY u.unit_name, e.last_replenishment, e.item_name;	{"data": [["1-я гвардейская танковая армия", "Т-34", "1943-07-05", null, null], ["1-я морская бригада", "82-мм", "1942-03-05", null, "1942-03-05"], ["1-я морская бригада", "Аптечки полевые", "1942-03-05", "1942-03-05", "1942-06-06"], ["1-я морская бригада", "50-мм", "1942-06-06", "1942-03-05", null], ["106-я стрелковая дивизия", "ПТРД", "1944-02-28", null, null], ["150-я стрелковая дивизия", "БМ-13 \\"Катюша\\"", "1944-01-15", null, null], ["16-я воздушная армия", "Ил-2", "1943-05-01", null, null], ["2-я ударная армия", "Сапёрная лопатка", "1943-08-14", null, null], ["3-я воздушная армия", "ФАБ-100", "1943-09-05", null, null], ["316-я стрелковая дивизия", "Винтовка Мосина", "1942-03-01", null, "1942-03-05"], ["316-я стрелковая дивизия", "Патроны 7.62 мм", "1942-03-05", "1942-03-01", "1942-05-10"], ["316-я стрелковая дивизия", "Радиостанция РБМ", "1942-05-10", "1942-03-05", null], ["37-й гвардейский миномётный полк", "Патроны 7.62 мм", "1942-03-05", null, null], ["585-й женский авиаполк", "Патроны 7.62 мм", "1942-03-05", null, null], ["62-я армия", "Патроны 7.62 мм", "1942-03-05", null, "1942-11-10"], ["62-я армия", "76-мм дивизионная пушка ЗИС-3", "1942-11-10", "1942-03-05", "1943-01-10"], ["62-я армия", "Аптечки полевые", "1943-01-10", "1942-11-10", "1943-12-01"], ["62-я армия", "Плазменные флаконы", "1943-12-01", "1943-01-10", null], ["64-я стрелковая дивизия", "Патроны 7.62 мм", "1942-03-05", null, null], ["7-я гвардейская миномётная дивизия", "М-31", "1942-12-01", null, "1942-12-01"], ["7-я гвардейская миномётная дивизия", "Патроны 7.62 мм", "1942-12-01", "1942-12-01", null], ["8-я гвардейская армия", "ИС-2", "1944-10-01", null, null], ["Отдельная медико-санитарная рота", "Аптечки полевые", "1942-03-05", null, "1942-03-05"], ["Отдельная медико-санитарная рота", "Патроны 7.62 мм", "1942-03-05", "1942-03-05", null]], "columns": ["unit_name", "item_name", "last_replenishment", "prev_replenishment", "next_replenishment"], "row_count": 24}	{window,navigation,medium}
55	2	1	Рейтинг героев	Ранжируйте солдат по количеству наград в их частях. Выведите имя солдата, название подразделения (unit_name),\tколичество медалей (medals_count) и вычисленный ранг (medal_rank). Фамилии солдат выведите в алфавитном порядке. Это основа для определения самых отличившихся бойцов.\n\nПоля в результирующей таблице: `full_name`, `unit_name`, `medals_count`, `medal_rank`	Используйте `DENSE_RANK()` с группировкой по частям и сортировкой по наградам	\N	{"data": [["Белов Алексей Николаевич", "150-я стрелковая дивизия", 1, 1], ["Белов Дмитрий Николаевич", "1-й отдельный чехословацкий батальон", 0, 1], ["Беляев Павел Дмитриевич", "88-й отдельный лыжный батальон", 0, 1], ["Васнецова Татьяна Дмитриевна", "106-я стрелковая дивизия", 1, 1], ["Волкова Елена Сергеевна", "1-я морская бригада", 0, 1], ["Воронцова Лидия Павловна", "1-й отдельный чехословацкий батальон", 0, 1], ["Горбачёв Алексей Дмитриевич", "28-я дивизия народного ополчения", 0, 1], ["Гришин Алексей Петрович", "101-й учебный полк", 0, 1], ["Громова Екатерина Ивановна", "46-й гвардейский ночной бомбардировочный полк", 0, 1], ["Громов Михаил Сергеевич", "2-я ударная армия", 1, 1], ["Жукова Елена Викторовна", "18-я дивизия СС \\"Хорст Вессель\\"", 0, 1], ["Жуков Андрей Григорьевич", "16-я воздушная армия", 1, 1], ["Жуковский Виктор Михайлович", "46-й гвардейский ночной бомбардировочный полк", 0, 1], ["Зайцева Людмила Михайловна", "150-я стрелковая дивизия", 1, 1], ["Иванов Алексей Петрович", "316-я стрелковая дивизия", 1, 1], ["Ковалёва Ольга Дмитриевна", "Отдельный отряд собак-миноискателей", 0, 1], ["Ковалёв Сергей Николаевич", "369-й отдельный батальон морской пехоты", 0, 1], ["Козлов Николай Семёнович", "1-я гвардейская танковая армия", 0, 2], ["Крылова Надежда Фёдоровна", "Отдельный батальон связи №45", 0, 1], ["Кузнецов Артём Игоревич", "Отдельный отряд собак-миноискателей", 0, 1], ["Кузнецов Пётр Васильевич", "1-я гвардейская танковая армия", 1, 1], ["Мельникова Галина Ивановна", "1-й чехословацкий отдельный батальон", 0, 1], ["Морозова Анна Сергеевна", "101-й инженерно-сапёрный батальон", 0, 1], ["Морозов Иван Кузьмич", "14-я отдельная штрафная рота", 0, 1], ["Новиков Александр Иванович", "3-я воздушная армия", 1, 1], ["Орлова Вера Павловна", "8-я гвардейская армия", 1, 1], ["Орлов Денис Сергеевич", "225-й отдельный инженерный батальон", 0, 1], ["Павлов Яков Фёдорович", "62-я армия", 1, 1], ["Петров Дмитрий Иванович", "62-я армия", 1, 1], ["Семёнова Валентина Михайловна", "101-й полк НКВД", 0, 1], ["Сидорова Екатерина Петровна", "Отдельный отряд собак-истребителей танков", 0, 1], ["Смирнова Анна Васильевна", "62-я армия", 1, 1], ["Смирнов Василий Иванович", "37-й гвардейский миномётный полк", 0, 1], ["Соколова Ольга Ивановна", "16-я воздушная армия", 1, 1], ["Соколовская Надежда Викторовна", "64-я стрелковая дивизия", 0, 1], ["Ткаченко Григорий Петрович", "Отдельная медико-санитарная рота", 0, 1], ["Ткаченко Иван Григорьевич", "64-я стрелковая дивизия", 0, 1], ["Фёдорова Мария Ивановна", "316-я стрелковая дивизия", 0, 2], ["Фёдоров Игорь Васильевич", "585-й женский авиаполк", 0, 1], ["Фролов Павел Сергеевич", "101-й инженерно-сапёрный батальон", 0, 1]], "columns": ["full_name", "unit_name", "medals_count", "medal_rank"], "row_count": 40}	{first_any_level,hard}
58	2	4	Снаряжение элитных частей	Определите, какие типы снаряжения чаще всего используются в частях с эффективностью выше среднего. Вычисленный столбец назовите total. Отсортируйте результат в алфавитном порядке. Это поможет понять, какие ресурсы влияют на успех.\n\nПоля в результирующей таблице: `equipment_type`, `total`	Примените подзапрос для вычисления средней эффективности и `GROUP BY` для типов снаряжения	\N	{"data": [["артиллерия", 1], ["боеприпасы", 6], ["медицина", 3], ["миномёты", 1], ["противотанковые", 1], ["реактивные снаряды", 1], ["самолёты", 1], ["танки", 2]], "columns": ["equipment_type", "total"], "row_count": 8}	{supply,hard}
59	2	7	Критический дефицит снаряжения	Для анализа состояния снабжения воинских подразделений необходимо выявить снаряжение, количество которого значительно отклоняется от среднего уровня по каждому типу. Для этого требуется рассчитать среднее количество и стандартное отклонение для каждого типа снаряжения (equipment_type) по всем подразделениям, а затем определить, в каких именно частях и какие конкретно предметы снаряжения находятся в дефиците. Каждая единица снаряжения должна быть классифицирована как «Критический дефицит», если её количество ниже среднего на полторы стандартные девиации (при наличии вариации STDDEV > 0), как «Дефицит», если количество ниже среднего, но не достигает уровня критического дефицита, и как «Норма» в остальных случаях. В результате должен быть выведен список всего снаряжения с указанием его типа (equipment_type), названия (item_name), названия подразделения (unit_name), количества (quantity) и статуса (status), отсортированный по типу снаряжения, возрастанию количества и названию предмета.\n\nПоля в результирующей таблице: `equipment_type`, `item_name`, `unit_name`, `quantity`, `status`	Примените оконные функции AVG(e.quantity) OVER (PARTITION BY e.equipment_type) и STDDEV(e.quantity) OVER (PARTITION BY e.equipment_type) в конструкции CASE.	SELECT e.equipment_type,\n       e.item_name,\n       mu.unit_name,\n       e.quantity,\n       CASE\n           WHEN STDDEV(e.quantity) OVER (PARTITION BY e.equipment_type) > 0 \n                AND e.quantity < AVG(e.quantity) OVER (PARTITION BY e.equipment_type) - 1.5 * STDDEV(e.quantity) OVER (PARTITION BY e.equipment_type) \n           THEN 'Критический дефицит'\n           WHEN e.quantity < AVG(e.quantity) OVER (PARTITION BY e.equipment_type) \n           THEN 'Дефицит'\n           ELSE 'Норма'\n       END AS status\nFROM equipment e\nLEFT JOIN military_unit mu ON e.unit_id = mu.id\nORDER BY e.equipment_type, e.quantity, e.item_name;	{"data": [["авиабомбы", "ФАБ-100", "3-я воздушная армия", 3200, "Норма"], ["артиллерия", "76-мм дивизионная пушка ЗИС-3", "62-я армия", 24, "Норма"], ["боеприпасы", "Патроны 7.62 мм", "7-я гвардейская миномётная дивизия", 20000, "Критический дефицит"], ["боеприпасы", "Патроны 7.62 мм", "Отдельная медико-санитарная рота", 30000, "Дефицит"], ["боеприпасы", "Патроны 7.62 мм", "585-й женский авиаполк", 40000, "Дефицит"], ["боеприпасы", "Патроны 7.62 мм", "316-я стрелковая дивизия", 50000, "Норма"], ["боеприпасы", "Патроны 7.62 мм", "37-й гвардейский миномётный полк", 50000, "Норма"], ["боеприпасы", "Патроны 7.62 мм", "62-я армия", 50000, "Норма"], ["боеприпасы", "Патроны 7.62 мм", "64-я стрелковая дивизия", 70000, "Норма"], ["инженерное", "Сапёрная лопатка", "2-я ударная армия", 850, "Норма"], ["медицина", "Аптечки полевые", "1-я морская бригада", 250, "Дефицит"], ["медицина", "Аптечки полевые", "Отдельная медико-санитарная рота", 250, "Дефицит"], ["медицина", "Аптечки полевые", "62-я армия", 350, "Норма"], ["медицина", "Плазменные флаконы", "62-я армия", 480, "Норма"], ["миномёты", "БМ-13 \\"Катюша\\"", "150-я стрелковая дивизия", 12, "Дефицит"], ["миномёты", "82-мм", "1-я морская бригада", 930, "Норма"], ["миномёты", "50-мм", "1-я морская бригада", 1326, "Норма"], ["оружие", "Винтовка Мосина", "316-я стрелковая дивизия", 1200, "Норма"], ["противотанковые", "ПТРД", "106-я стрелковая дивизия", 68, "Норма"], ["реактивные снаряды", "М-31", "7-я гвардейская миномётная дивизия", 1500, "Норма"], ["самолёты", "Ил-2", "16-я воздушная армия", 45, "Норма"], ["связь", "Радиостанция РБМ", "316-я стрелковая дивизия", 15, "Норма"], ["танки", "ИС-2", "8-я гвардейская армия", 42, "Дефицит"], ["танки", "Т-34", "1-я гвардейская танковая армия", 58, "Норма"]], "columns": ["equipment_type", "item_name", "unit_name", "quantity", "status"], "row_count": 24}	{window,statistics,hard}
60	2	8	Топ вражеских частей	Для анализа тактики противника определите три вражеских подразделения, одержавших победы в сражениях с участием советских войск. Победами противника считаются сражения, в которых результат указывает на победу вермахта или потерю города (фильтр b.result ~* '(победа вермахта|потеря города)'). Для каждого такого вражеского подразделения подсчитайте количество побед и суммарные безвозвратные потери советских войск («убит», «пропал без вести») в этих боях. Выведите unit_name, victories и total_soviet_losses по убыванию victories, затем по убыванию total_soviet_losses и названию подразделения.\n\nПоля в результирующей таблице: `unit_name`, `victories`, `total_soviet_losses`	Соедините enemy_unit, battle_enemy_unit, battle, battle_military_unit, military_service и soldier. Отфильтруйте битвы с исходами побед противника (WHERE b.result ~* '(победа вермахта|потеря города)'). Подсчитайте COUNT(DISTINCT b.id) как victories и потери советских бойцов COUNT(DISTINCT s.id) FILTER (WHERE s.status IN ('убит', 'пропал без вести'))::float AS total_soviet_losses. Ограничьте вывод 3 записями (LIMIT 3).	WITH enemy_battles AS (\n    SELECT eu.unit_name,\n           COUNT(DISTINCT b.id)::int AS victories,\n           COUNT(DISTINCT s.id) FILTER (WHERE s.status IN ('убит', 'пропал без вести'))::float AS total_soviet_losses\n    FROM enemy_unit eu\n    JOIN battle_enemy_unit beu ON eu.id = beu.enemy_unit_id\n    JOIN battle b ON beu.battle_id = b.id\n    JOIN battle_military_unit bmu ON b.id = bmu.battle_id\n    LEFT JOIN military_service ms ON bmu.unit_id = ms.unit_id \n         AND ms.start_date <= b.end_date AND (ms.end_date IS NULL OR ms.end_date >= b.start_date)\n    LEFT JOIN soldier s ON ms.soldier_id = s.id\n    WHERE b.result ~* '(победа вермахта|потеря города)'\n    GROUP BY eu.id, eu.unit_name\n)\nSELECT unit_name, victories, total_soviet_losses\nFROM enemy_battles\nORDER BY victories DESC, total_soviet_losses DESC, unit_name\nLIMIT 3;	{"data": [["299-я пехотная дивизия", 1, 1.0], ["9-я армия", 1, 1.0], ["11-я армия", 1, 0.0]], "columns": ["unit_name", "victories", "total_soviet_losses"], "row_count": 3}	{window,hard}
44	1	17	Участники Сталинграда	Найдите всех солдат, служивших в частях, дислоцированных в Сталинграде (location = 'Сталинград'). Это основа для создания мемориальных списков.\n\nПоля в результирующей таблице: `full_name`\nПримечание: Отсортируйте результат по алфавиту full_name..	Используйте SELECT DISTINCT s.full_name FROM soldier s JOIN military_service ms ON s.id = ms.soldier_id WHERE ms.unit_id IN (SELECT id FROM military_unit WHERE location = 'Сталинград') ORDER BY s.full_name;	SELECT DISTINCT s.full_name\nFROM soldier s\nJOIN military_service ms ON s.id = ms.soldier_id\nWHERE ms.unit_id IN (\n    SELECT id FROM military_unit WHERE location = 'Сталинград'\n)\nORDER BY s.full_name;	{"data": [["Павлов Яков Фёдорович"], ["Петров Дмитрий Иванович"], ["Смирнов Василий Иванович"], ["Смирнова Анна Васильевна"], ["Соколовская Надежда Викторовна"], ["Ткаченко Григорий Петрович"], ["Ткаченко Иван Григорьевич"], ["Фёдоров Игорь Васильевич"]], "columns": ["full_name"], "row_count": 8}	{stalingrad,medium}
50	1	22	Силы противника на Курской дуге	Определите подразделения противника, принимавшие участие в сражении на Курской дуге. Для этого с помощью CTE найдите идентификатор битвы, содержащей в названии «Курск», соедините таблицы enemy_unit и battle_enemy_unit и выведите наименования частей противника (unit_name). Отсортируйте по названию части.\n\nПоля в результирующей таблице: `unit_name`	Используйте CTE для поиска битвы Курской дуги по названию (battle_name ILIKE '%Курск%') и свяжите с battle_enemy_unit и enemy_unit.	WITH target_battle AS (\n    SELECT id FROM battle WHERE battle_name ILIKE '%Курск%'\n)\nSELECT eu.unit_name\nFROM enemy_unit eu\nJOIN battle_enemy_unit beu ON eu.id = beu.enemy_unit_id\nWHERE beu.battle_id IN (SELECT id FROM target_battle)\nORDER BY eu.unit_name;	{"data": [["12-я танковая дивизия"], ["337-я пехотная дивизия"], ["503-й тяжёлый танковый батальон"], ["505-й инженерный батальон"], ["505-й тяжёлый танковый батальон"], ["Танковая группа \\"Кемпф\\""], ["Эскадра KG27 \\"Бёльке\\""], ["Эскадра SG2 \\"Иммельман\\""]], "columns": ["unit_name"], "row_count": 8}	{cte,join,medium}
52	1	24	Рейтинг эффективности подразделений	Составьте рейтинг боевой эффективности воинских подразделений. Выведите название подразделения (unit_name), показатель боевой эффективности (combat_efficiency), а также два ранга: eff_rank с помощью функции RANK() и eff_dense_rank с помощью функции DENSE_RANK(), упорядоченные по убыванию эффективности. Исключите подразделения с неопределённой эффективностью. Отсортируйте результат по убыванию combat_efficiency, а при равенстве — по unit_name.\n\nПоля в результирующей таблице: `unit_name`, `combat_efficiency`, `eff_rank`, `eff_dense_rank`	Примените RANK() OVER (ORDER BY combat_efficiency DESC) и DENSE_RANK() OVER (ORDER BY combat_efficiency DESC).	SELECT unit_name,\n       combat_efficiency,\n       RANK() OVER (ORDER BY combat_efficiency DESC) AS eff_rank,\n       DENSE_RANK() OVER (ORDER BY combat_efficiency DESC) AS eff_dense_rank\nFROM military_unit\nWHERE combat_efficiency IS NOT NULL\nORDER BY combat_efficiency DESC, unit_name;	{"data": [["8-я гвардейская армия", 98.5, 1, 1], ["150-я стрелковая дивизия", 97.8, 2, 2], ["46-й гвардейский ночной бомбардировочный полк", 96.7, 3, 3], ["37-й гвардейский миномётный полк", 96.5, 4, 4], ["101-й полк НКВД", 96.2, 5, 5], ["1-я гвардейская танковая армия", 95.0, 6, 6], ["585-й женский авиаполк", 94.1, 7, 7], ["64-я стрелковая дивизия", 92.4, 8, 8], ["62-я армия", 92.3, 9, 9], ["Отдельная медико-санитарная рота", 91.7, 10, 10], ["7-я гвардейская миномётная дивизия", 90.5, 11, 11], ["225-й отдельный инженерный батальон", 89.7, 12, 12], ["101-й инженерно-сапёрный батальон", 89.5, 13, 13], ["106-я стрелковая дивизия", 89.3, 14, 14], ["16-я воздушная армия", 88.9, 15, 15], ["369-й отдельный батальон морской пехоты", 88.9, 15, 15], ["18-я дивизия СС \\"Хорст Вессель\\"", 88.1, 17, 16], ["316-я стрелковая дивизия", 85.5, 18, 17], ["Отдельный батальон связи №45", 85.2, 19, 18], ["1-й отдельный чехословацкий батальон", 85.0, 20, 19], ["3-я воздушная армия", 85.0, 20, 19], ["1-я морская бригада", 82.4, 22, 20], ["Отдельный отряд собак-истребителей танков", 82.4, 22, 20], ["Отдельный отряд собак-миноискателей", 81.3, 24, 21], ["1-й чехословацкий отдельный батальон", 78.5, 25, 22], ["2-я ударная армия", 75.2, 26, 23], ["88-й отдельный лыжный батальон", 73.9, 27, 24], ["28-я дивизия народного ополчения", 69.8, 28, 25], ["101-й учебный полк", 68.3, 29, 26], ["14-я отдельная штрафная рота", 65.8, 30, 27]], "columns": ["unit_name", "combat_efficiency", "eff_rank", "eff_dense_rank"], "row_count": 30}	{window,ranking,medium}
54	1	14	Накопленные ресурсы	Определите накопительный итог поставок боеприпасов в 1942 году. Выведите название подразделения, дату последнего пополнения, а вычисленный столбец назовите cumulative_ammo. Это отразит рост запасов перед ключевыми операциями.\n\nПоля в результирующей таблице: `unit_name`, `last_replenishment`, `cumulative_ammo`	Примените `SUM() OVER` с сортировкой по дате пополнения	\N	{"data": [["316-я стрелковая дивизия", "1942-03-05", 50000], ["62-я армия", "1942-03-05", 50000], ["7-я гвардейская миномётная дивизия", "1942-12-01", 20000], ["Отдельная медико-санитарная рота", "1942-03-05", 30000], ["585-й женский авиаполк", "1942-03-05", 40000], ["37-й гвардейский миномётный полк", "1942-03-05", 50000], ["64-я стрелковая дивизия", "1942-03-05", 70000]], "columns": ["unit_name", "last_replenishment", "cumulative_ammo"], "row_count": 7}	{supply,window,medium}
62	2	12	Стоимость победы	Для анализа ценности побед в боевых действиях требуется определить, какие битвы, несмотря на успех, были наиболее «дорогими» в терминах потерь среди солдат и затрат ресурсов. Для каждой битвы необходимо рассчитать общее количество безвозвратных потерь (солдаты со статусом «убит» или «пропал без вести»), участвовавших в ней, а также среднюю исходную боевую эффективность подразделений, принимавших в ней участие. Дополнительно нужно подсчитать количество единиц снаряжения, выданного солдатам, участвовавшим в битве. На основе этих данных вычислите условный стоимостной коэффициент битвы (cost_ratio) как отношение числа потерь к средней боевой эффективности, округленное до 2 знаков. Затем проранжируйте все битвы по убыванию числа потерь (loss_rank) и по убыванию средней эффективности (eff_rank) через DENSE_RANK(). Отсортируйте итоговый список по убыванию cost_ratio, затем по названию битвы.\n\nПоля в результирующей таблице: `battle_name`, `losses`, `avg_efficiency`, `equipment_used`, `loss_rank`, `eff_rank`, `cost_ratio`\nПримечание: округленный до 2 знаков.	Чтобы избежать искажения средней боевой эффективности из-за разного числа бойцов и записей снаряжения в подразделениях, рассчитывайте avg_efficiency отдельно для воинских частей каждой битвы (через CTE или подзапрос по battle_military_unit и military_unit). Потери и снаряжение агрегируйте по бойцам, участвовавшим в битве. В основном запросе вычислите ранги DENSE_RANK() и cost_ratio = ROUND((losses / NULLIF(avg_efficiency, 0))::numeric, 2)::float.	WITH battle_units AS (\n    SELECT bmu.battle_id,\n           ROUND(AVG(mu.combat_efficiency)::numeric, 1)::float AS avg_efficiency\n    FROM battle_military_unit bmu\n    JOIN military_unit mu ON bmu.unit_id = mu.id\n    GROUP BY bmu.battle_id\n),\nbattle_soldiers AS (\n    SELECT b.id AS battle_id,\n           b.battle_name,\n           COUNT(DISTINCT s.id) FILTER (WHERE s.status IN ('убит', 'пропал без вести'))::int AS losses,\n           COALESCE(SUM(ea.quantity), 0)::int AS equipment_used\n    FROM battle b\n    JOIN battle_military_unit bmu ON b.id = bmu.battle_id\n    LEFT JOIN military_service ms ON bmu.unit_id = ms.unit_id\n         AND ms.start_date <= b.end_date AND (ms.end_date IS NULL OR ms.end_date >= b.start_date)\n    LEFT JOIN soldier s ON ms.soldier_id = s.id\n    LEFT JOIN equipment_assignment ea ON s.id = ea.soldier_id\n    GROUP BY b.id, b.battle_name\n),\nbattle_stats AS (\n    SELECT bs.battle_name,\n           bs.losses,\n           bu.avg_efficiency,\n           bs.equipment_used\n    FROM battle_soldiers bs\n    JOIN battle_units bu ON bs.battle_id = bu.battle_id\n)\nSELECT battle_name,\n       losses,\n       avg_efficiency,\n       equipment_used,\n       DENSE_RANK() OVER (ORDER BY losses DESC)::int AS loss_rank,\n       DENSE_RANK() OVER (ORDER BY avg_efficiency DESC)::int AS eff_rank,\n       ROUND((losses / NULLIF(avg_efficiency, 0))::numeric, 2)::float AS cost_ratio\nFROM battle_stats\nORDER BY cost_ratio DESC, battle_name;	{"data": [["Сталинградская битва", 2, 92.6, 6, 1, 9, 0.02], ["Балатонская операция", 1, 97.6, 1, 2, 3, 0.01], ["Битва за Воронеж", 1, 92.3, 6, 2, 10, 0.01], ["Битва за Днепр", 1, 94.4, 0, 2, 7, 0.01], ["Битва за Кавказ", 1, 96.7, 0, 2, 4, 0.01], ["Битва при Дебрецене", 1, 96.7, 0, 2, 4, 0.01], ["Блокада Ленинграда", 1, 75.0, 0, 2, 24, 0.01], ["Будапештская операция", 1, 96.7, 0, 2, 4, 0.01], ["Восточно-Прусская операция", 1, 87.2, 24, 2, 15, 0.01], ["Корсунь-Шевченковская операция", 1, 86.8, 2, 2, 16, 0.01], ["Ржевская битва", 1, 82.5, 121, 2, 18, 0.01], ["Харьковская операция", 1, 81.8, 0, 2, 20, 0.01], ["Берлинская операция", 0, 98.5, 1, 3, 1, 0.0], ["Битва за Берлин", 0, 98.2, 121, 3, 2, 0.0], ["Битва за Москву", 0, 88.0, 121, 3, 13, 0.0], ["Висло-Одерская операция", 0, 96.4, 120, 3, 5, 0.0], ["Демянская операция", 0, 78.0, 1, 3, 21, 0.0], ["Керченско-Эльтигенская операция", 0, 88.9, 0, 3, 12, 0.0], ["Курская битва", 0, 87.7, 4, 3, 14, 0.0], ["Маньчжурская операция", 0, 68.3, 0, 3, 26, 0.0], ["Оборона Брестской крепости", 0, 96.2, 0, 3, 6, 0.0], ["Оборона Брестской крепости", 0, 96.2, 0, 3, 6, 0.0], ["Оборона Заполярья", 0, 73.9, 0, 3, 25, 0.0], ["Оборона Севастополя", 0, 82.4, 0, 3, 19, 0.0], ["Оборона Тулы", 0, 85.2, 0, 3, 17, 0.0], ["Операция \\"Багратион\\"", 0, 92.8, 2, 3, 8, 0.0], ["Пражская операция", 0, 90.0, 0, 3, 11, 0.0], ["Прорыв блокады Ленинграда", 0, 75.2, 1, 3, 23, 0.0], ["Смоленское сражение", 0, 77.7, 121, 3, 22, 0.0], ["Таллинский переход", 0, 96.2, 0, 3, 6, 0.0]], "columns": ["battle_name", "losses", "avg_efficiency", "equipment_used", "loss_rank", "eff_rank", "cost_ratio"], "row_count": 30}	{window,hard}
63	1	2	Снабжение перед операцией	Для воинских частей, у которых общее количество всего снаряжения на складе превышает 1000 единиц, необходимо вывести название части, а также суммарное количество находящихся в ней боеприпасов ammunition_total и медикаментов medicine_total. Отсортируйте результат по названию части в алфавитном порядке, учтите, что, если у части нет боеприпасов или медикаментов, в соответствующем поле в ответе должен стоять 0. Это важно для планирования крупных наступлений.\n\nПоля в результирующей таблице: `unit_name`, `ammunition_total`, `medicine_total`	Сначала найдите подразделения, где общее количество снаряжения больше 1000, используя GROUP BY и HAVING SUM(quantity). Затем, для этих подразделений, посчитайте суммы по типам, применив условную агрегацию в основном запросе	\N	{"data": [["1-я морская бригада", 0, 250], ["3-я воздушная армия", 0, 0], ["316-я стрелковая дивизия", 50000, 0], ["37-й гвардейский миномётный полк", 50000, 0], ["585-й женский авиаполк", 40000, 0], ["62-я армия", 50000, 830], ["64-я стрелковая дивизия", 70000, 0], ["7-я гвардейская миномётная дивизия", 20000, 0], ["Отдельная медико-санитарная рота", 30000, 250]], "columns": ["unit_name", "ammunition_total", "medicine_total"], "row_count": 9}	{cte,medium}
72	1	18	Чисто мужские/женские части	Выведите названия частей, состоящих исключительно из мужчин или женщин. Назовите столбец military_unit_name и отсортируйте результат по алфавиту. Это редкие случаи, характерные для отдельных родов войск.\n\nПоля в результирующей таблице: `military_unit_name`	Примените `UNION` для объединения результатов двух подзапросов с `EXISTS` и `NOT EXISTS`	\N	{"data": [["101-й полк НКВД"], ["101-й учебный полк"], ["106-я стрелковая дивизия"], ["14-я отдельная штрафная рота"], ["18-я дивизия СС \\"Хорст Вессель\\""], ["1-й чехословацкий отдельный батальон"], ["1-я гвардейская танковая армия"], ["1-я морская бригада"], ["225-й отдельный инженерный батальон"], ["28-я дивизия народного ополчения"], ["2-я ударная армия"], ["369-й отдельный батальон морской пехоты"], ["37-й гвардейский миномётный полк"], ["3-я воздушная армия"], ["585-й женский авиаполк"], ["88-й отдельный лыжный батальон"], ["8-я гвардейская армия"], ["Отдельная медико-санитарная рота"], ["Отдельный батальон связи №45"], ["Отдельный отряд собак-истребителей танков"]], "columns": ["military_unit_name"], "row_count": 20}	{medium}
74	1	25	Хронология призыва в подразделения	Для каждого воинского подразделения определите порядок прибытия новобранцев. Выведите наименование подразделения (unit_name), ФИО солдата (full_name), дату начала службы (start_date) и порядковый номер бойца в части (recruit_order), вычисленный с помощью ROW_NUMBER() с разбиением по подразделению и упорядочиванием по дате службы (и s.id при совпадении). Отсортируйте итоговый результат по unit_name и recruit_order.\n\nПоля в результирующей таблице: `unit_name`, `full_name`, `start_date`, `recruit_order`	Используйте ROW_NUMBER() OVER (PARTITION BY u.id ORDER BY ms.start_date, s.id).	SELECT u.unit_name,\n       s.full_name,\n       ms.start_date,\n       ROW_NUMBER() OVER (PARTITION BY u.id ORDER BY ms.start_date, s.id) AS recruit_order\nFROM military_unit u\nJOIN military_service ms ON u.id = ms.unit_id\nJOIN soldier s ON ms.soldier_id = s.id\nORDER BY u.unit_name, recruit_order;	{"data": [["1-й отдельный чехословацкий батальон", "Белов Дмитрий Николаевич", "1942-05-25", 1], ["1-й отдельный чехословацкий батальон", "Воронцова Лидия Павловна", "1943-02-01", 2], ["1-й чехословацкий отдельный батальон", "Мельникова Галина Ивановна", "1942-10-01", 1], ["1-я гвардейская танковая армия", "Козлов Николай Семёнович", "1941-09-15", 1], ["1-я гвардейская танковая армия", "Кузнецов Пётр Васильевич", "1941-10-05", 2], ["1-я морская бригада", "Волкова Елена Сергеевна", "1943-09-20", 1], ["101-й инженерно-сапёрный батальон", "Морозова Анна Сергеевна", "1942-07-15", 1], ["101-й инженерно-сапёрный батальон", "Фролов Павел Сергеевич", "1944-06-15", 2], ["101-й полк НКВД", "Семёнова Валентина Михайловна", "1942-11-15", 1], ["101-й учебный полк", "Гришин Алексей Петрович", "1941-07-05", 1], ["106-я стрелковая дивизия", "Васнецова Татьяна Дмитриевна", "1943-11-10", 1], ["14-я отдельная штрафная рота", "Морозов Иван Кузьмич", "1942-08-05", 1], ["150-я стрелковая дивизия", "Зайцева Людмила Михайловна", "1943-02-01", 1], ["150-я стрелковая дивизия", "Белов Алексей Николаевич", "1944-05-01", 2], ["16-я воздушная армия", "Жуков Андрей Григорьевич", "1941-06-25", 1], ["16-я воздушная армия", "Соколова Ольга Ивановна", "1942-06-20", 2], ["18-я дивизия СС \\"Хорст Вессель\\"", "Жукова Елена Викторовна", "1942-11-15", 1], ["2-я ударная армия", "Громов Михаил Сергеевич", "1942-04-01", 1], ["225-й отдельный инженерный батальон", "Орлов Денис Сергеевич", "1944-08-10", 1], ["28-я дивизия народного ополчения", "Горбачёв Алексей Дмитриевич", "1943-08-01", 1], ["3-я воздушная армия", "Новиков Александр Иванович", "1944-09-01", 1], ["316-я стрелковая дивизия", "Иванов Алексей Петрович", "1941-08-05", 1], ["316-я стрелковая дивизия", "Фёдорова Мария Ивановна", "1943-09-01", 2], ["369-й отдельный батальон морской пехоты", "Ковалёв Сергей Николаевич", "1943-02-15", 1], ["37-й гвардейский миномётный полк", "Смирнов Василий Иванович", "1941-09-25", 1], ["46-й гвардейский ночной бомбардировочный полк", "Жуковский Виктор Михайлович", "1942-05-15", 1], ["46-й гвардейский ночной бомбардировочный полк", "Громова Екатерина Ивановна", "1943-03-05", 2], ["585-й женский авиаполк", "Фёдоров Игорь Васильевич", "1942-01-01", 1], ["62-я армия", "Петров Дмитрий Иванович", "1941-10-15", 1], ["62-я армия", "Смирнова Анна Васильевна", "1942-02-01", 2], ["62-я армия", "Павлов Яков Фёдорович", "1942-09-05", 3], ["64-я стрелковая дивизия", "Ткаченко Иван Григорьевич", "1941-08-20", 1], ["64-я стрелковая дивизия", "Соколовская Надежда Викторовна", "1941-10-20", 2], ["8-я гвардейская армия", "Орлова Вера Павловна", "1943-07-05", 1], ["88-й отдельный лыжный батальон", "Беляев Павел Дмитриевич", "1941-12-10", 1], ["Отдельная медико-санитарная рота", "Ткаченко Григорий Петрович", "1944-03-01", 1], ["Отдельный батальон связи №45", "Крылова Надежда Фёдоровна", "1943-04-20", 1], ["Отдельный отряд собак-истребителей танков", "Сидорова Екатерина Петровна", "1944-02-01", 1], ["Отдельный отряд собак-миноискателей", "Ковалёва Ольга Дмитриевна", "1942-09-10", 1], ["Отдельный отряд собак-миноискателей", "Кузнецов Артём Игоревич", "1943-02-10", 2]], "columns": ["unit_name", "full_name", "start_date", "recruit_order"], "row_count": 40}	{window,numbering,medium}
75	1	7	Первый и последний	Определите первого и последнего солдата, вступившего в каждую часть. Выведите название части, ФИО первого first_enlisted и последнего last_enlisted вступившего солдата. Результат отсортируйте по unit_id. Это может указывать на "костяк" подразделения.\n\nПоля в результирующей таблице: `unit_name`, `first_enlisted`, `last_enlisted`	Примените `FIRST_VALUE()` и `LAST_VALUE()` с оконными функциями	\N	{"data": [["316-я стрелковая дивизия", "Иванов Алексей Петрович", "Фёдорова Мария Ивановна"], ["62-я армия", "Петров Дмитрий Иванович", "Павлов Яков Фёдорович"], ["1-я гвардейская танковая армия", "Козлов Николай Семёнович", "Кузнецов Пётр Васильевич"], ["150-я стрелковая дивизия", "Зайцева Людмила Михайловна", "Белов Алексей Николаевич"], ["16-я воздушная армия", "Жуков Андрей Григорьевич", "Соколова Ольга Ивановна"], ["2-я ударная армия", "Громов Михаил Сергеевич", "Громов Михаил Сергеевич"], ["8-я гвардейская армия", "Орлова Вера Павловна", "Орлова Вера Павловна"], ["3-я воздушная армия", "Новиков Александр Иванович", "Новиков Александр Иванович"], ["106-я стрелковая дивизия", "Васнецова Татьяна Дмитриевна", "Васнецова Татьяна Дмитриевна"], ["14-я отдельная штрафная рота", "Морозов Иван Кузьмич", "Морозов Иван Кузьмич"], ["1-я морская бригада", "Волкова Елена Сергеевна", "Волкова Елена Сергеевна"], ["Отдельная медико-санитарная рота", "Ткаченко Григорий Петрович", "Ткаченко Григорий Петрович"], ["88-й отдельный лыжный батальон", "Беляев Павел Дмитриевич", "Беляев Павел Дмитриевич"], ["101-й полк НКВД", "Семёнова Валентина Михайловна", "Семёнова Валентина Михайловна"], ["369-й отдельный батальон морской пехоты", "Ковалёв Сергей Николаевич", "Ковалёв Сергей Николаевич"], ["1-й чехословацкий отдельный батальон", "Мельникова Галина Ивановна", "Мельникова Галина Ивановна"], ["585-й женский авиаполк", "Фёдоров Игорь Васильевич", "Фёдоров Игорь Васильевич"], ["28-я дивизия народного ополчения", "Горбачёв Алексей Дмитриевич", "Горбачёв Алексей Дмитриевич"], ["Отдельный отряд собак-истребителей танков", "Сидорова Екатерина Петровна", "Сидорова Екатерина Петровна"], ["37-й гвардейский миномётный полк", "Смирнов Василий Иванович", "Смирнов Василий Иванович"], ["Отдельный батальон связи №45", "Крылова Надежда Фёдоровна", "Крылова Надежда Фёдоровна"], ["225-й отдельный инженерный батальон", "Орлов Денис Сергеевич", "Орлов Денис Сергеевич"], ["18-я дивизия СС \\"Хорст Вессель\\"", "Жукова Елена Викторовна", "Жукова Елена Викторовна"], ["101-й учебный полк", "Гришин Алексей Петрович", "Гришин Алексей Петрович"], ["64-я стрелковая дивизия", "Ткаченко Иван Григорьевич", "Соколовская Надежда Викторовна"], ["1-й отдельный чехословацкий батальон", "Белов Дмитрий Николаевич", "Воронцова Лидия Павловна"], ["46-й гвардейский ночной бомбардировочный полк", "Жуковский Виктор Михайлович", "Громова Екатерина Ивановна"], ["101-й инженерно-сапёрный батальон", "Морозова Анна Сергеевна", "Фролов Павел Сергеевич"], ["Отдельный отряд собак-миноискателей", "Ковалёва Ольга Дмитриевна", "Кузнецов Артём Игоревич"]], "columns": ["unit_name", "first_enlisted", "last_enlisted"], "row_count": 29}	{medium}
78	2	2	Сравнение стратегий	Сравните среднюю боевую эффективность частей, участвовавших в стратегических и локальных операциях. К стратегическим операциям относятся битвы с уровнем важности «стратегическая», к локальным — все остальные («фронтовая», «тактическая»).\n\nПоля в результирующей таблице: `battle_group`, `avg_efficiency`\nПримечание: округленная до 2 знаков.	Примените CASE WHEN b.importance_level = 'стратегическая' THEN 'Стратегические битвы' ELSE 'Локальные операции' END для группировки битв. Соедините battle, battle_military_unit и military_unit и вычислите ROUND(AVG(mu.combat_efficiency)::numeric, 2)::float.	SELECT CASE \n           WHEN b.importance_level = 'стратегическая' THEN 'Стратегические битвы' \n           ELSE 'Локальные операции' \n       END AS battle_group,\n       ROUND(AVG(mu.combat_efficiency)::numeric, 2)::float AS avg_efficiency\nFROM battle b\nJOIN battle_military_unit bmu ON b.id = bmu.battle_id\nJOIN military_unit mu ON bmu.unit_id = mu.id\nGROUP BY battle_group\nORDER BY battle_group DESC;	{"data": [["Стратегические битвы", 90.15], ["Локальные операции", 85.15]], "columns": ["battle_group", "avg_efficiency"], "row_count": 2}	{hard}
81	2	5	Живучесть подразделений	Для каждого воинского подразделения рассчитайте: общую продолжительность участия в боях (разница между датой окончания последнего и датой начала первого боя), количество боёв, в которых оно участвовало, и количество солдат с безвозвратными потерями («убит», «пропал без вести»). На основе этих данных вычислите среднее количество потерь на один бой и процентиль подразделения по продолжительности участия в боях через PERCENT_RANK() по убыванию total_duration.\n\nПоля в результирующей таблице: `unit_name`, `total_duration`, `battles_count`, `losses`, `loss_per_battle_ratio`, `survival_percentile`\nПримечание: округленное до 2 знаков.	Сгруппируйте данные по подразделениям. Для продолжительности используйте MAX(b.end_date) - MIN(b.start_date). Потери считайте через COUNT(DISTINCT s.id) FILTER (WHERE s.status IN ('убит', 'пропал без вести')). Средние потери вычислите делением потерь на количество боёв с округлением до 2 знаков. Для процентиля примените PERCENT_RANK() OVER (ORDER BY (MAX(b.end_date) - MIN(b.start_date)) DESC). Отсортируйте результат по убыванию total_duration, затем по unit_name.	SELECT mu.unit_name,\n       (MAX(b.end_date) - MIN(b.start_date))::int AS total_duration,\n       COUNT(DISTINCT b.id)::int AS battles_count,\n       COUNT(DISTINCT s.id) FILTER (WHERE s.status IN ('убит', 'пропал без вести'))::int AS losses,\n       ROUND((COUNT(DISTINCT s.id) FILTER (WHERE s.status IN ('убит', 'пропал без вести')))::numeric / NULLIF(COUNT(DISTINCT b.id), 0), 2)::float AS loss_per_battle_ratio,\n       PERCENT_RANK() OVER (ORDER BY (MAX(b.end_date) - MIN(b.start_date)) DESC)::float AS survival_percentile\nFROM military_unit mu\nJOIN battle_military_unit bmu ON mu.id = bmu.unit_id\nJOIN battle b ON bmu.battle_id = b.id\nLEFT JOIN military_service ms ON mu.id = ms.unit_id\nLEFT JOIN soldier s ON ms.soldier_id = s.id\nGROUP BY mu.id, mu.unit_name\nORDER BY total_duration DESC, mu.unit_name;	{"data": [["88-й отдельный лыжный батальон", 1190, 3, 0, 0.0, 0.0], ["1-й отдельный чехословацкий батальон", 1176, 3, 2, 0.67, 0.034482758620689655], ["46-й гвардейский ночной бомбардировочный полк", 964, 4, 1, 0.25, 0.06896551724137931], ["28-я дивизия народного ополчения", 931, 2, 1, 0.5, 0.10344827586206896], ["Отдельный отряд собак-миноискателей", 871, 1, 0, 0.0, 0.13793103448275862], ["101-й полк НКВД", 647, 4, 1, 0.25, 0.1724137931034483], ["1-й чехословацкий отдельный батальон", 646, 2, 0, 0.0, 0.20689655172413793], ["316-я стрелковая дивизия", 629, 3, 1, 0.33, 0.2413793103448276], ["62-я армия", 543, 3, 1, 0.33, 0.27586206896551724], ["1-я гвардейская танковая армия", 473, 4, 1, 0.25, 0.3103448275862069], ["14-я отдельная штрафная рота", 447, 1, 0, 0.0, 0.3448275862068966], ["2-я ударная армия", 344, 2, 0, 0.0, 0.3793103448275862], ["8-я гвардейская армия", 319, 4, 0, 0.0, 0.41379310344827586], ["3-я воздушная армия", 306, 2, 1, 0.5, 0.4482758620689655], ["1-я морская бригада", 247, 1, 0, 0.0, 0.4827586206896552], ["7-я гвардейская миномётная дивизия", 202, 1, 0, 0.0, 0.5172413793103449], ["585-й женский авиаполк", 200, 1, 1, 1.0, 0.5517241379310345], ["64-я стрелковая дивизия", 200, 1, 0, 0.0, 0.5517241379310345], ["Отдельная медико-санитарная рота", 200, 1, 1, 1.0, 0.5517241379310345], ["37-й гвардейский миномётный полк", 119, 1, 1, 1.0, 0.6551724137931034], ["150-я стрелковая дивизия", 116, 2, 1, 0.5, 0.6896551724137931], ["106-я стрелковая дивизия", 102, 1, 1, 1.0, 0.7241379310344828], ["101-й инженерно-сапёрный батальон", 49, 1, 1, 1.0, 0.7586206896551724], ["16-я воздушная армия", 49, 1, 0, 0.0, 0.7586206896551724], ["18-я дивизия СС \\"Хорст Вессель\\"", 49, 1, 0, 0.0, 0.7586206896551724], ["225-й отдельный инженерный батальон", 49, 1, 1, 1.0, 0.7586206896551724], ["Отдельный отряд собак-истребителей танков", 49, 1, 0, 0.0, 0.7586206896551724], ["Отдельный батальон связи №45", 42, 1, 0, 0.0, 0.9310344827586207], ["369-й отдельный батальон морской пехоты", 41, 1, 0, 0.0, 0.9655172413793104], ["101-й учебный полк", 24, 1, 0, 0.0, 1.0]], "columns": ["unit_name", "total_duration", "battles_count", "losses", "loss_per_battle_ratio", "survival_percentile"], "row_count": 30}	{hard}
83	2	11	Сезонность боевых действий	Для выявления сезонных закономерностей в боевых действиях проанализируйте все 12 месяцев года. Сгенерируйте календарь месяцев от 1 до 12 с их названиями. Подсчитайте общее количество завершившихся сражений (total_battles по end_date) и долю побед советских войск (win_percentage, округлённую до 1 знака после запятой) для каждого месяца. Победами считаются битвы с исходами, свидетельствующими об успехе СССР (содержащими корни «побед», «успеш», «освобожд», «разгром», «взятие», «капитуляц» и не относящимися к победам вермахта). Если в месяце не было боев, выведите 0 боев и 0.0% побед. Выведите month_num, month_name, total_battles, win_percentage с сортировкой по номеру месяца.\n\nПоля в результирующей таблице: `month_num`, `month_name`, `total_battles`, `win_percentage`\nПримечание: название месяца month_name должно быть на английском языке и не содержать пробелов-заполнителей (используйте TRIM(TO_CHAR(...)) или формат 'FMMonth').	Используйте generate_series(1, 12) для создания сетки месяцев и объедините через LEFT JOIN с группировкой битв по EXTRACT(MONTH FROM end_date). Для формирования month_name без концевых пробелов используйте TRIM(TO_CHAR(TO_DATE(m::text, 'MM'), 'Month')) или TO_CHAR(..., 'FMMonth').	WITH all_months AS (\n    SELECT m AS month_num,\n           TRIM(TO_CHAR(TO_DATE(m::text, 'MM'), 'Month')) AS month_name\n    FROM generate_series(1, 12) m\n),\nmonthly_battles AS (\n    SELECT EXTRACT(MONTH FROM end_date)::int AS month_num,\n           COUNT(*) AS total_battles,\n           COUNT(*) FILTER (WHERE result ~* '(побед|успеш|освобожд|разгром|взятие|капитуляц)' AND result !~* 'вермахт') AS victories\n    FROM battle\n    GROUP BY EXTRACT(MONTH FROM end_date)::int\n)\nSELECT am.month_num,\n       am.month_name,\n       COALESCE(mb.total_battles, 0)::int AS total_battles,\n       COALESCE(ROUND(mb.victories * 100.0 / NULLIF(mb.total_battles, 0), 1)::float, 0.0) AS win_percentage\nFROM all_months am\nLEFT JOIN monthly_battles mb ON am.month_num = mb.month_num\nORDER BY am.month_num;	{"data": [[1, "January", 3, 33.3], [2, "February", 4, 50.0], [3, "March", 2, 0.0], [4, "April", 2, 50.0], [5, "May", 5, 60.0], [6, "June", 2, 0.0], [7, "July", 1, 0.0], [8, "August", 3, 66.7], [9, "September", 2, 50.0], [10, "October", 3, 33.3], [11, "November", 0, 0.0], [12, "December", 3, 33.3]], "columns": ["month_num", "month_name", "total_battles", "win_percentage"], "row_count": 12}	{cte,calendar,hard}
\.


--
-- Data for Name: tasks_solved; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasks_solved (user_id, task_global_id, solved_at, user_query, updated_at) FROM stdin;
\.


--
-- Data for Name: user_achievement_progress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_achievement_progress (user_id, achievement_id, current_count) FROM stdin;
\.


--
-- Data for Name: user_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_events (id, "timestamp", user_id, task_id, event_type, payload) FROM stdin;
\.


--
-- Data for Name: user_progress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_progress (user_id, easy_tasks_solved, medium_tasks_solved, hard_tasks_solved) FROM stdin;
\.


--
-- Data for Name: user_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_refresh_tokens (user_id, refresh_token, expires_at, created_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, login, email, fullname, "group", total_score) FROM stdin;
\.


--
-- Data for Name: users_achievements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_achievements (user_id, achievement_id) FROM stdin;
\.


--
-- Data for Name: users_clues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_clues (user_id, task_global_id, clue_type) FROM stdin;
\.


--
-- Data for Name: users_quest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_quest (user_id, quest_id, current_scene_id, created_at, completed_at) FROM stdin;
\.


--
-- Name: bgw_job_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.bgw_job_id_seq', 1000, false);


--
-- Name: chunk_column_stats_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_column_stats_id_seq', 1, false);


--
-- Name: chunk_constraint_name; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_constraint_name', 1, false);


--
-- Name: chunk_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_id_seq', 11, true);


--
-- Name: dimension_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.dimension_id_seq', 1, true);


--
-- Name: dimension_slice_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.dimension_slice_id_seq', 11, true);


--
-- Name: hypertable_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.hypertable_id_seq', 1, true);


--
-- Name: achievements_achievement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.achievements_achievement_id_seq', 1, false);


--
-- Name: quest_tasks_solved_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quest_tasks_solved_id_seq', 4, true);


--
-- Name: schema_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schema_migrations_id_seq', 12, true);


--
-- Name: tasks_task_global_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tasks_task_global_id_seq', 110, true);


--
-- Name: user_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_events_id_seq', 28099, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 132, true);


--
-- Name: achievements achievements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (achievement_id);


--
-- Name: password_hashes password_hashes_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_hashes
    ADD CONSTRAINT password_hashes_user_id_key UNIQUE (user_id);


--
-- Name: quest_tasks_solved quest_tasks_solved_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quest_tasks_solved
    ADD CONSTRAINT quest_tasks_solved_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_version_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_version_key UNIQUE (version);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (task_global_id);


--
-- Name: user_achievement_progress user_achievement_progress_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_achievement_progress
    ADD CONSTRAINT user_achievement_progress_pk PRIMARY KEY (user_id, achievement_id);


--
-- Name: user_progress user_progress_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_progress
    ADD CONSTRAINT user_progress_user_id_key UNIQUE (user_id);


--
-- Name: user_refresh_tokens user_refresh_tokens_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_refresh_tokens
    ADD CONSTRAINT user_refresh_tokens_pk PRIMARY KEY (user_id);


--
-- Name: user_refresh_tokens user_refresh_tokens_refresh_token_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_refresh_tokens
    ADD CONSTRAINT user_refresh_tokens_refresh_token_key UNIQUE (refresh_token);


--
-- Name: users_clues users_clues_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_clues
    ADD CONSTRAINT users_clues_pk PRIMARY KEY (user_id, task_global_id, clue_type);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_login_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_key UNIQUE (login);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users_quest users_quest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_quest
    ADD CONSTRAINT users_quest_pkey PRIMARY KEY (user_id, quest_id);


--
-- Name: _hyper_1_10_chunk_idx_user_events_task; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_10_chunk_idx_user_events_task ON _timescaledb_internal._hyper_1_10_chunk USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: _hyper_1_10_chunk_idx_user_events_type; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_10_chunk_idx_user_events_type ON _timescaledb_internal._hyper_1_10_chunk USING btree (event_type);


--
-- Name: _hyper_1_10_chunk_idx_user_events_user; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_10_chunk_idx_user_events_user ON _timescaledb_internal._hyper_1_10_chunk USING btree (user_id);


--
-- Name: _hyper_1_10_chunk_user_events_timestamp_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_10_chunk_user_events_timestamp_idx ON _timescaledb_internal._hyper_1_10_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_11_chunk_idx_user_events_task; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_11_chunk_idx_user_events_task ON _timescaledb_internal._hyper_1_11_chunk USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: _hyper_1_11_chunk_idx_user_events_type; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_11_chunk_idx_user_events_type ON _timescaledb_internal._hyper_1_11_chunk USING btree (event_type);


--
-- Name: _hyper_1_11_chunk_idx_user_events_user; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_11_chunk_idx_user_events_user ON _timescaledb_internal._hyper_1_11_chunk USING btree (user_id);


--
-- Name: _hyper_1_11_chunk_user_events_timestamp_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_11_chunk_user_events_timestamp_idx ON _timescaledb_internal._hyper_1_11_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_1_chunk_idx_user_events_task; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_1_chunk_idx_user_events_task ON _timescaledb_internal._hyper_1_1_chunk USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: _hyper_1_1_chunk_idx_user_events_time; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_1_chunk_idx_user_events_time ON _timescaledb_internal._hyper_1_1_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_1_chunk_idx_user_events_type; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_1_chunk_idx_user_events_type ON _timescaledb_internal._hyper_1_1_chunk USING btree (event_type);


--
-- Name: _hyper_1_1_chunk_idx_user_events_user; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_1_chunk_idx_user_events_user ON _timescaledb_internal._hyper_1_1_chunk USING btree (user_id);


--
-- Name: _hyper_1_1_chunk_user_events_timestamp_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_1_chunk_user_events_timestamp_idx ON _timescaledb_internal._hyper_1_1_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_2_chunk_idx_user_events_task; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_2_chunk_idx_user_events_task ON _timescaledb_internal._hyper_1_2_chunk USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: _hyper_1_2_chunk_idx_user_events_time; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_2_chunk_idx_user_events_time ON _timescaledb_internal._hyper_1_2_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_2_chunk_idx_user_events_type; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_2_chunk_idx_user_events_type ON _timescaledb_internal._hyper_1_2_chunk USING btree (event_type);


--
-- Name: _hyper_1_2_chunk_idx_user_events_user; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_2_chunk_idx_user_events_user ON _timescaledb_internal._hyper_1_2_chunk USING btree (user_id);


--
-- Name: _hyper_1_2_chunk_user_events_timestamp_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_2_chunk_user_events_timestamp_idx ON _timescaledb_internal._hyper_1_2_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_3_chunk_idx_user_events_task; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_3_chunk_idx_user_events_task ON _timescaledb_internal._hyper_1_3_chunk USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: _hyper_1_3_chunk_idx_user_events_time; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_3_chunk_idx_user_events_time ON _timescaledb_internal._hyper_1_3_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_3_chunk_idx_user_events_type; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_3_chunk_idx_user_events_type ON _timescaledb_internal._hyper_1_3_chunk USING btree (event_type);


--
-- Name: _hyper_1_3_chunk_idx_user_events_user; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_3_chunk_idx_user_events_user ON _timescaledb_internal._hyper_1_3_chunk USING btree (user_id);


--
-- Name: _hyper_1_3_chunk_user_events_timestamp_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_3_chunk_user_events_timestamp_idx ON _timescaledb_internal._hyper_1_3_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_4_chunk_idx_user_events_task; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_4_chunk_idx_user_events_task ON _timescaledb_internal._hyper_1_4_chunk USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: _hyper_1_4_chunk_idx_user_events_time; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_4_chunk_idx_user_events_time ON _timescaledb_internal._hyper_1_4_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_4_chunk_idx_user_events_type; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_4_chunk_idx_user_events_type ON _timescaledb_internal._hyper_1_4_chunk USING btree (event_type);


--
-- Name: _hyper_1_4_chunk_idx_user_events_user; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_4_chunk_idx_user_events_user ON _timescaledb_internal._hyper_1_4_chunk USING btree (user_id);


--
-- Name: _hyper_1_4_chunk_user_events_timestamp_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_4_chunk_user_events_timestamp_idx ON _timescaledb_internal._hyper_1_4_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_5_chunk_idx_user_events_task; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_5_chunk_idx_user_events_task ON _timescaledb_internal._hyper_1_5_chunk USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: _hyper_1_5_chunk_idx_user_events_time; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_5_chunk_idx_user_events_time ON _timescaledb_internal._hyper_1_5_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_5_chunk_idx_user_events_type; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_5_chunk_idx_user_events_type ON _timescaledb_internal._hyper_1_5_chunk USING btree (event_type);


--
-- Name: _hyper_1_5_chunk_idx_user_events_user; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_5_chunk_idx_user_events_user ON _timescaledb_internal._hyper_1_5_chunk USING btree (user_id);


--
-- Name: _hyper_1_5_chunk_user_events_timestamp_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_5_chunk_user_events_timestamp_idx ON _timescaledb_internal._hyper_1_5_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_6_chunk_idx_user_events_task; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_6_chunk_idx_user_events_task ON _timescaledb_internal._hyper_1_6_chunk USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: _hyper_1_6_chunk_idx_user_events_time; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_6_chunk_idx_user_events_time ON _timescaledb_internal._hyper_1_6_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_6_chunk_idx_user_events_type; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_6_chunk_idx_user_events_type ON _timescaledb_internal._hyper_1_6_chunk USING btree (event_type);


--
-- Name: _hyper_1_6_chunk_idx_user_events_user; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_6_chunk_idx_user_events_user ON _timescaledb_internal._hyper_1_6_chunk USING btree (user_id);


--
-- Name: _hyper_1_6_chunk_user_events_timestamp_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_6_chunk_user_events_timestamp_idx ON _timescaledb_internal._hyper_1_6_chunk USING btree ("timestamp" DESC);


--
-- Name: _hyper_1_9_chunk_idx_user_events_task; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_9_chunk_idx_user_events_task ON _timescaledb_internal._hyper_1_9_chunk USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: _hyper_1_9_chunk_idx_user_events_type; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_9_chunk_idx_user_events_type ON _timescaledb_internal._hyper_1_9_chunk USING btree (event_type);


--
-- Name: _hyper_1_9_chunk_idx_user_events_user; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_9_chunk_idx_user_events_user ON _timescaledb_internal._hyper_1_9_chunk USING btree (user_id);


--
-- Name: _hyper_1_9_chunk_user_events_timestamp_idx; Type: INDEX; Schema: _timescaledb_internal; Owner: postgres
--

CREATE INDEX _hyper_1_9_chunk_user_events_timestamp_idx ON _timescaledb_internal._hyper_1_9_chunk USING btree ("timestamp" DESC);


--
-- Name: idx_quest_tasks_solved_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_quest_tasks_solved_user ON public.quest_tasks_solved USING btree (user_id);


--
-- Name: idx_user_events_task; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_events_task ON public.user_events USING btree (task_id) WHERE (task_id IS NOT NULL);


--
-- Name: idx_user_events_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_events_time ON public.user_events USING btree ("timestamp" DESC);


--
-- Name: idx_user_events_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_events_type ON public.user_events USING btree (event_type);


--
-- Name: idx_user_events_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_events_user ON public.user_events USING btree (user_id);


--
-- Name: idx_users_quest_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_users_quest_user_id ON public.users_quest USING btree (user_id);


--
-- Name: user_events_timestamp_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_events_timestamp_idx ON public.user_events USING btree ("timestamp" DESC);


--
-- Name: users_achievements fk_achievements_achievement_id_to_users_achievements_achievemen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_achievements
    ADD CONSTRAINT fk_achievements_achievement_id_to_users_achievements_achievemen FOREIGN KEY (achievement_id) REFERENCES public.achievements(achievement_id);


--
-- Name: tasks_solved fk_tasks_task_global_id_to_tasks_solved_task_global_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks_solved
    ADD CONSTRAINT fk_tasks_task_global_id_to_tasks_solved_task_global_id FOREIGN KEY (task_global_id) REFERENCES public.tasks(task_global_id);


--
-- Name: password_hashes fk_users_user_id_to_password_hashes_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_hashes
    ADD CONSTRAINT fk_users_user_id_to_password_hashes_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: tasks_solved fk_users_user_id_to_tasks_solved_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks_solved
    ADD CONSTRAINT fk_users_user_id_to_tasks_solved_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: user_progress fk_users_user_id_to_user_progress_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_progress
    ADD CONSTRAINT fk_users_user_id_to_user_progress_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: users_achievements fk_users_user_id_to_users_achievements_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_achievements
    ADD CONSTRAINT fk_users_user_id_to_users_achievements_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: quest_tasks_solved quest_tasks_solved_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quest_tasks_solved
    ADD CONSTRAINT quest_tasks_solved_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: user_achievement_progress user_achievement_progress_achievements_achievement_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_achievement_progress
    ADD CONSTRAINT user_achievement_progress_achievements_achievement_id_fk FOREIGN KEY (achievement_id) REFERENCES public.achievements(achievement_id);


--
-- Name: user_achievement_progress user_achievement_progress_users_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_achievement_progress
    ADD CONSTRAINT user_achievement_progress_users_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: user_refresh_tokens user_refresh_tokens_users_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_refresh_tokens
    ADD CONSTRAINT user_refresh_tokens_users_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: users_clues users_clues_tasks_task_global_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_clues
    ADD CONSTRAINT users_clues_tasks_task_global_id_fk FOREIGN KEY (task_global_id) REFERENCES public.tasks(task_global_id);


--
-- Name: users_clues users_clues_users_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_clues
    ADD CONSTRAINT users_clues_users_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

