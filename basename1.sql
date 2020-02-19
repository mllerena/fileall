--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-0ubuntu0.19.04.1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-0ubuntu0.19.04.1)

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

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.area (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "stageId" integer NOT NULL,
    mission character varying DEFAULT ''::character varying NOT NULL,
    view character varying DEFAULT ''::character varying NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.area OWNER TO postgres;

--
-- Name: area_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.area_id_seq OWNER TO postgres;

--
-- Name: area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.area_id_seq OWNED BY public.area.id;


--
-- Name: comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "referenceTypeId" integer NOT NULL,
    "referenceOrigenId" integer NOT NULL,
    short_code character varying,
    long_code character varying,
    "order" integer,
    "referenceId" integer NOT NULL
);


ALTER TABLE public.comment OWNER TO postgres;

--
-- Name: comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_id_seq OWNER TO postgres;

--
-- Name: comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comment_id_seq OWNED BY public.comment.id;


--
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    ide character varying DEFAULT ''::character varying NOT NULL,
    name_legal_representative character varying DEFAULT ''::character varying NOT NULL,
    ide_legal_representative character varying DEFAULT ''::character varying NOT NULL,
    address character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    url_logo character varying DEFAULT ''::character varying NOT NULL,
    "sectorId" integer NOT NULL,
    created integer,
    updated integer,
    type character varying DEFAULT ''::character varying NOT NULL,
    "economicActivityEntityId" integer NOT NULL,
    short_code character varying,
    long_code character varying,
    "order" integer,
    "subscriptionId" integer
);


ALTER TABLE public.company OWNER TO postgres;

--
-- Name: company_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_id_seq OWNER TO postgres;

--
-- Name: company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_id_seq OWNED BY public.company.id;


--
-- Name: company_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company_values (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "stageId" integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.company_values OWNER TO postgres;

--
-- Name: company_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_values_id_seq OWNER TO postgres;

--
-- Name: company_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_values_id_seq OWNED BY public.company_values.id;


--
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "stageId" integer NOT NULL,
    mission character varying DEFAULT ''::character varying NOT NULL,
    view character varying DEFAULT ''::character varying NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.department OWNER TO postgres;

--
-- Name: department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.department_id_seq OWNER TO postgres;

--
-- Name: department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.department_id_seq OWNED BY public.department.id;


--
-- Name: economic_activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.economic_activity (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.economic_activity OWNER TO postgres;

--
-- Name: economic_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.economic_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.economic_activity_id_seq OWNER TO postgres;

--
-- Name: economic_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.economic_activity_id_seq OWNED BY public.economic_activity.id;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    phone character varying NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    "positionId" integer NOT NULL,
    fullname character varying NOT NULL,
    ide character varying NOT NULL,
    "departmentId" integer NOT NULL,
    created integer,
    updated integer,
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "areaId" integer NOT NULL,
    "stageId" integer NOT NULL,
    "bossId" integer
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: COLUMN employee."bossId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.employee."bossId" IS 'Jefe Inmediato';


--
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_id_seq OWNER TO postgres;

--
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- Name: file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.file (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    sequence integer DEFAULT 0 NOT NULL,
    size integer NOT NULL,
    reference integer NOT NULL,
    type character varying,
    filename character varying NOT NULL,
    fieldname character varying NOT NULL,
    encoding character varying NOT NULL,
    mimetype character varying NOT NULL,
    path character varying NOT NULL,
    destination character varying NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.file OWNER TO postgres;

--
-- Name: file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.file_id_seq OWNER TO postgres;

--
-- Name: file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.file_id_seq OWNED BY public.file.id;


--
-- Name: goal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.goal (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "stageId" integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.goal OWNER TO postgres;

--
-- Name: goal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.goal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.goal_id_seq OWNER TO postgres;

--
-- Name: goal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.goal_id_seq OWNED BY public.goal.id;


--
-- Name: idea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.idea (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    idea text NOT NULL,
    description text NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    updated timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.idea OWNER TO postgres;

--
-- Name: indicator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indicator (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    formula character varying DEFAULT ''::character varying NOT NULL,
    "indicatorTendenceId" integer NOT NULL,
    "indicatorMeasurementId" integer NOT NULL,
    "indicatorTypeId" integer NOT NULL,
    "indicatorScheduleId" integer NOT NULL,
    created integer,
    updated integer,
    origen character varying DEFAULT 'M'::character varying NOT NULL,
    short_code character varying,
    long_code character varying,
    "order" integer,
    "companyId" integer
);


ALTER TABLE public.indicator OWNER TO postgres;

--
-- Name: COLUMN indicator.origen; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.indicator.origen IS 'M: Manual; A:Automático';


--
-- Name: indicator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.indicator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indicator_id_seq OWNER TO postgres;

--
-- Name: indicator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.indicator_id_seq OWNED BY public.indicator.id;


--
-- Name: indicator_measurement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indicator_measurement (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.indicator_measurement OWNER TO postgres;

--
-- Name: indicator_measurement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.indicator_measurement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indicator_measurement_id_seq OWNER TO postgres;

--
-- Name: indicator_measurement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.indicator_measurement_id_seq OWNED BY public.indicator_measurement.id;


--
-- Name: indicator_schedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indicator_schedule (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    "order" integer,
    long_code character varying
);


ALTER TABLE public.indicator_schedule OWNER TO postgres;

--
-- Name: indicator_schedule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.indicator_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indicator_schedule_id_seq OWNER TO postgres;

--
-- Name: indicator_schedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.indicator_schedule_id_seq OWNED BY public.indicator_schedule.id;


--
-- Name: indicator_tendence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indicator_tendence (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.indicator_tendence OWNER TO postgres;

--
-- Name: indicator_tendence_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.indicator_tendence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indicator_tendence_id_seq OWNER TO postgres;

--
-- Name: indicator_tendence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.indicator_tendence_id_seq OWNED BY public.indicator_tendence.id;


--
-- Name: indicator_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indicator_type (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.indicator_type OWNER TO postgres;

--
-- Name: indicator_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.indicator_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indicator_type_id_seq OWNER TO postgres;

--
-- Name: indicator_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.indicator_type_id_seq OWNED BY public.indicator_type.id;


--
-- Name: key_factor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.key_factor (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "stageId" integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.key_factor OWNER TO postgres;

--
-- Name: key_factor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.key_factor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.key_factor_id_seq OWNER TO postgres;

--
-- Name: key_factor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.key_factor_id_seq OWNED BY public.key_factor.id;


--
-- Name: meeting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    from_at timestamp without time zone,
    to_at timestamp without time zone,
    "time" integer,
    type_origin character varying,
    id_relationed integer,
    assigned integer,
    "stageId" integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.meeting OWNER TO postgres;

--
-- Name: meeting_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meeting_id_seq OWNER TO postgres;

--
-- Name: meeting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_id_seq OWNED BY public.meeting.id;


--
-- Name: meeting_participant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting_participant (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    assigned character varying NOT NULL,
    "meetingId" integer,
    created integer,
    updated integer
);


ALTER TABLE public.meeting_participant OWNER TO postgres;

--
-- Name: meeting_participant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_participant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meeting_participant_id_seq OWNER TO postgres;

--
-- Name: meeting_participant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_participant_id_seq OWNED BY public.meeting_participant.id;


--
-- Name: meeting_task_pending; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting_task_pending (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    assigned uuid NOT NULL,
    "meetingId" integer,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.meeting_task_pending OWNER TO postgres;

--
-- Name: meeting_task_pending_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_task_pending_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meeting_task_pending_id_seq OWNER TO postgres;

--
-- Name: meeting_task_pending_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_task_pending_id_seq OWNED BY public.meeting_task_pending.id;


--
-- Name: module; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.module (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.module OWNER TO postgres;

--
-- Name: module_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.module_id_seq OWNER TO postgres;

--
-- Name: module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.module_id_seq OWNED BY public.module.id;


--
-- Name: objective; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objective (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "stageId" integer NOT NULL,
    created integer,
    updated integer,
    "employeeId" integer NOT NULL,
    "objectivePerspectiveId" integer NOT NULL,
    "objectiveLevelId" integer NOT NULL,
    "objectiveReference" integer DEFAULT 0,
    status character varying DEFAULT 'A'::character varying NOT NULL,
    "ObjectivePerspectiveId" integer,
    "ObjectiveLevelId" integer,
    short_code character varying,
    long_code character varying,
    "order" integer,
    "goalId" integer
);


ALTER TABLE public.objective OWNER TO postgres;

--
-- Name: COLUMN objective."goalId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.objective."goalId" IS '0: Cuando no existe relación Goal, campo informativo no relacional';


--
-- Name: objective_goal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objective_goal (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    "objectiveIndicatorId" integer NOT NULL,
    month integer NOT NULL,
    year integer NOT NULL,
    status character varying DEFAULT 'A'::character varying NOT NULL,
    tendence_short_code character varying,
    traffic_light integer,
    goal_por numeric DEFAULT 0 NOT NULL,
    goal_value numeric DEFAULT 0 NOT NULL,
    real_por numeric DEFAULT 0 NOT NULL,
    real_value numeric DEFAULT 0 NOT NULL,
    index_compliance numeric DEFAULT 0 NOT NULL,
    score numeric DEFAULT 0 NOT NULL,
    range_exceptional_por numeric DEFAULT 0 NOT NULL,
    range_inacceptable_por numeric DEFAULT 0 NOT NULL,
    index_performance numeric DEFAULT 0 NOT NULL,
    r1_por numeric DEFAULT 0 NOT NULL,
    r2_por numeric DEFAULT 0 NOT NULL,
    r1_value numeric DEFAULT 0 NOT NULL,
    r2_value numeric DEFAULT 0 NOT NULL
);


ALTER TABLE public.objective_goal OWNER TO postgres;

--
-- Name: COLUMN objective_goal.tendence_short_code; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.objective_goal.tendence_short_code IS 'P: Positivo; N: Negativo';


--
-- Name: COLUMN objective_goal.traffic_light; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.objective_goal.traffic_light IS '1: green; 2: yellow; 3: red';


--
-- Name: objective_goal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objective_goal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objective_goal_id_seq OWNER TO postgres;

--
-- Name: objective_goal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objective_goal_id_seq OWNED BY public.objective_goal.id;


--
-- Name: objective_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objective_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objective_id_seq OWNER TO postgres;

--
-- Name: objective_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objective_id_seq OWNED BY public.objective.id;


--
-- Name: objective_indicator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objective_indicator (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    "objectiveId" integer NOT NULL,
    "indicatorId" integer NOT NULL,
    score numeric
);


ALTER TABLE public.objective_indicator OWNER TO postgres;

--
-- Name: objective_indicator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objective_indicator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objective_indicator_id_seq OWNER TO postgres;

--
-- Name: objective_indicator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objective_indicator_id_seq OWNED BY public.objective_indicator.id;


--
-- Name: objective_level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objective_level (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.objective_level OWNER TO postgres;

--
-- Name: objective_level_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objective_level_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objective_level_id_seq OWNER TO postgres;

--
-- Name: objective_level_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objective_level_id_seq OWNED BY public.objective_level.id;


--
-- Name: objective_participant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objective_participant (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    "objectiveId" integer NOT NULL,
    created integer,
    updated integer,
    "employeeId" integer NOT NULL,
    type character varying DEFAULT 'I'::character varying NOT NULL,
    "ObjectiveId" integer
);


ALTER TABLE public.objective_participant OWNER TO postgres;

--
-- Name: objective_participant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objective_participant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objective_participant_id_seq OWNER TO postgres;

--
-- Name: objective_participant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objective_participant_id_seq OWNED BY public.objective_participant.id;


--
-- Name: objective_perspective; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objective_perspective (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.objective_perspective OWNER TO postgres;

--
-- Name: objective_perspective_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objective_perspective_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objective_perspective_id_seq OWNER TO postgres;

--
-- Name: objective_perspective_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objective_perspective_id_seq OWNED BY public.objective_perspective.id;


--
-- Name: objetive_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objetive_comment (
    is_active boolean DEFAULT true NOT NULL,
    created character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated character varying DEFAULT ''::character varying NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    is_automatic boolean DEFAULT true NOT NULL,
    "objectiveId" integer
);


ALTER TABLE public.objetive_comment OWNER TO postgres;

--
-- Name: objetive_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.objetive_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.objetive_comment_id_seq OWNER TO postgres;

--
-- Name: objetive_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.objetive_comment_id_seq OWNED BY public.objetive_comment.id;


--
-- Name: organizational_level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organizational_level (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    level integer NOT NULL,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.organizational_level OWNER TO postgres;

--
-- Name: organizational_level_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organizational_level_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organizational_level_id_seq OWNER TO postgres;

--
-- Name: organizational_level_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organizational_level_id_seq OWNED BY public.organizational_level.id;


--
-- Name: parameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parameter (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    type character varying NOT NULL,
    category character varying NOT NULL,
    param_varchar character varying,
    param_int bigint,
    param_float double precision,
    param_date date,
    param_json json,
    param_xml xml,
    "companyId" integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.parameter OWNER TO postgres;

--
-- Name: parameter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parameter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parameter_id_seq OWNER TO postgres;

--
-- Name: parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parameter_id_seq OWNED BY public.parameter.id;


--
-- Name: permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permission (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "moduleId" integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.permission OWNER TO postgres;

--
-- Name: permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permission_id_seq OWNER TO postgres;

--
-- Name: permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permission_id_seq OWNED BY public.permission.id;


--
-- Name: permission_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permission_role (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    "permissionId" integer NOT NULL,
    "roleId" integer NOT NULL,
    created integer,
    updated integer
);


ALTER TABLE public.permission_role OWNER TO postgres;

--
-- Name: permission_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permission_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permission_role_id_seq OWNER TO postgres;

--
-- Name: permission_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permission_role_id_seq OWNED BY public.permission_role.id;


--
-- Name: position; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."position" (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "organizationalLevelId" integer NOT NULL,
    mission character varying DEFAULT ''::character varying NOT NULL,
    view character varying DEFAULT ''::character varying NOT NULL,
    essential character varying DEFAULT ''::character varying NOT NULL,
    created integer,
    updated integer,
    "stageId" integer NOT NULL,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public."position" OWNER TO postgres;

--
-- Name: position_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.position_id_seq OWNER TO postgres;

--
-- Name: position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.position_id_seq OWNED BY public."position".id;


--
-- Name: priority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.priority (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "stageId" integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.priority OWNER TO postgres;

--
-- Name: priority_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.priority_comment (
    is_active boolean DEFAULT true NOT NULL,
    created character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated character varying DEFAULT ''::character varying NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    is_automatic boolean DEFAULT true NOT NULL,
    "priorityId" integer
);


ALTER TABLE public.priority_comment OWNER TO postgres;

--
-- Name: priority_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.priority_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.priority_comment_id_seq OWNER TO postgres;

--
-- Name: priority_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.priority_comment_id_seq OWNED BY public.priority_comment.id;


--
-- Name: priority_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.priority_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.priority_id_seq OWNER TO postgres;

--
-- Name: priority_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.priority_id_seq OWNED BY public.priority.id;


--
-- Name: priority_participant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.priority_participant (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    assigned uuid NOT NULL,
    "priorityId" integer,
    created integer,
    updated integer,
    id integer NOT NULL
);


ALTER TABLE public.priority_participant OWNER TO postgres;

--
-- Name: priority_participant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.priority_participant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.priority_participant_id_seq OWNER TO postgres;

--
-- Name: priority_participant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.priority_participant_id_seq OWNED BY public.priority_participant.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "stageId" integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: project_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_comment (
    is_active boolean DEFAULT true NOT NULL,
    created character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated character varying DEFAULT ''::character varying NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    is_automatic boolean DEFAULT true NOT NULL,
    "projectId" integer
);


ALTER TABLE public.project_comment OWNER TO postgres;

--
-- Name: project_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_comment_id_seq OWNER TO postgres;

--
-- Name: project_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_comment_id_seq OWNED BY public.project_comment.id;


--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_id_seq OWNER TO postgres;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_id_seq OWNED BY public.project.id;


--
-- Name: project_participant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_participant (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    assigned uuid NOT NULL,
    "projectId" integer,
    created integer,
    updated integer
);


ALTER TABLE public.project_participant OWNER TO postgres;

--
-- Name: reference_origen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reference_origen (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.reference_origen OWNER TO postgres;

--
-- Name: reference_origen_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reference_origen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reference_origen_id_seq OWNER TO postgres;

--
-- Name: reference_origen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reference_origen_id_seq OWNED BY public.reference_origen.id;


--
-- Name: reference_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reference_type (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.reference_type OWNER TO postgres;

--
-- Name: reference_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reference_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reference_type_id_seq OWNER TO postgres;

--
-- Name: reference_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reference_type_id_seq OWNED BY public.reference_type.id;


--
-- Name: reference_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reference_values (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "referenceTypeId" integer NOT NULL,
    "referenceOrigenId" integer NOT NULL,
    short_code character varying,
    long_code character varying,
    "order" integer,
    "referenceId" integer NOT NULL
);


ALTER TABLE public.reference_values OWNER TO postgres;

--
-- Name: reference_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reference_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reference_values_id_seq OWNER TO postgres;

--
-- Name: reference_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reference_values_id_seq OWNED BY public.reference_values.id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.role OWNER TO postgres;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO postgres;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- Name: role_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_user (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "roleId" integer NOT NULL,
    created integer,
    updated integer
);


ALTER TABLE public.role_user OWNER TO postgres;

--
-- Name: role_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_user_id_seq OWNER TO postgres;

--
-- Name: role_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_user_id_seq OWNED BY public.role_user.id;


--
-- Name: sector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sector (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.sector OWNER TO postgres;

--
-- Name: sector_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sector_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sector_id_seq OWNER TO postgres;

--
-- Name: sector_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sector_id_seq OWNED BY public.sector.id;


--
-- Name: stage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stage (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    period integer NOT NULL,
    from_at timestamp without time zone,
    to_at timestamp without time zone,
    mission character varying DEFAULT ''::character varying NOT NULL,
    view character varying DEFAULT ''::character varying NOT NULL,
    competitive_advantage character varying DEFAULT ''::character varying NOT NULL,
    "companyId" integer NOT NULL,
    created integer,
    updated integer,
    status character varying DEFAULT 'A'::character varying NOT NULL,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.stage OWNER TO postgres;

--
-- Name: stage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stage_id_seq OWNER TO postgres;

--
-- Name: stage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stage_id_seq OWNED BY public.stage.id;


--
-- Name: strategic_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strategic_projects (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    "stageId" integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.strategic_projects OWNER TO postgres;

--
-- Name: strategic_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strategic_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strategic_projects_id_seq OWNER TO postgres;

--
-- Name: strategic_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strategic_projects_id_seq OWNED BY public.strategic_projects.id;


--
-- Name: subscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscription (
    is_active boolean DEFAULT true NOT NULL,
    created integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated integer,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.subscription OWNER TO postgres;

--
-- Name: subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscription_id_seq OWNER TO postgres;

--
-- Name: subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscription_id_seq OWNED BY public.subscription.id;


--
-- Name: tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tag (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    name character varying NOT NULL,
    description character varying,
    reference integer NOT NULL,
    created integer,
    updated integer,
    short_code character varying,
    long_code character varying,
    "order" integer
);


ALTER TABLE public.tag OWNER TO postgres;

--
-- Name: tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_id_seq OWNER TO postgres;

--
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    id integer NOT NULL,
    username character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    is_admin boolean NOT NULL,
    failed_login_count integer DEFAULT 0 NOT NULL,
    first_login boolean DEFAULT false NOT NULL,
    force_password_change boolean DEFAULT false NOT NULL,
    last_failed_login_on timestamp without time zone,
    last_login_on timestamp without time zone,
    verified_phone boolean DEFAULT false NOT NULL,
    created integer,
    updated integer,
    "companyId" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: area id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area ALTER COLUMN id SET DEFAULT nextval('public.area_id_seq'::regclass);


--
-- Name: comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment ALTER COLUMN id SET DEFAULT nextval('public.comment_id_seq'::regclass);


--
-- Name: company id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company ALTER COLUMN id SET DEFAULT nextval('public.company_id_seq'::regclass);


--
-- Name: company_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_values ALTER COLUMN id SET DEFAULT nextval('public.company_values_id_seq'::regclass);


--
-- Name: department id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department ALTER COLUMN id SET DEFAULT nextval('public.department_id_seq'::regclass);


--
-- Name: economic_activity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economic_activity ALTER COLUMN id SET DEFAULT nextval('public.economic_activity_id_seq'::regclass);


--
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- Name: file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file ALTER COLUMN id SET DEFAULT nextval('public.file_id_seq'::regclass);


--
-- Name: goal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goal ALTER COLUMN id SET DEFAULT nextval('public.goal_id_seq'::regclass);


--
-- Name: indicator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator ALTER COLUMN id SET DEFAULT nextval('public.indicator_id_seq'::regclass);


--
-- Name: indicator_measurement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator_measurement ALTER COLUMN id SET DEFAULT nextval('public.indicator_measurement_id_seq'::regclass);


--
-- Name: indicator_schedule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator_schedule ALTER COLUMN id SET DEFAULT nextval('public.indicator_schedule_id_seq'::regclass);


--
-- Name: indicator_tendence id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator_tendence ALTER COLUMN id SET DEFAULT nextval('public.indicator_tendence_id_seq'::regclass);


--
-- Name: indicator_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator_type ALTER COLUMN id SET DEFAULT nextval('public.indicator_type_id_seq'::regclass);


--
-- Name: key_factor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key_factor ALTER COLUMN id SET DEFAULT nextval('public.key_factor_id_seq'::regclass);


--
-- Name: meeting id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting ALTER COLUMN id SET DEFAULT nextval('public.meeting_id_seq'::regclass);


--
-- Name: meeting_participant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_participant ALTER COLUMN id SET DEFAULT nextval('public.meeting_participant_id_seq'::regclass);


--
-- Name: meeting_task_pending id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_task_pending ALTER COLUMN id SET DEFAULT nextval('public.meeting_task_pending_id_seq'::regclass);


--
-- Name: module id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.module ALTER COLUMN id SET DEFAULT nextval('public.module_id_seq'::regclass);


--
-- Name: objective id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective ALTER COLUMN id SET DEFAULT nextval('public.objective_id_seq'::regclass);


--
-- Name: objective_goal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_goal ALTER COLUMN id SET DEFAULT nextval('public.objective_goal_id_seq'::regclass);


--
-- Name: objective_indicator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_indicator ALTER COLUMN id SET DEFAULT nextval('public.objective_indicator_id_seq'::regclass);


--
-- Name: objective_level id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_level ALTER COLUMN id SET DEFAULT nextval('public.objective_level_id_seq'::regclass);


--
-- Name: objective_participant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_participant ALTER COLUMN id SET DEFAULT nextval('public.objective_participant_id_seq'::regclass);


--
-- Name: objective_perspective id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_perspective ALTER COLUMN id SET DEFAULT nextval('public.objective_perspective_id_seq'::regclass);


--
-- Name: objetive_comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objetive_comment ALTER COLUMN id SET DEFAULT nextval('public.objetive_comment_id_seq'::regclass);


--
-- Name: organizational_level id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizational_level ALTER COLUMN id SET DEFAULT nextval('public.organizational_level_id_seq'::regclass);


--
-- Name: parameter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameter ALTER COLUMN id SET DEFAULT nextval('public.parameter_id_seq'::regclass);


--
-- Name: permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission ALTER COLUMN id SET DEFAULT nextval('public.permission_id_seq'::regclass);


--
-- Name: permission_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission_role ALTER COLUMN id SET DEFAULT nextval('public.permission_role_id_seq'::regclass);


--
-- Name: position id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."position" ALTER COLUMN id SET DEFAULT nextval('public.position_id_seq'::regclass);


--
-- Name: priority id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority ALTER COLUMN id SET DEFAULT nextval('public.priority_id_seq'::regclass);


--
-- Name: priority_comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority_comment ALTER COLUMN id SET DEFAULT nextval('public.priority_comment_id_seq'::regclass);


--
-- Name: priority_participant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority_participant ALTER COLUMN id SET DEFAULT nextval('public.priority_participant_id_seq'::regclass);


--
-- Name: project id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project ALTER COLUMN id SET DEFAULT nextval('public.project_id_seq'::regclass);


--
-- Name: project_comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_comment ALTER COLUMN id SET DEFAULT nextval('public.project_comment_id_seq'::regclass);


--
-- Name: reference_origen id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reference_origen ALTER COLUMN id SET DEFAULT nextval('public.reference_origen_id_seq'::regclass);


--
-- Name: reference_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reference_type ALTER COLUMN id SET DEFAULT nextval('public.reference_type_id_seq'::regclass);


--
-- Name: reference_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reference_values ALTER COLUMN id SET DEFAULT nextval('public.reference_values_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- Name: role_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user ALTER COLUMN id SET DEFAULT nextval('public.role_user_id_seq'::regclass);


--
-- Name: sector id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sector ALTER COLUMN id SET DEFAULT nextval('public.sector_id_seq'::regclass);


--
-- Name: stage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stage ALTER COLUMN id SET DEFAULT nextval('public.stage_id_seq'::regclass);


--
-- Name: strategic_projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strategic_projects ALTER COLUMN id SET DEFAULT nextval('public.strategic_projects_id_seq'::regclass);


--
-- Name: subscription id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription ALTER COLUMN id SET DEFAULT nextval('public.subscription_id_seq'::regclass);


--
-- Name: tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.area (is_active, created_at, updated_at, id, name, description, "stageId", mission, view, created, updated, short_code, long_code, "order") FROM stdin;
t	2020-02-05 03:05:57.085904	2020-02-06 02:16:29.141932	16	FINANCIERO	PROCESO FINANCIERO/CONTABLE Y RECUPERACION DE CARTERA	9	Asegurar la provisión de flujo de efectivo y capital de trabajo necesario para mantener operación de la empresa.	Nos vemos siendo un Área reconocida por la agilidad y calidad en el manejo de los recursos financieros generados por la empresa, aportando procesos de apoyo a todas las áreas de la Cía.	\N	\N	\N	\N	\N
t	2020-02-05 03:24:09.699214	2020-02-06 02:19:14.703871	18	TECNICA Y ENTRENAMIENTO	PROCESO DE SOPORTE TECNICO Y CAPACITACIONES	9	Dar soporte técnico y capacitación a la fuerza comercial, aliados estratégicos y clientes del manejo adecuado de nuestros productos, con el fin de optimizar y obtener resultados esperados de su utilización y uso seguro de nuestras herramientas.	Ser reconocidos por contribuir en la generación de confianza con clientes y consumidores y mantenimiento de relaciones y soporte con los aliados estratégicos de la empresa.	\N	\N	\N	\N	\N
t	2020-02-05 03:03:34.633089	2020-02-05 03:36:47.757708	15	COMERCIAL	PROCESOS COMERCIALES Y LOGISTICOS	9	Asegurar ejecución eficiente de procesos de cadena de suministro, a fin de optimizar recursos en la compra, almacenamiento, venta y despacho de la mercadería.	Para el 2022 ser reconocido por preparar los procesos de valor necesarios que permitan un crecimiento sostenido y sustentable de la empresa que permitan desarrollar un plan de expansión agresivo en el mercado de herramientas de la construcción.	\N	\N	\N	\N	\N
t	2020-02-05 03:11:20.951393	2020-02-06 22:39:01.473086	17	DIRECCION CORPORATIVA	PROCESOS ESTRATEGICOS, INVERSION Y ADMINISTRATIVOS	9	Tomar decisiones de manera oportuna y efectiva para el normal desarrollo de la empresa, manteniendo un enfoque en los resultados esperados y planteados en la Planeación Estratégica desarrollada para el 2020-2022 y de oportunidades futuras, así como brindar un clima laboral productivo y creador de sentido de propiedad en los colaboradores.	Ser reconocido por construir una base corporativa sólida, viviendo los valores declarados y una cultura de trabajo en equipo enfocados en despegue de la empresa novel en el mercado.	\N	\N	\N	\N	\N
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment (is_active, created, created_at, updated, updated_at, id, name, description, "referenceTypeId", "referenceOrigenId", short_code, long_code, "order", "referenceId") FROM stdin;
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (is_active, created_at, updated_at, id, name, description, ide, name_legal_representative, ide_legal_representative, address, phone, email, url_logo, "sectorId", created, updated, type, "economicActivityEntityId", short_code, long_code, "order", "subscriptionId") FROM stdin;
t	2020-02-04 19:34:27.297449	2020-02-04 19:34:27.297449	25	LOAN S.A.	COMERCIAL LOAN S.A.	0917964751001							11	\N	\N		6	\N	\N	\N	1
t	2020-02-07 22:47:24.712217	2020-02-07 22:47:24.712217	26	EMPRESA MODELO #1	Empresa para pruebas funcionales de SIGPMS	0917964751002							6	\N	\N		6	\N	\N	\N	1
\.


--
-- Data for Name: company_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company_values (is_active, created_at, updated_at, id, name, description, "stageId", created, updated, short_code, long_code, "order") FROM stdin;
t	2020-02-05 02:38:52.549339	2020-02-05 02:38:52.549339	21	Transparencia		9	\N	\N	\N	\N	\N
t	2020-02-05 02:38:52.572998	2020-02-05 02:38:52.572998	22	Seguridad		9	\N	\N	\N	\N	\N
t	2020-02-05 02:38:52.594083	2020-02-05 02:38:52.594083	23	Trabajo en Equipo		9	\N	\N	\N	\N	\N
t	2020-02-05 02:38:52.624203	2020-02-05 02:38:52.624203	24	Generosos al compartir conocimiento		9	\N	\N	\N	\N	\N
t	2020-02-07 23:24:10.969894	2020-02-07 23:24:10.969894	25	SEGURIDAD		10	\N	\N	\N	\N	\N
t	2020-02-07 23:24:10.990881	2020-02-07 23:24:10.990881	26	RESPETUOSOS CON EL MEDIO AMBIENTE		10	\N	\N	\N	\N	\N
t	2020-02-07 23:24:10.997848	2020-02-07 23:24:10.997848	27	PASION POR NUESTROS PRODUCTOS		10	\N	\N	\N	\N	\N
\.


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (is_active, created_at, updated_at, id, name, description, "stageId", mission, view, created, updated, short_code, long_code, "order") FROM stdin;
t	2020-02-05 03:47:14.431508	2020-02-06 03:14:21.128578	21	VENTA A DISTRIBUIDORES DE ACABADOS	Gestión comercial a tiendas de acabados de la construcción	9	Establecer programa y protocolo comercial que permita el cumplimiento de los presupuestos de ventas asignados, atendiento de manera agil los requerimientos de nuestos cliente Distribuidores.	Ser reconodicos por nuestro nivel de efectividad comercial.	\N	\N	\N	\N	\N
t	2020-02-05 03:49:26.44078	2020-02-06 03:16:32.780291	22	VENTAS EN TIENDA	Gestión comercial a consumidores finales Profesionales y Maestros	9	Establecer programa y protocolo comercial que permita el cumplimiento de los presupuestos de ventas asignados, atendiento de manera agil los requerimientos de nuestos clientes finales.	Ser reconodicos por nuestro nivel de efectividad comercial.	\N	\N	\N	\N	\N
t	2020-02-05 03:58:21.758696	2020-02-06 02:33:39.699529	24	CREDITO Y COBRANZAS	Gestión de recuperación de Cartera y concesión de creditos	9	Reducir el riesgo de las líneas de credito concedidas, optimizando el proceso de cobranza	Ser reconocidos por contribuir de manera efectiva al ciclo de efectivo de la Cia.	\N	\N	\N	\N	\N
t	2020-02-05 22:46:15.800637	2020-02-06 02:40:16.718309	26	BODEGA MATRIZ	Control de recepción, almacenamiento, despacho de mercaderias	9	Asegurar un manejo de inventario efectivo, optimizando los recursos de la Cia.	Ser reconocidos por mantener desviación de inventario marginal y servicio al cliente de excelencia	\N	\N	\N	\N	\N
t	2020-02-05 22:33:14.27677	2020-02-06 02:48:13.147325	25	ADMINISTRATIVO	Gestión administrativa y estratégica	9	Planificar y ejecutar procesos de soporte a las áreas operativas para cumplimiento de metas estrategicas	Ser reconocidos por lograr ejecución eficiente de la planificación corporativa	\N	\N	\N	\N	\N
t	2020-02-05 22:49:35.281338	2020-02-06 02:51:23.181649	27	SISTEMAS INFORMATICOS	Administración de infraestructura tecnológica y sistemas informáticos	9	Facilitar herramientas tecnológicas que faciliten tareas estrategicas y operativas de la Cia.	Ser reconocidos por permanente innovacion de procesos de apoyo a todas las áreas de la Cia.	\N	\N	\N	\N	\N
t	2020-02-05 22:54:04.551128	2020-02-06 02:55:47.898377	28	OFICINA TECNICA Y CAPACITACION	Procesos de capacitación y actividades de promoción de productos	9	Promover dentro del mercado la utilización profesional de nuestra herramientas	Ser reconocidos por aportar de manera significativa el modelo de negocio de la Cia.	\N	\N	\N	\N	\N
t	2020-02-05 03:50:58.559278	2020-02-06 03:00:29.736559	23	CONTABILIDAD	Gestión contable/tirbutaría y tesorería	9	Mantener el registro contable y financiero, confiable y al dia, de las operaciones de la Cia.	Ser reconocidos por aportar con información precisa para la toma de decisiones Gerenciales	\N	\N	\N	\N	\N
t	2020-02-05 03:45:07.503185	2020-02-06 03:09:26.54259	20	VENTAS MAYORISTAS	Atención a clientes mayoristas	9	Establecer programa y protocolo comercial que permita el cumplimiento de los presupuestos de ventas asignados, atendiento de manera agil los requerimientos de nuestos cliente mayoristas.	Ser reconodicos por nuestro nivel de efectividad comercial.	\N	\N	\N	\N	\N
\.


--
-- Data for Name: economic_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.economic_activity (is_active, created, created_at, updated, updated_at, id, name, description, short_code, long_code, "order") FROM stdin;
t	\N	2019-11-20 22:45:29.706497	\N	2019-11-20 22:45:29.706497	1	Agricultura, Ganadería, Silvicultura Y Pesca.		\N	\N	\N
t	\N	2019-11-20 22:45:55.830819	\N	2019-11-20 22:45:55.830819	2	Explotación De Minas Y Canteras.		\N	\N	\N
t	\N	2019-11-20 22:46:18.461676	\N	2019-11-20 22:46:18.461676	3	Industrias Manufactureras.		\N	\N	\N
t	\N	2019-11-20 22:46:29.774042	\N	2019-11-20 22:46:29.774042	4	Suministro De Electricidad, Gas, Vapor Y Aire Acondicionado.		\N	\N	\N
t	\N	2019-11-20 22:46:39.99342	\N	2019-11-20 22:46:39.99342	5	Distribución De Agua; Alcantarillado, Gestión De Desechos Y Actividades De Saneamiento.		\N	\N	\N
t	\N	2019-11-20 22:46:51.169971	\N	2019-11-20 22:46:51.169971	6	Construcción.		\N	\N	\N
t	\N	2019-11-20 22:47:11.881135	\N	2019-11-20 22:47:11.881135	7	Comercio Al Por Mayor Y Al Por Menor; Reparación De Vehículos Automotores Y Motocicletas.		\N	\N	\N
t	\N	2019-11-20 22:47:23.59244	\N	2019-11-20 22:47:23.59244	8	Transporte Y Almacenamiento.		\N	\N	\N
t	\N	2019-11-20 22:47:32.400453	\N	2019-11-20 22:47:32.400453	9	Actividades De Alojamiento Y De Servicio De Comidas.		\N	\N	\N
t	\N	2019-11-20 22:47:40.354772	\N	2019-11-20 22:47:40.354772	10	Información Y Comunicación.		\N	\N	\N
t	\N	2019-11-20 22:47:52.055143	\N	2019-11-20 22:47:52.055143	11	Actividades Financieras Y De Seguros.		\N	\N	\N
t	\N	2019-11-20 22:48:01.520751	\N	2019-11-20 22:48:01.520751	12	Actividades Inmobiliarias.		\N	\N	\N
t	\N	2019-11-20 22:48:12.981834	\N	2019-11-20 22:48:12.981834	13	Actividades Profesionales, Científicas Y Técnicas.		\N	\N	\N
t	\N	2019-11-20 22:48:22.961066	\N	2019-11-20 22:48:22.961066	14	Actividades De Servicios Administrativos Y De Apoyo.		\N	\N	\N
t	\N	2019-11-20 22:48:32.909826	\N	2019-11-20 22:48:32.909826	15	Administración Pública Y Defensa; Planes De Seguridad Social De Afiliación Obligatoria.		\N	\N	\N
t	\N	2019-11-20 22:48:41.138457	\N	2019-11-20 22:48:41.138457	16	Enseñanza.		\N	\N	\N
t	\N	2019-11-20 22:48:48.362134	\N	2019-11-20 22:48:48.362134	17	Actividades De Atención De La Salud Humana Y De Asistencia Social.		\N	\N	\N
t	\N	2019-11-20 22:48:57.474502	\N	2019-11-20 22:48:57.474502	18	Artes, Entretenimiento Y Recreación.		\N	\N	\N
t	\N	2019-11-20 22:49:09.887611	\N	2019-11-20 22:49:09.887611	19	Otras Actividades De Servicios.		\N	\N	\N
t	\N	2019-11-20 22:49:24.336588	\N	2019-11-20 22:49:24.336588	20	Actividades De Los Hogares Como Empleadores; Actividades No Diferenciadas De Los Hogares Como Productores De Bienes Y Servicios Para Uso Propio.		\N	\N	\N
t	\N	2019-11-20 22:49:33.438222	\N	2019-11-20 22:49:33.438222	21	Actividades De Organizaciones Y Órganos Extraterritoriales.		\N	\N	\N
t	\N	2019-11-20 22:49:42.772611	\N	2019-11-20 22:49:42.772611	22	Bajo Relación De Dependencia Sector Privado.		\N	\N	\N
t	\N	2019-11-20 22:49:51.625711	\N	2019-11-20 22:49:51.625711	23	Bajo Relación De Dependencia Sector Público.		\N	\N	\N
t	\N	2019-11-20 22:50:03.589473	\N	2019-11-20 22:50:03.589473	24	Sin Actividad Economica - CIIU.		\N	\N	\N
t	\N	2019-11-25 15:25:22.392344	\N	2019-11-25 15:25:22.392344	25	Sector 4	Sector 4 Description	\N	\N	\N
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (firstname, lastname, phone, is_active, created_at, updated_at, "positionId", fullname, ide, "departmentId", created, updated, id, "userId", "areaId", "stageId", "bossId") FROM stdin;
Juan	Lozano	0994852334	t	2020-02-07 15:42:37.003137	2020-02-07 15:42:37.003137	30	Juan Lozano	0917964701	25	\N	\N	26	2	17	9	\N
Carlos	Barrera	0994852334	t	2020-02-07 15:44:38.128505	2020-02-07 15:44:38.128505	31	Carlos Barrera	0917964702	20	\N	\N	27	2	15	9	26
Romulo	Astudillo	0994852334	t	2020-02-07 15:46:03.79737	2020-02-07 15:46:03.79737	32	Romulo Astudillo	0917964703	24	\N	\N	28	2	16	9	26
Dario	Andrade	0994852334	t	2020-02-07 15:47:05.709492	2020-02-07 15:49:52.056351	33	Dario Andrade	0917964704	28	\N	\N	29	2	18	9	26
Jorge Luis	Liu V.	0994852334	t	2020-02-07 15:51:21.308746	2020-02-07 15:51:21.308746	40	Jorge Luis Liu V.	0917964705	25	\N	\N	30	2	17	9	26
Dora	Trejo	0994852334	t	2020-02-07 15:52:26.371738	2020-02-07 15:52:26.371738	41	Dora Trejo	0917964706	23	\N	\N	31	2	16	9	28
Mayda	Holguin	0994852334	t	2020-02-07 15:53:58.2067	2020-02-07 15:53:58.2067	43	Mayda Holguin	0917964707	24	\N	\N	32	2	16	9	28
Vannesa	Cabrera	0994852334	t	2020-02-07 15:56:10.132768	2020-02-07 15:56:10.132768	42	Vannesa Cabrera	0917964708	23	\N	\N	33	2	16	9	31
Carlos	Bustamante	0994852334	t	2020-02-07 15:57:47.204519	2020-02-07 15:57:47.204519	37	Carlos Bustamante	0917964709	28	\N	\N	34	2	18	9	29
Carlos	Cherrez	0994852334	t	2020-02-07 15:59:06.606649	2020-02-07 15:59:06.606649	34	Carlos Cherrez	0917964710	20	\N	\N	35	2	15	9	27
Armando	Canarte	0994852334	t	2020-02-07 16:00:48.863772	2020-02-07 16:00:48.863772	36	Armando Canarte	0917964711	22	\N	\N	36	2	15	9	27
Jose	Velez	0994852334	t	2020-02-07 16:02:26.833195	2020-02-07 16:02:26.833195	35	Jose Velez	0917964712	21	\N	\N	37	2	15	9	27
Jessica	Almeida	0994852334	t	2020-02-07 16:03:36.844809	2020-02-07 16:03:36.844809	44	Jessica Almeida	0917964713	24	\N	\N	38	2	16	9	28
Rosa	Isaza	0994852334	t	2020-02-07 16:07:16.655032	2020-02-07 16:07:16.655032	45	Rosa Isaza	0917964714	25	\N	\N	39	2	17	9	26
Carlos	Hernandez	0994852334	t	2020-02-07 16:10:26.443437	2020-02-07 16:10:26.443437	47	Carlos Hernandez	0917964715	26	\N	\N	40	2	15	9	27
Ana	Velez	0994852334	t	2020-02-07 16:11:53.594976	2020-02-07 16:11:53.594976	46	Ana Velez	0917964716	26	\N	\N	41	2	15	9	40
Julian	Loor	0994852334	t	2020-02-07 16:13:04.512318	2020-02-07 16:13:04.512318	48	Julian Loor	0917964717	26	\N	\N	42	2	15	9	40
Ivan	Espinoza	0994852334	t	2020-02-07 16:14:29.558828	2020-02-07 16:14:29.558828	39	Ivan Espinoza	0917964718	27	\N	\N	43	2	17	9	26
Jose	Malo	0994852334	t	2020-02-07 16:17:18.512052	2020-02-07 16:17:18.512052	38	Jose Malo	0917964719	28	\N	\N	44	2	18	9	29
Mariuxi	Velasquez	0994852334	t	2020-02-07 16:20:26.565257	2020-02-07 16:20:26.565257	49	Mariuxi Velasquez	0917964720	25	\N	\N	45	2	17	9	26
\.


--
-- Data for Name: file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.file (is_active, created_at, updated_at, id, name, description, sequence, size, reference, type, filename, fieldname, encoding, mimetype, path, destination, created, updated, short_code, long_code, "order") FROM stdin;
t	2019-10-02 01:17:06.705397	2019-10-02 01:18:31.943193	1	PE01_Diseño_Conceptual_Logico V1_0.pdf	SOPORTE DE DEFINICIONES ESTRATEGICAS DE ESCENARIO 2020-2024	0	718689	1	\N	88b6c868de3be9a4e4b3789984cc74ef	file	7bit	application/pdf	uploads/88b6c868de3be9a4e4b3789984cc74ef	./uploads	\N	\N	\N	\N	\N
t	2019-10-02 01:35:52.777218	2019-10-02 01:36:42.270524	2	PLAN ESTRATEGICO GIG HIDROSA 2015-2020 Ver. 1-Dic-14.pptx	DOC PLAN ESTRATEGICO APROBADO	0	1431303	1	\N	8f487de92fd3da764c927222425108f4	file	7bit	application/vnd.openxmlformats-officedocument.presentationml.presentation	uploads/8f487de92fd3da764c927222425108f4	./uploads	\N	\N	\N	\N	\N
t	2019-10-03 00:42:34.0741	2019-10-03 00:42:34.0741	3	DEFINICIONES ESTRATEGICAS.xlsx	DEFINICIONES ESTRATÉGICAS APROBADAS 	0	21770	2	ESC	79b8142ceaf15a73fe6cfaceea2a7412	file	7bit	application/vnd.openxmlformats-officedocument.spreadsheetml.sheet	uploads/79b8142ceaf15a73fe6cfaceea2a7412	./uploads	\N	\N	\N	\N	\N
t	2019-10-03 00:47:47.061329	2019-10-03 00:47:47.061329	4	Diagrama de Relaciones PMS.pdf	DOCUMENTACION PMS EN ECOAMBIENT	0	152095	2	ESC	d336f114635394fb7f69713abf59eb04	file	7bit	application/pdf	uploads/d336f114635394fb7f69713abf59eb04	./uploads	\N	\N	\N	\N	\N
t	2019-10-03 00:50:23.775256	2019-10-03 00:50:23.775256	5	MAPA ESTRATÉGICO.xlsx	MAPA ESTRATEGICO ECOAMBIENT	0	22436	2	ESC	459db96278e84817df8d616f07a0337b	file	7bit	application/vnd.openxmlformats-officedocument.spreadsheetml.sheet	uploads/459db96278e84817df8d616f07a0337b	./uploads	\N	\N	\N	\N	\N
t	2019-10-27 18:23:49.121823	2019-10-27 18:23:49.121823	6	CONTRATO FINAL ARCO - ECOTICS 08 DE JULIO 2019.pdf	CONTRATO DE CONSULTORIA PMS	0	339649	1	COM	4e592e6b85267f2dc6a97e7f45f5b4c1	file	7bit	application/pdf	uploads/4e592e6b85267f2dc6a97e7f45f5b4c1	./uploads	\N	\N	\N	\N	\N
t	2019-10-28 16:24:40.945485	2019-10-28 16:24:40.945485	7	CONTRATO FINAL ARCO - ECOTICS 22 DE JULIO 2019.pdf	CONTRATO DE SERVICIO DE ARCO ESTRATEGIAS - DESARROLLO DE SOFTWARE PMS 	0	336019	7	COM	ff9a3e6e4876f4e7e5aa836acb866e3b	file	7bit	application/pdf	uploads/ff9a3e6e4876f4e7e5aa836acb866e3b	./uploads	\N	\N	\N	\N	\N
t	2019-10-28 16:24:42.749843	2019-10-28 16:24:42.749843	8	OBSERVACIONES REVISION Y PRUEBA DE SISTEMA -.docx	CONTRATO DE SERVICIO DE ARCO-ECOTICS	0	13018	7	COM	ec556b924b474f4407936a455c220bc2	file	7bit	application/vnd.openxmlformats-officedocument.wordprocessingml.document	uploads/ec556b924b474f4407936a455c220bc2	./uploads	\N	\N	\N	\N	\N
t	2019-10-28 16:37:25.347519	2019-10-28 16:37:25.347519	9	LOGO ARCO.JPG	LOGO PEPITO 	0	4803	7	COM	f0a0bdfaa9557f3c9f404fe495d91e50	file	7bit	image/jpeg	uploads/f0a0bdfaa9557f3c9f404fe495d91e50	./uploads	\N	\N	\N	\N	\N
t	2019-10-28 16:51:33.693455	2019-10-28 16:51:33.693455	10	DEFINICIONES ESTRATEGICAS.xlsx	PLAN ESTRATEGICO APROBADO POR GERENCIA GENERAL 	0	21770	4	ESC	bb45a66824875f245e1423c15d65822e	file	7bit	application/vnd.openxmlformats-officedocument.spreadsheetml.sheet	uploads/bb45a66824875f245e1423c15d65822e	./uploads	\N	\N	\N	\N	\N
t	2019-10-28 19:39:16.299587	2019-10-28 19:39:16.299587	11	Application_Transfer_Agreement_Transferor_V4.pdf	prueba marcos	0	58486	1	COM	4347a46b7651186dbb841f0441a2a12f	file	7bit	application/pdf	uploads/4347a46b7651186dbb841f0441a2a12f	./uploads	\N	\N	\N	\N	\N
t	2019-11-18 22:59:23.02827	2019-11-18 22:59:23.02827	12	documentoElectronico-109012019RDEV422130-11112019.pdf	Contenido de prueba	0	524821	1	ARE	c9f139ca3cf771c1c1304003f456aa55	file	7bit	application/pdf	uploads/c9f139ca3cf771c1c1304003f456aa55	./uploads	\N	\N	\N	\N	\N
t	2019-11-19 17:24:12.628019	2019-11-19 17:24:12.628019	13	ORGANIGRAMA.vsd	ESTRUCTURA COMERCIAL CORPORATIVA	0	315904	3	ARE	28393f2cd844a4ef4fd738341640e195	file	7bit	application/vnd.visio	uploads/28393f2cd844a4ef4fd738341640e195	./uploads	\N	\N	\N	\N	\N
t	2019-11-19 17:32:10.698308	2019-11-19 17:32:10.698308	14	Diagrama de Relaciones PMS.pdf	SOLICITUD DE DISTRIBUCION	0	152095	1	DEP	8fab4ca67087bf12505972c12c9ee54d	file	7bit	application/pdf	uploads/8fab4ca67087bf12505972c12c9ee54d	./uploads	\N	\N	\N	\N	\N
t	2019-11-20 21:02:46.89775	2019-11-20 21:02:46.89775	15	QUE ES SGD.xlsx	autorización	0	11214	2	ARE	d06bc4dba39116ee654747aded49527a	file	7bit	application/vnd.openxmlformats-officedocument.spreadsheetml.sheet	uploads/d06bc4dba39116ee654747aded49527a	./uploads	\N	\N	\N	\N	\N
t	2019-12-04 22:41:30.697143	2019-12-04 22:41:30.697143	16	70693383_105246950878429_2291354675775012864_n.jpg	LOGO	0	20264	8	COM	2d6f702e37887a35be7616c85497198b	file	7bit	image/jpeg	uploads/2d6f702e37887a35be7616c85497198b	./uploads	\N	\N	\N	\N	\N
t	2019-12-04 22:43:28.525597	2019-12-04 22:43:28.525597	17	LOGO LOAN.jpg	LOGO LOAN	0	20264	8	COM	17341e0b00cff93f9ea093169fb28401	file	7bit	image/jpeg	uploads/17341e0b00cff93f9ea093169fb28401	./uploads	\N	\N	\N	\N	\N
t	2019-12-10 17:20:01.30346	2019-12-10 17:20:01.30346	18	maxresdefault.jpg	LOGO	0	119602	9	COM	137183c3adb7449eafc91bf14948a7ac	file	7bit	image/jpeg	uploads/137183c3adb7449eafc91bf14948a7ac	./uploads	\N	\N	\N	\N	\N
t	2020-02-04 19:38:49.888271	2020-02-04 19:38:49.888271	19	COMERCIAL LOAN.jpg	LOGO DE LA CIA. LOAN S.A.	0	20264	25	COM	e9c6b552160a8987d49a0f3338965323	file	7bit	image/jpeg	uploads/e9c6b552160a8987d49a0f3338965323	./uploads	\N	\N	\N	\N	\N
t	2020-02-04 19:42:32.660485	2020-02-04 19:42:32.660485	20	ARCO ESTRATEGIAS licencia SIGPMS.docx	LICENCIA USO SIGPMS	0	12009	25	COM	9edd79bfc487d64fc02b50218b0f34ac	file	7bit	application/vnd.openxmlformats-officedocument.wordprocessingml.document	uploads/9edd79bfc487d64fc02b50218b0f34ac	./uploads	\N	\N	\N	\N	\N
t	2020-02-09 21:59:31.60451	2020-02-09 21:59:31.60451	21	DIAGRAMA DE COMPONENTES SIGPMS.jpg	COMPONENTES PMS	0	331560	9	ESC	b92639ed7eba3f886f4abcdc1e09c16f	file	7bit	image/jpeg	uploads/b92639ed7eba3f886f4abcdc1e09c16f	./uploads	\N	\N	\N	\N	\N
t	2020-02-09 22:02:05.512501	2020-02-09 22:02:05.512501	22	ORGANIGRAMA ACTUALIZADO.docx	ORGANIGRAMA LOAN	0	11908	9	ESC	42ea38000170ef2bd9619a80b656e9a1	file	7bit	application/vnd.openxmlformats-officedocument.wordprocessingml.document	uploads/42ea38000170ef2bd9619a80b656e9a1	./uploads	\N	\N	\N	\N	\N
t	2020-02-09 22:03:08.580669	2020-02-09 22:03:08.580669	23	MANUAL PMS.docx	MANUAL PMS	0	11890	9	ESC	612e255d89fd654598ce1b8bd65c02ca	file	7bit	application/vnd.openxmlformats-officedocument.wordprocessingml.document	uploads/612e255d89fd654598ce1b8bd65c02ca	./uploads	\N	\N	\N	\N	\N
t	2020-02-09 22:06:06.155736	2020-02-09 22:06:06.155736	24	PLAN ESTRATEGICO MIDAS 2020.docx	PLAN ESTRATEGICO MIDAS 2020-2022 APROBADO	0	11983	9	ESC	6eccf39876f4f6a0e6ca84bbfeea1aae	file	7bit	application/vnd.openxmlformats-officedocument.wordprocessingml.document	uploads/6eccf39876f4f6a0e6ca84bbfeea1aae	./uploads	\N	\N	\N	\N	\N
\.


--
-- Data for Name: goal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.goal (is_active, created_at, updated_at, id, name, description, "stageId", created, updated, short_code, long_code, "order") FROM stdin;
t	2020-02-05 02:54:34.302206	2020-02-05 02:54:34.302206	33	Lograr EVA de 1 o mayor en cada periodo contable		9	\N	\N	\N	\N	\N
t	2020-02-05 02:54:34.430014	2020-02-05 02:54:34.430014	34	Facturar 3 millones de dólares anuales hasta el 2022		9	\N	\N	\N	\N	\N
t	2020-02-05 02:54:34.450754	2020-02-05 02:54:34.450754	35	Mantener un ciclo de efectivo positivo		9	\N	\N	\N	\N	\N
t	2020-02-05 02:54:34.452976	2020-02-05 02:54:34.452976	36	Establecer 3 clientes mayoristas en el país		9	\N	\N	\N	\N	\N
t	2020-02-05 02:54:34.469836	2020-02-05 02:54:34.469836	37	Aperturar oficinas tecnicas en 6 ciudades estrategicas en el país		9	\N	\N	\N	\N	\N
t	2020-02-05 02:54:34.473363	2020-02-05 02:54:34.473363	38	Establecer convenio comercial con el 50% de Colegios Profesionales de Ia construcción		9	\N	\N	\N	\N	\N
t	2020-02-05 02:54:34.482955	2020-02-05 02:54:34.482955	39	Lograr certificación de programa de capacitación de uso de Herramientas para la constucción		9	\N	\N	\N	\N	\N
f	2020-02-05 02:38:52.639504	2020-02-05 02:59:12.601114	32	m1		9	\N	\N	\N	\N	\N
t	2020-02-07 23:24:11.002409	2020-02-07 23:24:11.002409	40	Promover construcción de 3 proyectos inmobiliarios		10	\N	\N	\N	\N	\N
t	2020-02-07 23:24:11.531573	2020-02-07 23:24:11.531573	41	Lograr un 100% de aceptación de nuestro sistema constuctivo		10	\N	\N	\N	\N	\N
\.


--
-- Data for Name: idea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.idea (id, idea, description, created, updated) FROM stdin;
\.


--
-- Data for Name: indicator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.indicator (is_active, created_at, updated_at, id, name, description, formula, "indicatorTendenceId", "indicatorMeasurementId", "indicatorTypeId", "indicatorScheduleId", created, updated, origen, short_code, long_code, "order", "companyId") FROM stdin;
t	2020-02-06 19:24:02.481306	2020-02-06 19:24:53.741311	20	Ciclo de Efectivo	Medir numero de dias de recuperación de capital de trabajo invertido en marcaderias	ESTADO DE FLUJO DE EFECTIVO	1	2	1	4	\N	\N	INFORMACION DE ESTADOS FINANCIEROS AUDITADOS	\N	\N	\N	\N
t	2019-12-09 14:38:54.785176	2020-02-06 17:19:26.906786	1	Presupuesto de Venta	Mide cumplimiento de ventas a partir de un presupuesto preestablecido	VENTA REAL / PRESUPUESTO	2	1	2	3	\N	\N	BASE DE DATOS DE SISTEMA COMERCIAL	\N	\N	\N	\N
t	2019-12-09 14:53:45.885176	2020-02-06 17:21:36.350309	2	EVA	MIde el Valor Económico Anadido de un periodo tributario	EVA = UODI - (capital x costo de capital)	2	3	2	6	\N	\N	ESTADOS FINANCIEROS AUDITADOS	\N	\N	\N	\N
t	2020-02-06 17:26:21.418173	2020-02-06 17:26:21.418173	11	# Oficinas Técnicas	Medir el avance de apertura de centros de atención en mercados estratégicos	# Oficinas Operativas	2	2	1	5	\N	\N	Informe Auditado de apertura de nuevas oficinas	\N	\N	\N	\N
t	2019-12-10 15:26:27.006183	2020-02-06 17:28:16.936294	5	Presupuesto de Gastos	Medir ejecución y optimizacion de plan de gastos mensual	AHORRO PPTO/PPTO GASTO APROBADO	1	1	2	3	\N	\N	BASE DE DATOS DE SISTEMA ADMINISTRATIVO	\N	\N	\N	\N
t	2019-12-10 15:32:00.574745	2020-02-06 17:29:46.176244	6	Clima Laboral	Medicion de nivel de clima laboral y colaborativo	RESULTADO EVALUACION ICL	2	2	2	5	\N	\N	EVALUACIÓN CORPORATIVA EMPRESA ESPECIALIZADA	\N	\N	\N	\N
t	2019-12-10 15:24:07.795946	2020-02-06 17:30:58.693559	4	Rotación de Inventario	Medir nivel de rotación de inventario y efectividad de compras y ventas	VENTAS / PROM. INVENTARIO	2	1	2	4	\N	\N	INFORME AUDITADO DE INVENTARIOS	\N	\N	\N	\N
t	2019-12-10 16:27:03.545909	2020-02-06 17:34:10.569819	7	PMS	Mide nivel de implementación de Sistema de Gestión	NUMERO DE CARGOS CON DEFINICIONES COMPLETAS Y KPI MEDIDOS	2	2	1	3	\N	\N	INFORME CONSULTORA ARCO	\N	\N	\N	\N
t	2019-12-20 14:51:06.962649	2020-02-06 17:36:06.161598	10	Margen Bruto	Medir margen bruto sobre ventas en cada nivel comercial	1-(COSTO/VENTAS)	2	1	2	3	\N	\N	BD DE SISTEMA DE FACTURACION	\N	\N	\N	\N
t	2019-12-19 02:38:49.742747	2020-02-06 17:37:33.494293	8	Cartera Vencida	Medir nivel de cartera vencida en cada canal comercial	CARTERA VENCIDA / CARTERA TOTAL	1	1	1	3	\N	\N	BD SISTEMA INFORMATICO MODULO DE CXC	\N	\N	\N	\N
t	2019-12-20 13:49:48.741198	2020-02-06 17:41:52.735301	9	Efectividad de Capacitación 	Mide nivel de impacto de capacitaciones de productos en canales comerciales	Calificación de Capacitaciones * % Cumpl. Ppto Ventas	2	3	2	3	\N	\N	Promedio de Nota de Ficha de evaluación de charlas * % Cumpl. Ppto Ventas	\N	\N	\N	\N
t	2020-02-06 19:13:53.101674	2020-02-06 19:25:53.325316	17	Tiempo de Atención Meayu	Medir tiempo promedio de atención de servicios de soporte	TIEMPO PROMEDIO DE ATENCION DE ORDENES DE SOPORTE	1	2	1	3	\N	\N	BD SISTEMA DE MESA DE AYUDA	\N	\N	\N	\N
t	2019-12-10 15:19:54.421998	2020-02-06 17:45:41.553424	3	Satisfacción Clientes	Mide nivel de satisfación de clientes ponderando atención recibida, charlas, utilidad de herramienta según sea el caso	Promedio(% Satis. Atencion + % Satisf. Charlas + % Satis. Producto)	2	3	2	4	\N	\N	ENCUESTAS DE EVALUACIONES A CLIENTES	\N	\N	\N	\N
t	2020-02-06 18:43:03.984501	2020-02-06 18:43:03.984501	12	Entregables Efectivos	Medir cumplimiento de hitos y actividades de proyectos en proceso	ENTREGAS DE HITOS / HITOS PLANIFICADOS	2	2	1	3	\N	\N	PLAN DE ACTIVIDADES DE PROYECTOS APROBADOS Y EN EJECUCION	\N	\N	\N	\N
t	2020-02-06 18:46:19.554083	2020-02-06 18:46:19.554083	13	Despachos Efectivos	Medir ejecución de proceso de despacho, dentro de tiempo y sin errores	DESPACHOS EFECTIVOS / TOTAL DESPACHOS ASIGNADOS	2	3	1	3	\N	\N	BD SISTEMA DE FACTURACION Y DESPACHO	\N	\N	\N	\N
t	2020-02-06 19:09:47.054186	2020-02-06 19:26:45.029694	15	Leadtime Orden	Medir tiempos de espera de ordenes de compra e importaciones de inventarios	TOTAL COSTO ORDENES  A TIEMPO / TOTAL COSTO DE ORDENES PROCESADAS	2	2	1	3	\N	\N	BD SISTEMA INFORMATICO MODULO DE COMPRAS	\N	\N	\N	\N
t	2020-02-06 19:17:12.222129	2020-02-07 16:35:35.435022	18	Dias Crédito	Medir rotación de cartera	(CARTERA PROMEDIO * 365 ) / VENTAS	1	2	2	3	\N	\N	BD SISTEMA DE CxC	\N	\N	\N	25
t	2020-02-06 19:19:33.067921	2020-02-07 16:36:29.309985	19	Concil. Bancaria	Medir procesamiento de transacciones bancarias en Sistema de Información	# TRANSACCIONES CONCILIADAS FUERA DE RANGO	1	2	1	3	\N	\N	AUDITORIA DE CONCILIACION BANCARIA	\N	\N	\N	25
t	2020-02-06 19:12:02.317502	2020-02-07 16:37:49.278666	16	Horas offline Sistemas	Mide el tiempo de no disponibilidad de servicios criticos de tecnologia	# de horas de servicios no disponibles	1	2	1	3	\N	\N	AUDITORIA DE SISTEMAS	\N	\N	\N	25
t	2020-02-06 18:49:34.38549	2020-02-07 16:38:32.72441	14	Efect. Inf. Contable	Medir entrega y calidad de información contable	PONDERACION (DIA DE ENTREGA INFORMES+AJUSTES CONTABLES )	2	2	1	3	\N	\N	INFORME AUDITOR DE ESTADOS FINANCIEROS	\N	\N	\N	25
t	2020-02-07 16:41:16.640214	2020-02-07 16:41:16.640214	21	# Cltes. Mayoristas	Mide la implementación de clientes mayorista con full service	# Clientes Mayorista con 100% Check LIst servicio	2	2	1	6	\N	\N	INFORME DE AUDITORIA COMERCIAL	\N	\N	\N	25
\.


--
-- Data for Name: indicator_measurement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.indicator_measurement (is_active, created, created_at, updated, updated_at, id, name, description, short_code, long_code, "order") FROM stdin;
t	\N	2019-11-20 22:29:31.197346	\N	2019-11-20 22:32:10.657107	1	Dólares		$	USD	\N
t	\N	2019-11-20 22:29:47.33148	\N	2019-11-20 22:32:55.175149	2	Unidad		U	UNI	\N
t	\N	2019-11-20 22:30:10.11955	\N	2019-11-20 22:33:11.028877	3	Porcentaje		%	POR	\N
\.


--
-- Data for Name: indicator_schedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.indicator_schedule (is_active, created, created_at, updated, updated_at, id, name, description, short_code, "order", long_code) FROM stdin;
t	\N	2019-12-08 14:02:19.949112	\N	2019-12-08 14:02:19.949112	1	Diario		D	1	\N
t	\N	2019-12-08 14:04:06.988568	\N	2019-12-08 14:04:06.988568	2	Semanal		S	2	\N
t	\N	2019-12-08 14:04:17.26123	\N	2019-12-08 14:04:17.26123	3	Mensual		M	3	\N
t	\N	2019-12-08 14:05:00.966933	\N	2019-12-08 14:05:00.966933	4	Trimestral		T	4	\N
t	\N	2019-12-08 14:05:13.286899	\N	2019-12-08 14:05:13.286899	5	Semestral		SM	5	\N
t	\N	2019-12-08 14:05:23.91223	\N	2019-12-08 14:05:23.91223	6	Anual		A	6	\N
\.


--
-- Data for Name: indicator_tendence; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.indicator_tendence (is_active, created, created_at, updated, updated_at, id, name, description, short_code, long_code, "order") FROM stdin;
t	\N	2019-11-20 22:24:35.893251	\N	2019-11-20 22:24:35.893251	1	Reducción/Eliminación		\N	\N	\N
t	\N	2019-11-20 22:24:42.128966	\N	2019-11-20 22:24:42.128966	2	Incremento/Mantenimiento		\N	\N	\N
\.


--
-- Data for Name: indicator_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.indicator_type (is_active, created, created_at, updated, updated_at, id, name, description, short_code, long_code, "order") FROM stdin;
t	\N	2019-11-20 22:26:46.650764	\N	2019-11-20 22:26:46.650764	1	Gestión		\N	\N	\N
t	\N	2019-11-20 22:26:53.824045	\N	2019-11-20 22:26:53.824045	2	Resultado		\N	\N	\N
\.


--
-- Data for Name: key_factor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.key_factor (is_active, created_at, updated_at, id, name, description, "stageId", created, updated, short_code, long_code, "order") FROM stdin;
t	2020-02-05 02:46:35.078035	2020-02-05 02:46:35.078035	27	Obtener representación exclusiva de al menos 2 marcas de herramientas		9	\N	\N	\N	\N	\N
t	2020-02-05 02:46:35.408244	2020-02-05 02:46:35.408244	29	Establecer Centro y programa de capacitación en el uso de nuestras herramientas		9	\N	\N	\N	\N	\N
f	2020-02-05 02:38:52.525918	2020-02-05 02:46:35.417682	25	fc1		9	\N	\N	\N	\N	\N
f	2020-02-05 02:46:35.063397	2020-02-06 01:58:34.832646	26	Lograr apertura con Colegios Profesionales de Ingenieria Civil y Arquitectura		9	\N	\N	\N	\N	\N
t	2020-02-06 01:58:34.818851	2020-02-06 01:58:34.818851	30	Establecer relaciones con Colegios Profesionales y Gremios de Maestros de la Construcción		9	\N	\N	\N	\N	\N
f	2020-02-05 02:46:35.397325	2020-02-06 01:58:34.965565	28	Establecer y mantener excelentes relaciones con gremios de Artesanos y Maestros de la constucción		9	\N	\N	\N	\N	\N
t	2020-02-07 23:24:10.95399	2020-02-07 23:24:10.95399	31	Generar un modelo de negocio innovador para nuestros productos		10	\N	\N	\N	\N	\N
t	2020-02-07 23:24:10.973572	2020-02-07 23:24:10.973572	32	Promover construccion liviana de viviendas		10	\N	\N	\N	\N	\N
\.


--
-- Data for Name: meeting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting (is_active, created_at, updated_at, id, name, description, from_at, to_at, "time", type_origin, id_relationed, assigned, "stageId", created, updated, short_code, long_code, "order") FROM stdin;
\.


--
-- Data for Name: meeting_participant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting_participant (is_active, created_at, updated_at, id, assigned, "meetingId", created, updated) FROM stdin;
\.


--
-- Data for Name: meeting_task_pending; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting_task_pending (is_active, created_at, updated_at, id, name, description, assigned, "meetingId", created, updated, short_code, long_code, "order") FROM stdin;
\.


--
-- Data for Name: module; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.module (is_active, created_at, updated_at, id, name, description, created, updated, short_code, long_code, "order") FROM stdin;
\.


--
-- Data for Name: objective; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objective (is_active, created_at, updated_at, id, name, description, "stageId", created, updated, "employeeId", "objectivePerspectiveId", "objectiveLevelId", "objectiveReference", status, "ObjectivePerspectiveId", "ObjectiveLevelId", short_code, long_code, "order", "goalId") FROM stdin;
t	2020-02-09 03:14:31.554918	2020-02-10 09:44:52.910923	21	Reducir Cartera Vencida de la Cia. al 5% cada mes 		9	\N	\N	28	3	1	19	P	\N	\N	\N	\N	\N	\N
t	2020-02-09 03:20:02.48054	2020-02-10 10:31:28.794394	24	Implementar PMS al 100% de cargos definidos en la Cia. 		9	\N	\N	30	4	1	21	P	\N	\N	\N	\N	\N	\N
t	2020-02-07 19:48:04.064222	2020-02-10 10:34:14.660724	19	Reducir Ciclo de efectivo a 60 dias hasta el 2022		9	\N	\N	26	3	1	15	A	\N	\N	\N	\N	\N	\N
t	2020-02-07 16:45:01.709784	2020-02-10 10:43:51.930168	17	Alcanzar un Margen Bruto del 30% sobre ventas		9	\N	\N	27	1	1	13	P	\N	\N	\N	\N	\N	\N
t	2020-02-07 16:28:02.24128	2020-02-10 10:51:49.27199	14	Aperturar 2 oficinas técnicas en ciudades estratéegica el 2020		9	\N	\N	29	3	1	16	P	\N	\N	\N	\N	\N	37
t	2020-02-07 16:30:50.214221	2020-02-10 10:56:00.779026	15	Cumplir 100% de PPTO de Ventas Cia.		9	\N	\N	27	2	1	13	P	\N	\N	\N	\N	\N	34
t	2020-02-07 16:50:01.070684	2020-02-10 10:57:55.886041	18	Alcanzar un 90% de satisfacción de clientes		9	\N	\N	27	2	2	15	P	\N	\N	\N	\N	\N	\N
t	2020-02-07 19:54:22.689581	2020-02-07 19:55:02.264805	20	Cumplir 100% de presupuesto de venta del canal asignado mensualmente		9	\N	\N	36	2	2	15	A	\N	\N	\N	\N	\N	\N
t	2020-02-07 16:22:42.275345	2020-02-09 14:20:23.924523	13	Lograr EVA 1 ó Mayor en cada periodo tributario		9	\N	\N	26	1	1	\N	P	\N	\N	\N	\N	\N	33
t	2020-02-09 03:17:03.527322	2020-02-10 09:28:21.203065	22	Mantener un nivel de competencia de 80% en personal Cia.		9	\N	\N	45	4	1	14	A	\N	\N	\N	\N	\N	\N
t	2020-02-07 16:34:44.481407	2020-02-10 09:33:47.65171	16	Establecer 2 clientes mayoristas el 2020		9	\N	\N	35	3	1	15	A	\N	\N	\N	\N	\N	36
t	2020-02-09 03:18:12.272116	2020-02-10 09:42:00.05669	23	Alcanzar una rotación de inventario de 4 		9	\N	\N	40	3	1	15	P	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: objective_goal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objective_goal (is_active, created, created_at, updated, updated_at, id, "objectiveIndicatorId", month, year, status, tendence_short_code, traffic_light, goal_por, goal_value, real_por, real_value, index_compliance, score, range_exceptional_por, range_inacceptable_por, index_performance, r1_por, r2_por, r1_value, r2_value) FROM stdin;
t	\N	2020-02-09 14:19:06.870684	\N	2020-02-09 14:19:06.870684	83	25	11	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.880237	\N	2020-02-09 14:19:06.880237	84	25	12	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.316736	\N	2020-02-09 14:20:04.316736	85	14	1	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.335174	\N	2020-02-09 14:20:04.335174	86	14	2	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.349059	\N	2020-02-09 14:20:04.349059	87	14	3	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.352223	\N	2020-02-09 14:20:04.352223	88	14	4	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.368608	\N	2020-02-09 14:20:04.368608	89	14	5	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.587792	\N	2020-02-09 14:20:04.587792	90	14	6	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.597887	\N	2020-02-09 14:20:04.597887	91	14	7	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.608801	\N	2020-02-09 14:20:04.608801	92	14	8	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.619772	\N	2020-02-09 14:20:04.619772	93	14	12	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.63134	\N	2020-02-09 14:20:04.63134	94	14	11	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-07 16:55:15.110831	\N	2020-02-09 16:22:17.211903	57	15	9	2020	A	R	\N	100	150000	0	0	0	0	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-07 16:55:14.948607	\N	2020-02-09 16:22:16.372361	52	15	2	2020	A	R	\N	100	150000	0	0	0	50	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-07 16:55:14.961542	\N	2020-02-09 16:22:14.978504	54	15	6	2020	A	R	\N	100	150000	0	0	0	50	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-07 16:55:14.958518	\N	2020-02-09 16:22:15.022584	53	15	4	2020	A	R	\N	100	150000	0	0	0	50	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-07 16:55:14.642833	\N	2020-02-09 16:22:14.995295	49	15	5	2020	A	R	\N	100	150000	0	0	0	50	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-07 16:55:14.994843	\N	2020-02-09 16:22:16.381043	55	15	7	2020	A	R	\N	100	150000	0	0	0	0	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-07 16:55:15.106948	\N	2020-02-09 16:22:17.216134	58	15	10	2020	A	R	\N	100	150000	0	0	0	0	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-07 16:55:15.093781	\N	2020-02-09 16:22:17.576319	56	15	11	2020	A	R	\N	100	150000	0	0	0	0	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-07 16:55:15.163028	\N	2020-02-09 16:22:17.598033	60	15	12	2020	A	R	\N	100	150000	0	0	0	0	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-09 16:29:46.644446	\N	2020-02-09 16:29:46.644446	109	19	1	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-07 16:55:15.159107	\N	2020-02-09 16:22:17.58018	59	15	8	2020	A	R	\N	100	150000	0	0	0	0	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-09 16:29:46.666111	\N	2020-02-09 16:29:46.666111	110	19	2	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:32.258734	\N	2020-02-09 14:18:32.258734	61	18	1	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.168257	\N	2020-02-09 14:18:33.168257	62	18	2	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.190714	\N	2020-02-09 14:18:33.190714	63	18	3	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.191293	\N	2020-02-09 14:18:33.191293	64	18	4	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.207464	\N	2020-02-09 14:18:33.207464	65	18	5	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.448004	\N	2020-02-09 14:18:33.448004	66	18	6	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.452957	\N	2020-02-09 14:18:33.452957	67	18	7	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.463949	\N	2020-02-09 14:18:33.463949	68	18	12	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.474786	\N	2020-02-09 14:18:33.474786	69	18	11	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.488348	\N	2020-02-09 14:18:33.488348	70	18	10	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.500414	\N	2020-02-09 14:18:33.500414	71	18	9	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:18:33.943531	\N	2020-02-09 14:18:33.943531	72	18	8	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.620378	\N	2020-02-09 14:19:06.620378	73	25	1	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.641224	\N	2020-02-09 14:19:06.641224	74	25	2	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.64796	\N	2020-02-09 14:19:06.64796	75	25	4	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.658851	\N	2020-02-09 14:19:06.658851	76	25	3	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.705799	\N	2020-02-09 14:19:06.705799	77	25	5	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.725064	\N	2020-02-09 14:19:06.725064	78	25	6	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.78323	\N	2020-02-09 14:19:06.78323	79	25	7	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.819153	\N	2020-02-09 14:19:06.819153	80	25	8	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.824514	\N	2020-02-09 14:19:06.824514	81	25	9	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:19:06.832945	\N	2020-02-09 14:19:06.832945	82	25	10	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.640869	\N	2020-02-09 14:20:04.640869	95	14	10	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:04.853953	\N	2020-02-09 14:20:04.853953	96	14	9	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:26.759431	\N	2020-02-09 14:20:26.759431	97	13	1	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:26.774005	\N	2020-02-09 14:20:26.774005	98	13	2	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:26.789057	\N	2020-02-09 14:20:26.789057	99	13	4	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:26.789819	\N	2020-02-09 14:20:26.789819	100	13	3	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:26.800873	\N	2020-02-09 14:20:26.800873	101	13	5	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:26.81671	\N	2020-02-09 14:20:26.81671	102	13	6	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:27.397939	\N	2020-02-09 14:20:27.397939	103	13	7	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:27.407993	\N	2020-02-09 14:20:27.407993	104	13	8	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:27.41881	\N	2020-02-09 14:20:27.41881	105	13	9	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:27.430946	\N	2020-02-09 14:20:27.430946	106	13	10	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:27.442812	\N	2020-02-09 14:20:27.442812	107	13	12	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 14:20:27.453263	\N	2020-02-09 14:20:27.453263	108	13	11	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-07 16:55:14.947905	\N	2020-02-09 16:22:14.871809	51	15	1	2020	A	R	\N	100	150000	0	0	0	50	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-07 16:55:14.946241	\N	2020-02-09 16:22:15.024713	50	15	3	2020	A	R	\N	100	150000	0	0	0	50	0	0	0	100	1000	15000000	150000000
t	\N	2020-02-09 16:29:46.668294	\N	2020-02-09 16:29:46.668294	111	19	3	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:29:46.756653	\N	2020-02-09 16:29:46.756653	112	19	4	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:29:46.903109	\N	2020-02-09 16:29:46.903109	117	19	9	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:29:47.081533	\N	2020-02-09 16:29:47.081533	118	19	12	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:29:46.768731	\N	2020-02-09 16:29:46.768731	113	19	5	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:29:46.782839	\N	2020-02-09 16:29:46.782839	114	19	6	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:29:46.885946	\N	2020-02-09 16:29:46.885946	115	19	8	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:29:46.891407	\N	2020-02-09 16:29:46.891407	116	19	7	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:29:47.092243	\N	2020-02-09 16:29:47.092243	119	19	11	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:29:47.107264	\N	2020-02-09 16:29:47.107264	120	19	10	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:23.885931	\N	2020-02-09 16:30:23.885931	121	24	1	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:23.904888	\N	2020-02-09 16:30:23.904888	122	24	2	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:23.909077	\N	2020-02-09 16:30:23.909077	123	24	3	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:23.933529	\N	2020-02-09 16:30:23.933529	124	24	4	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:23.939148	\N	2020-02-09 16:30:23.939148	125	24	6	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:24.644984	\N	2020-02-09 16:30:24.644984	126	24	5	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:24.650429	\N	2020-02-09 16:30:24.650429	127	24	7	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:24.660311	\N	2020-02-09 16:30:24.660311	128	24	8	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:24.671423	\N	2020-02-09 16:30:24.671423	129	24	9	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:24.682624	\N	2020-02-09 16:30:24.682624	130	24	10	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:24.693596	\N	2020-02-09 16:30:24.693596	131	24	11	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:30:25.054311	\N	2020-02-09 16:30:25.054311	132	24	12	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:09.859795	\N	2020-02-09 16:31:09.859795	133	22	1	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:09.874456	\N	2020-02-09 16:31:09.874456	134	22	2	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:09.890827	\N	2020-02-09 16:31:09.890827	135	22	3	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:09.891569	\N	2020-02-09 16:31:09.891569	136	22	4	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:09.907135	\N	2020-02-09 16:31:09.907135	137	22	5	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:09.917103	\N	2020-02-09 16:31:09.917103	138	22	6	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:10.312013	\N	2020-02-09 16:31:10.312013	139	22	7	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:10.320832	\N	2020-02-09 16:31:10.320832	140	22	8	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:10.33144	\N	2020-02-09 16:31:10.33144	141	22	9	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:10.341354	\N	2020-02-09 16:31:10.341354	142	22	10	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:10.353066	\N	2020-02-09 16:31:10.353066	143	22	11	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
t	\N	2020-02-09 16:31:10.364904	\N	2020-02-09 16:31:10.364904	144	22	12	2020	A	R	\N	0	0	0	0	0	0	0	0	0	0	0	0	0
\.


--
-- Data for Name: objective_indicator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objective_indicator (is_active, created, created_at, updated, updated_at, id, "objectiveId", "indicatorId", score) FROM stdin;
t	\N	2020-02-07 16:22:43.447063	\N	2020-02-07 16:22:43.447063	13	13	2	0
t	\N	2020-02-07 16:28:03.825706	\N	2020-02-07 16:28:03.825706	14	14	11	0
t	\N	2020-02-07 16:30:51.157019	\N	2020-02-07 16:30:51.157019	15	15	1	0
t	\N	2020-02-07 16:41:44.945054	\N	2020-02-07 16:41:44.945054	17	16	21	0
f	\N	2020-02-07 16:34:45.093962	\N	2020-02-07 16:41:44.952672	16	16	1	0
t	\N	2020-02-07 16:45:02.828785	\N	2020-02-07 16:45:02.828785	18	17	10	0
t	\N	2020-02-07 16:50:01.559776	\N	2020-02-07 16:50:01.559776	19	18	3	0
t	\N	2020-02-07 19:48:04.750928	\N	2020-02-07 19:48:04.750928	20	19	20	0
t	\N	2020-02-07 19:54:23.852308	\N	2020-02-07 19:54:23.852308	21	20	1	0
t	\N	2020-02-09 03:14:32.209688	\N	2020-02-09 03:14:32.209688	22	21	8	0
t	\N	2020-02-09 03:17:04.064409	\N	2020-02-09 03:17:04.064409	23	22	9	0
t	\N	2020-02-09 03:18:12.71527	\N	2020-02-09 03:18:12.71527	24	23	4	0
t	\N	2020-02-09 03:20:03.225401	\N	2020-02-09 03:20:03.225401	25	24	7	0
\.


--
-- Data for Name: objective_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objective_level (is_active, created, created_at, updated, updated_at, id, name, description, short_code, long_code, "order") FROM stdin;
t	\N	2019-12-06 12:00:13.57095	\N	2019-12-06 12:00:13.57095	2	Operativo		\N	\N	\N
t	\N	2019-12-06 11:59:36.10726	\N	2019-12-06 12:03:42.938191	1	Estratégico		\N	\N	\N
\.


--
-- Data for Name: objective_participant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objective_participant (is_active, created_at, updated_at, id, "objectiveId", created, updated, "employeeId", type, "ObjectiveId") FROM stdin;
t	2020-02-07 16:23:30.833876	2020-02-07 16:23:30.833876	9	13	\N	\N	29	A	\N
t	2020-02-07 16:23:30.837262	2020-02-07 16:23:30.837262	10	13	\N	\N	27	A	\N
t	2020-02-07 16:23:30.846612	2020-02-07 16:23:30.846612	11	13	\N	\N	28	I	\N
t	2020-02-07 19:55:02.274536	2020-02-07 19:55:02.274536	40	20	\N	\N	27	A	\N
t	2020-02-07 19:55:02.27735	2020-02-07 19:55:02.27735	41	20	\N	\N	34	A	\N
t	2020-02-07 19:55:02.282553	2020-02-07 19:55:02.282553	42	20	\N	\N	32	A	\N
f	2020-02-07 16:31:57.962927	2020-02-07 19:56:07.895672	17	15	\N	\N	40	A	\N
f	2020-02-07 16:31:57.961069	2020-02-07 19:56:07.908847	16	15	\N	\N	26	A	\N
f	2020-02-07 16:31:57.963077	2020-02-07 19:56:07.90979	19	15	\N	\N	28	I	\N
f	2020-02-07 16:31:57.963484	2020-02-07 19:56:07.910743	18	15	\N	\N	29	I	\N
f	2020-02-07 19:50:10.972191	2020-02-09 03:09:33.330747	35	19	\N	\N	27	I	\N
f	2020-02-07 19:50:10.981027	2020-02-09 03:09:33.338421	37	19	\N	\N	28	I	\N
f	2020-02-07 19:50:10.980592	2020-02-09 03:09:33.355212	36	19	\N	\N	40	I	\N
f	2020-02-07 19:50:10.985143	2020-02-09 03:09:33.360841	38	19	\N	\N	31	A	\N
f	2020-02-07 19:50:10.991293	2020-02-09 03:09:33.361574	39	19	\N	\N	43	A	\N
f	2020-02-09 03:23:00.449881	2020-02-10 09:28:21.177927	56	22	\N	\N	28	A	\N
f	2020-02-09 03:23:00.46108	2020-02-10 09:28:21.180557	57	22	\N	\N	26	F	\N
f	2020-02-09 03:23:00.47062	2020-02-10 09:28:21.191558	58	22	\N	\N	29	A	\N
f	2020-02-09 03:23:00.475148	2020-02-10 09:28:21.196765	59	22	\N	\N	27	A	\N
f	2020-02-07 16:29:17.512094	2020-02-10 09:29:08.65877	12	14	\N	\N	45	A	\N
f	2020-02-07 16:29:17.512059	2020-02-10 09:29:08.666688	13	14	\N	\N	26	A	\N
f	2020-02-07 16:29:17.514066	2020-02-10 09:29:08.678965	14	14	\N	\N	27	A	\N
f	2020-02-07 16:29:17.521783	2020-02-10 09:29:08.682698	15	14	\N	\N	28	I	\N
f	2020-02-07 16:42:34.938485	2020-02-10 09:33:47.617272	20	16	\N	\N	29	A	\N
f	2020-02-07 16:42:34.947879	2020-02-10 09:33:47.625629	21	16	\N	\N	26	A	\N
f	2020-02-07 16:42:34.949473	2020-02-10 09:33:47.634304	22	16	\N	\N	27	I	\N
f	2020-02-07 16:42:34.951931	2020-02-10 09:33:47.640936	23	16	\N	\N	28	A	\N
f	2020-02-09 03:24:22.569418	2020-02-10 09:42:00.008635	60	23	\N	\N	26	A	\N
f	2020-02-09 03:24:22.57093	2020-02-10 09:42:00.024159	61	23	\N	\N	27	I	\N
f	2020-02-09 03:24:22.580073	2020-02-10 09:42:00.034604	62	23	\N	\N	28	A	\N
f	2020-02-09 03:24:22.591762	2020-02-10 09:42:00.053411	63	23	\N	\N	29	A	\N
f	2020-02-09 03:27:14.241764	2020-02-10 09:44:52.514593	64	21	\N	\N	27	A	\N
f	2020-02-09 03:27:14.349897	2020-02-10 09:44:52.525484	65	21	\N	\N	35	A	\N
f	2020-02-09 03:27:14.357013	2020-02-10 09:44:52.538676	66	21	\N	\N	35	A	\N
f	2020-02-09 03:28:12.202732	2020-02-10 09:44:52.539385	67	21	\N	\N	36	A	\N
f	2020-02-09 03:28:12.213669	2020-02-10 09:44:52.545119	68	21	\N	\N	37	A	\N
f	2020-02-09 03:28:12.227814	2020-02-10 09:44:52.917373	69	21	\N	\N	26	F	\N
f	2020-02-09 03:10:52.475173	2020-02-10 09:46:48.209289	47	19	\N	\N	28	I	\N
f	2020-02-09 03:10:52.484102	2020-02-10 09:46:48.220941	48	19	\N	\N	40	I	\N
f	2020-02-09 03:10:52.494288	2020-02-10 09:46:48.231135	49	19	\N	\N	27	I	\N
f	2020-02-09 03:10:52.504156	2020-02-10 09:46:48.24214	50	19	\N	\N	31	F	\N
f	2020-02-09 03:21:46.636824	2020-02-10 09:49:40.15436	51	24	\N	\N	26	I	\N
f	2020-02-09 03:21:46.839848	2020-02-10 09:49:40.165414	52	24	\N	\N	45	I	\N
f	2020-02-09 03:21:46.847912	2020-02-10 09:49:40.175126	53	24	\N	\N	28	A	\N
f	2020-02-09 03:21:46.866372	2020-02-10 09:49:40.184518	55	24	\N	\N	27	A	\N
f	2020-02-09 03:21:46.858122	2020-02-10 09:49:40.187673	54	24	\N	\N	29	A	\N
f	2020-02-07 16:46:47.352009	2020-02-10 09:50:54.219288	25	17	\N	\N	36	A	\N
f	2020-02-07 16:46:47.341081	2020-02-10 09:50:54.219304	24	17	\N	\N	26	F	\N
f	2020-02-07 16:46:47.358628	2020-02-10 09:50:54.227927	26	17	\N	\N	37	A	\N
f	2020-02-07 16:46:47.360195	2020-02-10 09:50:54.237188	27	17	\N	\N	29	F	\N
f	2020-02-07 16:46:47.361556	2020-02-10 09:50:54.24221	28	17	\N	\N	35	A	\N
f	2020-02-07 16:46:47.510646	2020-02-10 09:50:54.899647	29	17	\N	\N	40	I	\N
f	2020-02-07 16:51:04.485848	2020-02-10 10:19:24.263779	30	18	\N	\N	26	F	\N
f	2020-02-07 16:51:04.488982	2020-02-10 10:19:24.276576	31	18	\N	\N	40	A	\N
f	2020-02-07 16:51:04.489177	2020-02-10 10:19:24.28515	32	18	\N	\N	29	I	\N
f	2020-02-07 16:51:04.498923	2020-02-10 10:19:24.300484	34	18	\N	\N	43	A	\N
f	2020-02-07 16:51:04.493836	2020-02-10 10:19:24.308543	33	18	\N	\N	28	A	\N
t	2020-02-10 10:31:28.750471	2020-02-10 10:31:28.750471	77	24	\N	\N	26	I	\N
t	2020-02-10 10:31:28.762083	2020-02-10 10:31:28.762083	78	24	\N	\N	27	A	\N
t	2020-02-10 10:31:28.773459	2020-02-10 10:31:28.773459	79	24	\N	\N	29	A	\N
t	2020-02-10 10:31:28.773851	2020-02-10 10:31:28.773851	80	24	\N	\N	28	A	\N
t	2020-02-10 10:31:28.791828	2020-02-10 10:31:28.791828	81	24	\N	\N	45	I	\N
t	2020-02-10 10:34:14.635053	2020-02-10 10:34:14.635053	82	19	\N	\N	27	I	\N
t	2020-02-10 10:34:14.645198	2020-02-10 10:34:14.645198	83	19	\N	\N	28	A	\N
t	2020-02-10 10:34:14.650592	2020-02-10 10:34:14.650592	84	19	\N	\N	29	A	\N
f	2020-02-10 10:17:54.58165	2020-02-10 10:41:30.81031	70	17	\N	\N	28	F	\N
f	2020-02-10 10:17:54.59546	2020-02-10 10:41:30.832987	72	17	\N	\N	26	A	\N
f	2020-02-10 10:17:54.58276	2020-02-10 10:41:30.8343	71	17	\N	\N	29	A	\N
f	2020-02-10 10:17:54.614728	2020-02-10 10:41:30.841907	73	17	\N	\N	40	A	\N
f	2020-02-09 02:57:09.629912	2020-02-10 10:42:23.959629	44	15	\N	\N	28	A	\N
f	2020-02-09 02:57:09.619511	2020-02-10 10:42:23.971225	43	15	\N	\N	26	A	\N
f	2020-02-09 02:57:09.644674	2020-02-10 10:42:23.987553	45	15	\N	\N	29	I	\N
f	2020-02-09 02:57:09.810426	2020-02-10 10:42:23.993014	46	15	\N	\N	40	I	\N
f	2020-02-10 10:18:56.039787	2020-02-10 10:42:24.52436	74	15	\N	\N	35	A	\N
f	2020-02-10 10:18:56.057711	2020-02-10 10:42:24.531695	75	15	\N	\N	36	A	\N
f	2020-02-10 10:18:56.072109	2020-02-10 10:42:24.55044	76	15	\N	\N	37	A	\N
t	2020-02-10 10:43:51.894924	2020-02-10 10:43:51.894924	85	17	\N	\N	40	I	\N
t	2020-02-10 10:43:51.906672	2020-02-10 10:43:51.906672	86	17	\N	\N	31	F	\N
t	2020-02-10 10:43:51.908993	2020-02-10 10:43:51.908993	87	17	\N	\N	29	A	\N
t	2020-02-10 10:43:51.919402	2020-02-10 10:43:51.919402	88	17	\N	\N	28	A	\N
t	2020-02-10 10:43:51.930496	2020-02-10 10:43:51.930496	89	17	\N	\N	26	A	\N
t	2020-02-10 10:51:49.469271	2020-02-10 10:51:49.469271	90	14	\N	\N	26	F	\N
t	2020-02-10 10:51:49.48518	2020-02-10 10:51:49.48518	91	14	\N	\N	28	I	\N
t	2020-02-10 10:51:49.49534	2020-02-10 10:51:49.49534	92	14	\N	\N	27	A	\N
t	2020-02-10 10:51:49.499096	2020-02-10 10:51:49.499096	93	14	\N	\N	39	A	\N
t	2020-02-10 10:56:00.743345	2020-02-10 10:56:00.743345	94	15	\N	\N	26	A	\N
t	2020-02-10 10:56:00.74775	2020-02-10 10:56:00.74775	95	15	\N	\N	28	A	\N
t	2020-02-10 10:56:00.756459	2020-02-10 10:56:00.756459	96	15	\N	\N	29	A	\N
t	2020-02-10 10:56:00.767005	2020-02-10 10:56:00.767005	97	15	\N	\N	35	I	\N
t	2020-02-10 10:56:00.770133	2020-02-10 10:56:00.770133	98	15	\N	\N	40	I	\N
t	2020-02-10 10:57:55.843153	2020-02-10 10:57:55.843153	99	18	\N	\N	26	F	\N
t	2020-02-10 10:57:55.851463	2020-02-10 10:57:55.851463	100	18	\N	\N	28	A	\N
t	2020-02-10 10:57:55.860712	2020-02-10 10:57:55.860712	101	18	\N	\N	29	I	\N
t	2020-02-10 10:57:55.874282	2020-02-10 10:57:55.874282	102	18	\N	\N	43	A	\N
t	2020-02-10 10:57:55.876109	2020-02-10 10:57:55.876109	103	18	\N	\N	40	I	\N
\.


--
-- Data for Name: objective_perspective; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objective_perspective (is_active, created, created_at, updated, updated_at, id, name, description, short_code, long_code, "order") FROM stdin;
t	\N	2019-12-06 11:46:17.440224	\N	2019-12-06 11:46:17.440224	1	Financiero		\N	\N	\N
t	\N	2019-12-06 11:46:50.173472	\N	2019-12-06 11:46:50.173472	4	Personas		\N	\N	\N
t	\N	2019-12-06 11:46:34.97714	\N	2019-12-06 11:56:03.313879	2	Clientes	\N	\N	\N	\N
t	\N	2019-12-06 11:46:38.370421	\N	2019-12-06 11:46:38.370421	3	Procesos	\N	\N	\N	\N
\.


--
-- Data for Name: objetive_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objetive_comment (is_active, created, created_at, updated, updated_at, id, name, description, is_automatic, "objectiveId") FROM stdin;
\.


--
-- Data for Name: organizational_level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organizational_level (is_active, created, created_at, updated, updated_at, id, name, description, level, short_code, long_code, "order") FROM stdin;
t	\N	2019-11-20 22:17:44.565158	\N	2019-11-20 22:17:44.565158	1	Nivel 1		1	\N	\N	\N
t	\N	2019-11-20 22:17:51.840646	\N	2019-11-20 22:17:51.840646	2	Nivel 2		2	\N	\N	\N
t	\N	2019-11-20 22:17:56.896262	\N	2019-11-20 22:17:56.896262	3	Nivel 3		3	\N	\N	\N
t	\N	2019-11-20 22:18:01.741581	\N	2019-11-20 22:18:01.741581	4	Nivel 4		4	\N	\N	\N
t	\N	2019-11-20 22:18:06.605105	\N	2019-11-20 22:18:06.605105	5	Nivel 5		5	\N	\N	\N
t	\N	2019-11-20 22:18:13.537666	\N	2019-11-20 22:18:13.537666	6	Nivel 6		6	\N	\N	\N
t	\N	2019-11-20 22:18:18.961399	\N	2019-11-20 22:18:18.961399	7	Nivel 7		7	\N	\N	\N
\.


--
-- Data for Name: parameter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parameter (is_active, created_at, updated_at, id, name, description, type, category, param_varchar, param_int, param_float, param_date, param_json, param_xml, "companyId", created, updated, short_code, long_code, "order") FROM stdin;
\.


--
-- Data for Name: permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permission (is_active, created_at, updated_at, id, name, description, "moduleId", created, updated, short_code, long_code, "order") FROM stdin;
\.


--
-- Data for Name: permission_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permission_role (is_active, created_at, updated_at, id, "permissionId", "roleId", created, updated) FROM stdin;
\.


--
-- Data for Name: position; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."position" (is_active, created_at, updated_at, id, name, description, "organizationalLevelId", mission, view, essential, created, updated, "stageId", short_code, long_code, "order") FROM stdin;
t	2020-02-06 03:40:59.670023	2020-02-06 03:41:29.718269	35	Jefe Ventas Distribuidores	Gestión de ventas clientes distribuidores de acabados	3	jvd	jvd	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 03:44:28.548617	2020-02-06 03:44:28.548617	36	Jefe Ventas Tienda	Gestión de ventas en tienda y consumidores finales	3	jvt	jvt	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 03:46:46.935002	2020-02-06 03:46:46.935002	37	Coord. Tecnico Senior	Gestión de promoción y capacitaciones	3	cts	cts	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 03:51:39.874456	2020-02-06 03:51:39.874456	38	Coord. Tecnico Junior	Asesor tecnico y capacitación	4	ctj	ctj	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 03:57:12.097032	2020-02-06 03:57:12.097032	41	Contador	Control de información tributaria y contable	3	ct	ct	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 04:00:08.467471	2020-02-06 04:00:08.467471	42	Asistente Contable	Ejecución de procesos de registros de información	4	ac	ac	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 16:59:02.848081	2020-02-06 16:59:02.848081	44	Asistente de Crédito	Gestión de Cobranza y caja	4	mac	vac	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 17:00:28.109105	2020-02-06 17:00:40.043582	45	Asistente Administrativo	Gestion de compra de servicios, suministro y mantenimiento	4	maa	vaa	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 17:02:55.131412	2020-02-06 17:02:55.131412	46	Analísta de Inventarios	Gestionar compras de inventarios, importaciones y nivel de inventarios	3	mai	vai	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 17:09:57.835324	2020-02-06 17:09:57.835324	48	Auxiliar de Bodega	Atención de depachos, orden y limpieza de bodega	4	mab	vab	lc	\N	\N	9	\N	\N	\N
t	2020-02-07 16:19:20.889216	2020-02-07 16:19:20.889216	49	Coord. RRHH	Gestionar contratación, procesos laborales y nomina	3	mrrhh	vrhh	lc	\N	\N	9	\N	\N	\N
t	2020-02-06 03:25:00.141641	2020-02-09 04:10:30.968775	30	Gerente General	Gestor Estrategico y Administrativo	1	Tomar decisiones estratégicas de negocio para generar valor y rentabilidad	Ser reconocido por trabajar con metodologias y herramientas de clase muncial	Conocer el negocio y el mercado profundamente	\N	\N	9	\N	\N	\N
t	2020-02-06 03:31:21.094823	2020-02-09 04:15:07.969032	31	Gerente Comercial	Gestor de ventas y cadena de suministro	2	Gestionar todo el proceso de la cadena de abastecimiento y venta	Ser reconocido por un manejo efectivo de los niveles mercaderia y gestion de venta impecable	Responder inmediatamente a situaciones de mercado	\N	\N	9	\N	\N	\N
t	2020-02-06 03:33:18.584207	2020-02-09 04:19:23.552717	32	Gerente Financiero	Gestor de flujo de efectivo, financiamiento y recaudación	2	Gestionar financiamiento economico de las operaciones y reducir riesgos crediticios	Ser reconocidos por mantener una disciplina economica efectiva y soporte a todas los proyectos y necesidades departamentales	Mantener fuentes de financiamiento activas	\N	\N	9	\N	\N	\N
t	2020-02-06 03:37:08.106019	2020-02-09 04:23:45.171928	33	Gerente Tecnico	Gestor tecnico y capacitación	2	Mantener a todos nuestros clientes capacitados y asesorados en la utilización de nuestros productos	Ser reconocidos por compartir conocimientos y experiencias de manera generosa	Dominio de todo el catalago de productos	\N	\N	9	\N	\N	\N
t	2020-02-06 03:55:08.616666	2020-02-09 04:39:25.864921	40	Coord. PMS	Administrador de sistema de gestión estrategico	3	Capacitar y asesorar al personal de la Cia. en las practicas metodológicas PMS	Ser reconocidos por ser un agente de cambio positivo en la cultura organizacional	Evangelizar al personal de la Cia. Filosofia PMS	\N	\N	9	\N	\N	\N
t	2020-02-06 03:53:31.362536	2020-02-09 04:45:42.762454	39	Coord. Sistemas	Administración infraestructura tecnolóogica	3	Administrar infraestructura tecnológica de la Cia. bajo estandares ITIL	Ser reconocidos por crear ventajas competitivas en la Cia. por herramientas tecnológicas	Predecir brechas de seguridad y disponibilidad de servicios IT	\N	\N	9	\N	\N	\N
t	2020-02-06 16:56:34.62671	2020-02-09 04:52:53.68589	43	Analista de Crédito	Gestor de concesión de línea de crédito y recaudación	3	Realizar analisis de requerimientos de lineas de credito y generar informe objetivo de riesgos potenciales	Ser reconocidos por facilitar al área comercial un servicio de mitigacion de riego crediticio en las ventas realizadas	Comunicación permanente con los clientes y equipo comercial	\N	\N	9	\N	\N	\N
t	2020-02-06 03:39:20.994674	2020-02-09 04:58:30.573896	34	Jefe Ventas Mayoristas	Gestion de ventas a clientes mayoristas	3	Atender a los clientes mayoristas y asegurar una ejecución comercial que permita mantener relación de confianza con los mismos	Ser reconocidos por mantener un constante aporte de valor y rentabildad a la cia.	Visitar 2 veces por semana a cada cliente mayorista y su red de ferreterias	\N	\N	9	\N	\N	\N
t	2020-02-06 17:08:07.996236	2020-02-09 05:17:08.312659	47	Jefe Logistica	Administracion de bodegas y transporte	3	Asegurar niveles de inventario acorde a demanda de mercado, manteniendo tiempo de respuesta reducido ante quiebres de stock	Ser reconocidos por mantener costos operativo marginales respecto al volumen de venta de la Cia	Revisiion diaria de indicadores operativos y acciones correctivas	\N	\N	9	\N	\N	\N
\.


--
-- Data for Name: priority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.priority (is_active, created_at, updated_at, id, name, description, "stageId", created, updated, short_code, long_code, "order") FROM stdin;
\.


--
-- Data for Name: priority_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.priority_comment (is_active, created, created_at, updated, updated_at, id, name, description, is_automatic, "priorityId") FROM stdin;
\.


--
-- Data for Name: priority_participant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.priority_participant (is_active, created_at, updated_at, assigned, "priorityId", created, updated, id) FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (is_active, created_at, updated_at, id, name, description, "stageId", created, updated, short_code, long_code, "order") FROM stdin;
\.


--
-- Data for Name: project_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_comment (is_active, created, created_at, updated, updated_at, id, name, description, is_automatic, "projectId") FROM stdin;
\.


--
-- Data for Name: project_participant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_participant (is_active, created_at, updated_at, id, assigned, "projectId", created, updated) FROM stdin;
\.


--
-- Data for Name: reference_origen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reference_origen (is_active, created, created_at, updated, updated_at, id, name, description, short_code, long_code, "order") FROM stdin;
t	\N	2019-11-18 22:57:20.8742	\N	2019-11-18 22:57:20.8742	1	Área	Área	\N	\N	\N
t	\N	2019-11-19 15:41:18.900831	\N	2019-11-19 15:41:18.900831	2	Departamento	Departamento	\N	\N	\N
t	\N	2019-11-19 19:59:36.768091	\N	2019-11-19 19:59:36.768091	3	Cargo	Cargo	\N	\N	\N
\.


--
-- Data for Name: reference_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reference_type (is_active, created, created_at, updated, updated_at, id, name, description, short_code, long_code, "order") FROM stdin;
t	\N	2019-11-18 22:57:52.307339	\N	2019-11-18 22:57:52.307339	1	Metas Estratégicas	Metas Estratégicas	\N	\N	\N
t	\N	2019-11-18 22:58:02.247514	\N	2019-11-18 22:58:02.247514	2	Proyectos Estratégicos	Proyectos Estratégicos	\N	\N	\N
t	\N	2019-11-19 19:55:34.496765	\N	2019-11-19 19:55:34.496765	3	Objetivos	Objetivos	\N	\N	\N
t	\N	2019-11-19 19:55:55.779603	\N	2019-11-19 19:55:55.779603	4	Palancas	Palancas	\N	\N	\N
\.


--
-- Data for Name: reference_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reference_values (is_active, created, created_at, updated, updated_at, id, name, description, "referenceTypeId", "referenceOrigenId", short_code, long_code, "order", "referenceId") FROM stdin;
f	\N	2020-02-05 03:03:35.016095	\N	2020-02-05 03:07:14.465809	255	M1		1	1	\N	\N	\N	16
f	\N	2020-02-05 03:03:35.195173	\N	2020-02-05 03:07:14.570542	256	P1		2	1	\N	\N	\N	16
f	\N	2020-02-05 03:11:21.714709	\N	2020-02-05 03:12:09.484788	259	m1		1	1	\N	\N	\N	17
f	\N	2020-02-05 03:11:21.732958	\N	2020-02-05 03:12:09.590171	260	p1		2	1	\N	\N	\N	17
f	\N	2020-02-05 03:24:10.087924	\N	2020-02-05 03:24:25.326775	261	m1		1	1	\N	\N	\N	18
f	\N	2020-02-05 03:24:10.179517	\N	2020-02-05 03:24:25.456265	262	p1		2	1	\N	\N	\N	18
t	\N	2020-02-05 03:36:48.516676	\N	2020-02-05 03:36:48.516676	263	Facturar 3 millones de dólares hasta el 2022		1	1	\N	\N	\N	15
t	\N	2020-02-05 03:36:48.55137	\N	2020-02-05 03:36:48.55137	264	Establecer 3 clientes mayorista		1	1	\N	\N	\N	15
t	\N	2020-02-05 03:36:48.554024	\N	2020-02-05 03:36:48.554024	265	Construcción de Centro Logístico		2	1	\N	\N	\N	15
f	\N	2020-02-05 03:05:57.415878	\N	2020-02-05 03:36:48.567371	257	M1		1	1	\N	\N	\N	15
f	\N	2020-02-05 03:05:57.563083	\N	2020-02-05 03:36:48.633968	258	P1		2	1	\N	\N	\N	15
t	\N	2020-02-06 02:12:18.174517	\N	2020-02-06 02:12:18.174517	290	Lograr EVA de 1 o mayor en cada periodo contable		1	1	\N	\N	\N	17
t	\N	2020-02-06 02:12:18.649855	\N	2020-02-06 02:12:18.649855	291	Construcción de Centro Logístico		2	1	\N	\N	\N	17
f	\N	2020-02-05 22:29:32.399918	\N	2020-02-06 02:12:18.664052	281	p3		2	1	\N	\N	\N	17
f	\N	2020-02-05 22:29:32.380621	\N	2020-02-06 02:12:18.674748	280	m3		1	1	\N	\N	\N	17
t	\N	2020-02-06 02:13:51.780678	\N	2020-02-06 02:13:51.780678	292	Establecer convenio comercial con 50% de Colegios Profesionales de Ia construcción		1	1	\N	\N	\N	17
t	\N	2020-02-06 02:16:30.38575	\N	2020-02-06 02:16:30.38575	293	Mantener un ciclo de efectivo positivo		1	1	\N	\N	\N	16
f	\N	2020-02-05 22:28:06.828986	\N	2020-02-06 02:16:30.408859	276	m1		1	1	\N	\N	\N	16
t	\N	2020-02-06 02:16:30.606278	\N	2020-02-06 02:16:30.606278	294	Construcción de Centro Logístico		2	1	\N	\N	\N	16
f	\N	2020-02-05 22:28:06.842783	\N	2020-02-06 02:16:30.620116	277	p1		2	1	\N	\N	\N	16
t	\N	2020-02-06 02:17:04.138062	\N	2020-02-06 02:17:04.138062	295	Aperturar oficinas técnicas en 6 ciudades estratégicas del país		1	1	\N	\N	\N	17
t	\N	2020-02-06 02:19:15.449327	\N	2020-02-06 02:19:15.449327	296	Lograr certificación nacional en programa de capacitación		1	1	\N	\N	\N	18
f	\N	2020-02-05 22:29:05.026264	\N	2020-02-06 02:19:15.471888	278	m2		1	1	\N	\N	\N	18
t	\N	2020-02-06 02:19:15.75314	\N	2020-02-06 02:19:15.75314	297	Elaborar programa Certificado de capacitación profesional		2	1	\N	\N	\N	18
f	\N	2020-02-05 22:29:05.039962	\N	2020-02-06 02:19:15.762779	279	p2		2	1	\N	\N	\N	18
t	\N	2020-02-06 02:33:40.868471	\N	2020-02-06 02:33:40.868471	298	Mantener un ciclo de efectivo positivo		1	2	\N	\N	\N	24
f	\N	2020-02-05 03:58:22.102087	\N	2020-02-06 02:33:40.886007	274	m6		1	2	\N	\N	\N	24
t	\N	2020-02-06 02:33:41.170219	\N	2020-02-06 02:33:41.170219	299	Construcción de Centro Logístico		2	2	\N	\N	\N	24
f	\N	2020-02-05 03:58:22.208648	\N	2020-02-06 02:33:41.185953	275	p6		2	2	\N	\N	\N	24
t	\N	2020-02-06 02:39:48.351199	\N	2020-02-06 02:39:48.351199	300	Facturar 3 millones de dólares hasta el 2022		1	2	\N	\N	\N	26
t	\N	2020-02-06 02:39:48.377567	\N	2020-02-06 02:39:48.377567	301	Lograr EVA de 1 o mayor en cada periodo contable		1	2	\N	\N	\N	26
t	\N	2020-02-06 02:39:48.656596	\N	2020-02-06 02:39:48.656596	302	Construcción de Centro Logístico		2	2	\N	\N	\N	26
f	\N	2020-02-05 22:46:16.889408	\N	2020-02-06 02:39:48.679513	285	m2		2	2	\N	\N	\N	26
f	\N	2020-02-05 22:46:16.552145	\N	2020-02-06 02:39:48.681244	284	m1		1	2	\N	\N	\N	26
t	\N	2020-02-06 02:47:56.213208	\N	2020-02-06 02:47:56.213208	303	Lograr EVA de 1 o mayor en cada periodo contable		1	2	\N	\N	\N	25
t	\N	2020-02-06 02:47:56.521771	\N	2020-02-06 02:47:56.521771	304	Mantener un ciclo de efectivo positivo		1	2	\N	\N	\N	25
t	\N	2020-02-06 02:47:56.540114	\N	2020-02-06 02:47:56.540114	305	Aperturar oficinas técnicas en 6 ciudades estratégicas del país		1	2	\N	\N	\N	25
t	\N	2020-02-06 02:47:56.547252	\N	2020-02-06 02:47:56.547252	306	Elaborar programa Certificado de capacitación profesional		2	2	\N	\N	\N	25
f	\N	2020-02-05 22:33:15.328637	\N	2020-02-06 02:47:56.56739	282	P9		1	2	\N	\N	\N	25
t	\N	2020-02-06 02:47:56.566216	\N	2020-02-06 02:47:56.566216	307	Construcción de Centro Logístico		2	2	\N	\N	\N	25
f	\N	2020-02-05 22:33:15.576409	\N	2020-02-06 02:47:56.578002	283	P9		2	2	\N	\N	\N	25
t	\N	2020-02-06 02:51:23.655712	\N	2020-02-06 02:51:23.655712	308	Facturar 3 millones de dólares hasta el 2022		1	2	\N	\N	\N	27
t	\N	2020-02-06 02:51:23.684445	\N	2020-02-06 02:51:23.684445	309	Lograr certificación nacional en programa de capacitación de uso de nuestras herramientas		1	2	\N	\N	\N	27
t	\N	2020-02-06 02:51:23.890703	\N	2020-02-06 02:51:23.890703	310	Elaborar programa Certificado de capacitación profesional		2	2	\N	\N	\N	27
f	\N	2020-02-05 22:49:35.871754	\N	2020-02-06 02:51:23.913892	286	m1		1	2	\N	\N	\N	27
f	\N	2020-02-05 22:49:36.026579	\N	2020-02-06 02:51:23.914992	287	m2		2	2	\N	\N	\N	27
t	\N	2020-02-06 02:55:45.75632	\N	2020-02-06 02:55:45.75632	311	Establecer 3 clientes mayorista		1	2	\N	\N	\N	28
t	\N	2020-02-06 02:55:45.773551	\N	2020-02-06 02:55:45.773551	312	Establecer convenio comercial con 50% de Colegios Profesionales		1	2	\N	\N	\N	28
t	\N	2020-02-06 02:55:45.836222	\N	2020-02-06 02:55:45.836222	313	Lograr certificación nacional en programa de capacitación		1	2	\N	\N	\N	28
t	\N	2020-02-06 02:55:46.092629	\N	2020-02-06 02:55:46.092629	314	Elaborar programa Certificado de capacitación profesional		2	2	\N	\N	\N	28
f	\N	2020-02-05 22:54:05.642903	\N	2020-02-06 02:55:46.10606	288	v2		2	2	\N	\N	\N	28
f	\N	2020-02-05 22:54:05.6597	\N	2020-02-06 02:55:47.440188	289	v1		1	2	\N	\N	\N	28
t	\N	2020-02-06 03:00:31.180208	\N	2020-02-06 03:00:31.180208	315	Lograr EVA de 1 o mayor en cada periodo contable		1	2	\N	\N	\N	23
t	\N	2020-02-06 03:00:31.197739	\N	2020-02-06 03:00:31.197739	316	Construcción de Centro Logístico		2	2	\N	\N	\N	23
f	\N	2020-02-05 03:50:59.45499	\N	2020-02-06 03:00:31.21903	272	M4		1	2	\N	\N	\N	23
f	\N	2020-02-05 03:50:59.471313	\N	2020-02-06 03:00:31.220029	273	P4		2	2	\N	\N	\N	23
t	\N	2020-02-06 03:00:32.189621	\N	2020-02-06 03:00:32.189621	317	Mantener un ciclo de efectivo positivo		1	2	\N	\N	\N	23
t	\N	2020-02-06 03:02:32.626014	\N	2020-02-06 03:02:32.626014	318	Facturar 3 millones de dólares hasta el 2022		1	2	\N	\N	\N	20
t	\N	2020-02-06 03:02:32.653695	\N	2020-02-06 03:02:32.653695	319	Establecer 3 clientes mayorista		1	2	\N	\N	\N	20
t	\N	2020-02-06 03:02:33.028414	\N	2020-02-06 03:02:33.028414	320	Construcción de Centro Logístico		2	2	\N	\N	\N	20
f	\N	2020-02-05 03:45:08.540055	\N	2020-02-06 03:02:33.046957	266	m1		1	2	\N	\N	\N	20
f	\N	2020-02-05 03:45:08.660115	\N	2020-02-06 03:02:33.058204	267	p1		2	2	\N	\N	\N	20
t	\N	2020-02-06 03:13:39.998449	\N	2020-02-06 03:13:39.998449	321	Facturar 3 millones de dólares hasta el 2022		1	2	\N	\N	\N	21
f	\N	2020-02-05 03:47:14.768951	\N	2020-02-06 03:13:40.017684	268	m2		1	2	\N	\N	\N	21
t	\N	2020-02-06 03:13:40.552825	\N	2020-02-06 03:13:40.552825	322	Construcción de Centro Logístico		2	2	\N	\N	\N	21
f	\N	2020-02-05 03:47:14.873518	\N	2020-02-06 03:13:40.570224	269	p2		2	2	\N	\N	\N	21
t	\N	2020-02-06 03:16:33.366789	\N	2020-02-06 03:16:33.366789	323	Facturar 3 millones de dólares hasta el 2022		1	2	\N	\N	\N	22
t	\N	2020-02-06 03:16:33.385426	\N	2020-02-06 03:16:33.385426	324	Establecer convenio comercial con 50% de Colegios Profesionales		1	2	\N	\N	\N	22
t	\N	2020-02-06 03:16:33.873623	\N	2020-02-06 03:16:33.873623	325	Construcción de Centro Logístico		2	2	\N	\N	\N	22
f	\N	2020-02-05 03:49:26.769049	\N	2020-02-06 03:16:33.892273	270	M3		1	2	\N	\N	\N	22
f	\N	2020-02-05 03:49:26.909651	\N	2020-02-06 03:16:33.903235	271	P3		2	2	\N	\N	\N	22
f	\N	2020-02-06 03:31:21.958861	\N	2020-02-09 04:15:09.29582	328	obj1		3	3	\N	\N	\N	31
t	\N	2020-02-06 03:41:00.575544	\N	2020-02-06 03:41:00.575544	336	pl1		4	3	\N	\N	\N	35
t	\N	2020-02-06 03:41:00.585964	\N	2020-02-06 03:41:00.585964	337	obj1		3	3	\N	\N	\N	35
t	\N	2020-02-06 03:44:29.605849	\N	2020-02-06 03:44:29.605849	338	jvt		3	3	\N	\N	\N	36
t	\N	2020-02-06 03:44:29.619692	\N	2020-02-06 03:44:29.619692	339	pl1		4	3	\N	\N	\N	36
t	\N	2020-02-06 03:46:48.095925	\N	2020-02-06 03:46:48.095925	340	obj1		3	3	\N	\N	\N	37
t	\N	2020-02-06 03:46:48.110556	\N	2020-02-06 03:46:48.110556	341	pl1		4	3	\N	\N	\N	37
t	\N	2020-02-06 03:51:40.371235	\N	2020-02-06 03:51:40.371235	342	obj1		3	3	\N	\N	\N	38
t	\N	2020-02-06 03:51:40.494918	\N	2020-02-06 03:51:40.494918	343	pl1		4	3	\N	\N	\N	38
t	\N	2020-02-06 03:57:12.383989	\N	2020-02-06 03:57:12.383989	348	obj1		3	3	\N	\N	\N	41
t	\N	2020-02-06 03:57:12.490804	\N	2020-02-06 03:57:12.490804	349	pl1		4	3	\N	\N	\N	41
t	\N	2020-02-06 04:00:08.734922	\N	2020-02-06 04:00:08.734922	350	obj1		3	3	\N	\N	\N	42
t	\N	2020-02-06 04:00:08.842564	\N	2020-02-06 04:00:08.842564	351	pl1		4	3	\N	\N	\N	42
t	\N	2020-02-06 16:59:04.079781	\N	2020-02-06 16:59:04.079781	354	obj1		3	3	\N	\N	\N	44
t	\N	2020-02-06 16:59:04.31746	\N	2020-02-06 16:59:04.31746	355	pl1		4	3	\N	\N	\N	44
t	\N	2020-02-06 17:00:29.047795	\N	2020-02-06 17:00:29.047795	356	obj1		3	3	\N	\N	\N	45
t	\N	2020-02-06 17:00:29.066996	\N	2020-02-06 17:00:29.066996	357	pl1		4	3	\N	\N	\N	45
t	\N	2020-02-06 17:02:56.308411	\N	2020-02-06 17:02:56.308411	358	onbj1		3	3	\N	\N	\N	46
t	\N	2020-02-06 17:02:56.318599	\N	2020-02-06 17:02:56.318599	359	pl1		4	3	\N	\N	\N	46
t	\N	2020-02-06 17:09:59.11332	\N	2020-02-06 17:09:59.11332	362	pl1		4	3	\N	\N	\N	48
t	\N	2020-02-06 17:09:59.127465	\N	2020-02-06 17:09:59.127465	363	obj1		3	3	\N	\N	\N	48
t	\N	2020-02-07 16:19:21.715839	\N	2020-02-07 16:19:21.715839	364	pl1		4	3	\N	\N	\N	49
t	\N	2020-02-07 16:19:21.72449	\N	2020-02-07 16:19:21.72449	365	obj1		3	3	\N	\N	\N	49
t	\N	2020-02-09 04:10:32.183153	\N	2020-02-09 04:10:32.183153	366	Objetivo 1 Gerencia Gneral		3	3	\N	\N	\N	30
t	\N	2020-02-09 04:10:32.196813	\N	2020-02-09 04:10:32.196813	367	Objetivo 2 Gerencia General		3	3	\N	\N	\N	30
t	\N	2020-02-09 04:10:32.599134	\N	2020-02-09 04:10:32.599134	368	Palanca 1 Gerencia General		4	3	\N	\N	\N	30
t	\N	2020-02-09 04:10:32.607231	\N	2020-02-09 04:10:32.607231	369	Palanca 2 Gerencia General		4	3	\N	\N	\N	30
f	\N	2020-02-06 03:25:01.07779	\N	2020-02-09 04:10:32.625804	327	obj1		3	3	\N	\N	\N	30
f	\N	2020-02-06 03:25:01.068505	\N	2020-02-09 04:10:32.628901	326	pl1		4	3	\N	\N	\N	30
t	\N	2020-02-09 04:15:08.704114	\N	2020-02-09 04:15:08.704114	370	Objetivo 1 Gerente Comercial		3	3	\N	\N	\N	31
t	\N	2020-02-09 04:15:08.716225	\N	2020-02-09 04:15:08.716225	371	Objetivo 2 Gerente Comercial		3	3	\N	\N	\N	31
t	\N	2020-02-09 04:15:09.276007	\N	2020-02-09 04:15:09.276007	372	Palanca 1 gerente comercial		4	3	\N	\N	\N	31
t	\N	2020-02-09 04:15:09.28073	\N	2020-02-09 04:15:09.28073	373	Palanca 2 Gerente Comercial		4	3	\N	\N	\N	31
f	\N	2020-02-06 03:31:22.362919	\N	2020-02-09 04:15:09.302654	329	pl1		4	3	\N	\N	\N	31
t	\N	2020-02-09 04:19:24.562386	\N	2020-02-09 04:19:24.562386	374	Objetivo 1 Gerente Financiero		3	3	\N	\N	\N	32
t	\N	2020-02-09 04:19:24.598306	\N	2020-02-09 04:19:24.598306	375	Objetivo 2 Gerente Financiero		3	3	\N	\N	\N	32
t	\N	2020-02-09 04:19:24.770805	\N	2020-02-09 04:19:24.770805	376	Palanca 1 Gerente Financiero		4	3	\N	\N	\N	32
t	\N	2020-02-09 04:19:24.782733	\N	2020-02-09 04:19:24.782733	377	Palanca 2 Gerente Financiero		4	3	\N	\N	\N	32
f	\N	2020-02-06 03:33:19.397916	\N	2020-02-09 04:19:24.797267	330	onbj1		3	3	\N	\N	\N	32
f	\N	2020-02-06 03:33:19.410879	\N	2020-02-09 04:19:24.798058	331	pl1		4	3	\N	\N	\N	32
t	\N	2020-02-09 04:23:45.893081	\N	2020-02-09 04:23:45.893081	378	Objetivo 1 Gerente Técnico		3	3	\N	\N	\N	33
t	\N	2020-02-09 04:23:45.910213	\N	2020-02-09 04:23:45.910213	379	Objetivo 2 Gerente Técnico		3	3	\N	\N	\N	33
t	\N	2020-02-09 04:23:46.499545	\N	2020-02-09 04:23:46.499545	380	Palanca 1 Gerente Técnico		4	3	\N	\N	\N	33
t	\N	2020-02-09 04:23:46.517703	\N	2020-02-09 04:23:46.517703	381	Palanca 2 Gerente Técnico		4	3	\N	\N	\N	33
f	\N	2020-02-06 03:37:08.785052	\N	2020-02-09 04:23:46.521743	332	obj1		3	3	\N	\N	\N	33
f	\N	2020-02-06 03:37:08.801328	\N	2020-02-09 04:23:46.533994	333	pl1		4	3	\N	\N	\N	33
t	\N	2020-02-09 04:39:26.551228	\N	2020-02-09 04:39:26.551228	382	Objetivo 1 Coordinador PMS		3	3	\N	\N	\N	40
t	\N	2020-02-09 04:39:26.576739	\N	2020-02-09 04:39:26.576739	383	Objetivo 2 Coordinador PMS		3	3	\N	\N	\N	40
t	\N	2020-02-09 04:39:26.876288	\N	2020-02-09 04:39:26.876288	384	Palanca 1 Coordinador PMS		4	3	\N	\N	\N	40
f	\N	2020-02-06 03:55:08.897133	\N	2020-02-09 04:39:26.896393	346	obj1		3	3	\N	\N	\N	40
t	\N	2020-02-09 04:39:26.89502	\N	2020-02-09 04:39:26.89502	385	Palanca 2 Coordinador PMS		4	3	\N	\N	\N	40
f	\N	2020-02-06 03:55:09.006207	\N	2020-02-09 04:39:26.912379	347	pl1		4	3	\N	\N	\N	40
t	\N	2020-02-09 04:45:43.853112	\N	2020-02-09 04:45:43.853112	386	Objetivo 1 Coordinador de Sistemas		3	3	\N	\N	\N	39
t	\N	2020-02-09 04:45:43.87385	\N	2020-02-09 04:45:43.87385	387	Objetivo 2 Coordinador de Sistemas		3	3	\N	\N	\N	39
t	\N	2020-02-09 04:45:44.210999	\N	2020-02-09 04:45:44.210999	388	Palanca 1 Coordinador de Sistemas		4	3	\N	\N	\N	39
t	\N	2020-02-09 04:45:44.21854	\N	2020-02-09 04:45:44.21854	389	Palanca 2 Coordinador de Sistemas		4	3	\N	\N	\N	39
f	\N	2020-02-06 03:53:31.636085	\N	2020-02-09 04:45:44.232208	344	obj1		3	3	\N	\N	\N	39
f	\N	2020-02-06 03:53:31.740986	\N	2020-02-09 04:45:44.27205	345	pl1		4	3	\N	\N	\N	39
t	\N	2020-02-09 04:52:54.207023	\N	2020-02-09 04:52:54.207023	390	Objetivo 2 Analista de Credito		3	3	\N	\N	\N	43
t	\N	2020-02-09 04:52:54.232711	\N	2020-02-09 04:52:54.232711	391	Objetivo 1 Analista de Credito		3	3	\N	\N	\N	43
t	\N	2020-02-09 04:52:54.387634	\N	2020-02-09 04:52:54.387634	392	Palanca 2 Analista de Credito		4	3	\N	\N	\N	43
t	\N	2020-02-09 04:52:54.409625	\N	2020-02-09 04:52:54.409625	393	Palanca 1 Analista de Credito		4	3	\N	\N	\N	43
f	\N	2020-02-06 16:56:35.49588	\N	2020-02-09 04:52:54.419676	353	pl1		4	3	\N	\N	\N	43
f	\N	2020-02-06 16:56:35.496335	\N	2020-02-09 04:52:54.431312	352	obj1		3	3	\N	\N	\N	43
t	\N	2020-02-09 04:58:31.295069	\N	2020-02-09 04:58:31.295069	394	Objetivo 2 Ventas Mayoristas		3	3	\N	\N	\N	34
t	\N	2020-02-09 04:58:31.312941	\N	2020-02-09 04:58:31.312941	395	Objetivo 1 Ventas Mayoristas		3	3	\N	\N	\N	34
t	\N	2020-02-09 04:58:31.322294	\N	2020-02-09 04:58:31.322294	396	Objetivo 3 Ventas Mayoristas		3	3	\N	\N	\N	34
t	\N	2020-02-09 04:58:31.719664	\N	2020-02-09 04:58:31.719664	397	Palanca 1 Ventas Mayoristas		4	3	\N	\N	\N	34
t	\N	2020-02-09 04:58:31.724968	\N	2020-02-09 04:58:31.724968	398	Palanca 2 Ventas Mayoristas		4	3	\N	\N	\N	34
f	\N	2020-02-06 03:39:22.019456	\N	2020-02-09 04:58:31.740777	334	obj1		3	3	\N	\N	\N	34
f	\N	2020-02-06 03:39:22.323294	\N	2020-02-09 04:58:31.744463	335	pl1		4	3	\N	\N	\N	34
t	\N	2020-02-09 04:58:31.757558	\N	2020-02-09 04:58:31.757558	399	Palanca 3 Ventas Mayoristas		4	3	\N	\N	\N	34
t	\N	2020-02-09 05:13:49.780203	\N	2020-02-09 05:13:49.780203	400	Objetivo 2 Jefe de Logistica		3	3	\N	\N	\N	47
t	\N	2020-02-09 05:13:49.795512	\N	2020-02-09 05:13:49.795512	401	Objetivo 3 Jefe de Logistica		3	3	\N	\N	\N	47
t	\N	2020-02-09 05:13:49.813259	\N	2020-02-09 05:13:49.813259	402	Palanca 3 Jefe de Logistica		4	3	\N	\N	\N	47
t	\N	2020-02-09 05:13:49.81555	\N	2020-02-09 05:13:49.81555	403	Objetivo 1 Jefe de Logistica		3	3	\N	\N	\N	47
t	\N	2020-02-09 05:13:49.82	\N	2020-02-09 05:13:49.82	404	Palanca 2 Jefe de Logistica		4	3	\N	\N	\N	47
t	\N	2020-02-09 05:13:49.834014	\N	2020-02-09 05:13:49.834014	405	Palanca 1 Jefe de Logistica		4	3	\N	\N	\N	47
f	\N	2020-02-06 17:08:08.911527	\N	2020-02-09 05:13:49.950078	360	obj1		3	3	\N	\N	\N	47
f	\N	2020-02-06 17:08:08.927009	\N	2020-02-09 05:13:49.959344	361	pl1		4	3	\N	\N	\N	47
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (is_active, created_at, updated_at, id, name, description, created, updated, short_code, long_code, "order") FROM stdin;
t	2019-09-30 17:54:12.958011	2019-10-28 02:04:57.540587	2	ESPECIALISTA PMS		\N	\N	\N	\N	\N
t	2019-09-25 20:47:35.779135	2019-10-28 02:05:49.094019	1	ADMINISTRADOR DE LA PLATAFORMA		\N	\N	\N	\N	\N
t	2019-09-30 17:58:57.066939	2019-10-28 02:06:58.155153	3	CEO - GERENTE GENERAL		\N	\N	\N	\N	\N
t	2019-10-28 02:07:20.204456	2019-10-28 02:07:20.204456	4	GERENTE		\N	\N	\N	\N	\N
t	2019-10-28 02:07:34.020735	2019-10-28 02:07:34.020735	5	JEFE		\N	\N	\N	\N	\N
t	2019-10-28 02:07:49.792273	2019-10-28 02:07:49.792273	6	ASISTENTE		\N	\N	\N	\N	\N
\.


--
-- Data for Name: role_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_user (is_active, created_at, updated_at, id, "userId", "roleId", created, updated) FROM stdin;
t	2019-09-25 20:49:21.417789	2019-09-25 20:49:21.417789	1	2	1	\N	\N
t	2019-09-30 16:05:20.786294	2019-09-30 16:05:20.786294	2	3	1	\N	\N
t	2019-09-30 17:52:08.949849	2019-09-30 17:52:08.949849	3	4	1	\N	\N
t	2019-10-28 02:09:31.384704	2019-10-28 02:09:31.384704	4	1	1	\N	\N
t	2020-02-04 12:40:28.615034	2020-02-04 12:40:28.615034	5	5	1	\N	\N
\.


--
-- Data for Name: sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sector (is_active, created_at, updated_at, id, name, description, created, updated, short_code, long_code, "order") FROM stdin;
t	2019-09-30 15:43:48.780176	2019-09-30 15:43:48.780176	1	Agrícola	Agrícola	\N	\N	\N	\N	\N
t	2019-09-30 15:43:57.714237	2019-09-30 15:43:57.714237	2	Pesquero	Pesquero	\N	\N	\N	\N	\N
t	2019-09-30 15:44:03.315766	2019-09-30 15:44:03.315766	3	Minero	Minero	\N	\N	\N	\N	\N
t	2019-09-30 15:44:10.408074	2019-09-30 15:44:10.408074	4	Ganadero	Ganadero	\N	\N	\N	\N	\N
t	2019-09-30 15:44:17.108912	2019-09-30 15:44:17.108912	5	Forestal	Forestal	\N	\N	\N	\N	\N
t	2019-09-30 15:44:25.382031	2019-09-30 15:44:25.382031	6	Industrial	Industrial	\N	\N	\N	\N	\N
t	2019-09-30 15:44:32.516915	2019-09-30 15:44:32.516915	7	Construcción	Construcción	\N	\N	\N	\N	\N
t	2019-09-30 15:44:44.690472	2019-09-30 15:44:44.690472	8	Energético	Energético	\N	\N	\N	\N	\N
t	2019-09-30 15:44:58.087908	2019-09-30 15:44:58.087908	9	Transporte	Transporte	\N	\N	\N	\N	\N
t	2019-09-30 15:45:06.044967	2019-09-30 15:45:06.044967	10	Comunicaciones	Comunicaciones	\N	\N	\N	\N	\N
t	2019-09-30 15:45:17.008612	2019-09-30 15:45:17.008612	11	Comercial	Comercial	\N	\N	\N	\N	\N
t	2019-09-30 15:45:26.133186	2019-09-30 15:45:26.133186	12	Turístico	Turístico	\N	\N	\N	\N	\N
t	2019-09-30 15:45:35.002501	2019-09-30 15:45:35.002501	13	Financiero	Financiero	\N	\N	\N	\N	\N
t	2019-09-30 15:45:43.440179	2019-09-30 15:45:43.440179	14	Sanitario	Sanitario	\N	\N	\N	\N	\N
t	2019-09-30 15:45:52.559028	2019-09-30 15:45:52.559028	15	Educativo	Educativo	\N	\N	\N	\N	\N
t	2019-09-30 15:46:13.598542	2019-09-30 15:46:13.598542	16	Información (Sistemas)	Información (Sistemas)	\N	\N	\N	\N	\N
\.


--
-- Data for Name: stage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stage (is_active, created_at, updated_at, id, name, description, period, from_at, to_at, mission, view, competitive_advantage, "companyId", created, updated, status, short_code, long_code, "order") FROM stdin;
t	2020-02-05 02:38:51.956417	2020-02-07 22:52:40.433343	9	PLAN ESTRATEGICO LOAN - MIDAS 2020-2022	PLAN ESTRATEGICO DE INTRODUCCION AL MERCADO DE LA CIA LOAN	2020	2020-01-01 05:00:00	2022-12-31 05:00:00	Somos una empresa especializada en la comercialización de herramientas para la construcción con especial enfoque en instalación de acabados, ofreciendo a nuestros clientes talleres y capacitación en el uso de nuestras herramientas y consumibles	Nos vemos siendo refrentes de confianza para los profesionales y maestros de la construcción al ofrecer herramientas y suministros de calidad, así como capacitación y soporte técnico de las mejores marcas del mercado.	Servicio técnico y capacitación a nuestros clientes	25	\N	\N	A	\N	\N	\N
t	2020-02-07 23:24:09.943928	2020-02-07 23:24:09.943928	10	EMPRESA MODELO - PLAN ESTRATEGICO 2020-2025	PLAN ESTRATEGICO 2020-2025 - EMPRESA MODELO	2020	2020-01-01 05:00:00	2025-12-31 05:00:00	Ofrecer soluciones constructivas modernas e innovadoras para el mercado de viviendas y departamentos familiares	Alcanzar una penetración de mercado que genere un cambio en sistemas de construcción con materiales livianos y resistentes	Asesoria y soporte técnico agil	26	\N	\N	A	\N	\N	\N
\.


--
-- Data for Name: strategic_projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strategic_projects (is_active, created_at, updated_at, id, name, description, "stageId", created, updated, short_code, long_code, "order") FROM stdin;
t	2020-02-05 02:56:50.697446	2020-02-05 02:56:50.697446	21	Construcción de Centro Logístico		9	\N	\N	\N	\N	\N
t	2020-02-05 02:56:50.710305	2020-02-05 02:56:50.710305	22	Elaborar programa certificado de capacitación		9	\N	\N	\N	\N	\N
f	2020-02-05 02:38:52.710601	2020-02-05 02:56:50.744946	20	p1		9	\N	\N	\N	\N	\N
t	2020-02-07 23:24:11.540579	2020-02-07 23:24:11.540579	23	Montar planta productiva en provincia de Manabi		10	\N	\N	\N	\N	\N
\.


--
-- Data for Name: subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscription (is_active, created, created_at, updated, updated_at, id, name, description, short_code, long_code, "order") FROM stdin;
t	\N	2020-02-04 19:26:20.596159	\N	2020-02-04 19:26:20.596159	1	Subcripción Plan Básico	Subcripción Plan Básico	\N	\N	\N
\.


--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tag (is_active, created_at, updated_at, id, name, description, reference, created, updated, short_code, long_code, "order") FROM stdin;
t	2019-10-03 00:42:34.483019	2019-10-03 00:42:34.483019	1	ECOAMBIENT		3	\N	\N	\N	\N	\N
t	2019-10-03 00:42:34.499521	2019-10-03 00:42:34.499521	2	DEFINICIONES ESTRATEGICAS		3	\N	\N	\N	\N	\N
t	2019-10-03 00:47:47.456333	2019-10-03 00:47:47.456333	3	DOCUMENTACION PMS		4	\N	\N	\N	\N	\N
t	2019-10-03 00:47:47.480182	2019-10-03 00:47:47.480182	4	ECOAMBIENT		4	\N	\N	\N	\N	\N
t	2019-10-03 00:47:47.493091	2019-10-03 00:47:47.493091	5	DIAGRAMA		4	\N	\N	\N	\N	\N
t	2019-10-03 00:47:47.512216	2019-10-03 00:47:47.512216	6	COMPONENTES PMS		4	\N	\N	\N	\N	\N
t	2019-10-03 00:50:24.056222	2019-10-03 00:50:24.056222	7	MAPA ESTRATEGICO		5	\N	\N	\N	\N	\N
t	2019-10-03 00:50:24.196561	2019-10-03 00:50:24.196561	8	ECOAMBIENT		5	\N	\N	\N	\N	\N
t	2019-10-27 18:23:56.058247	2019-10-27 18:23:56.058247	9	CONTRATO		6	\N	\N	\N	\N	\N
t	2019-10-28 16:24:41.735775	2019-10-28 16:24:41.735775	10	CONTRATO		7	\N	\N	\N	\N	\N
t	2019-10-28 16:24:43.521378	2019-10-28 16:24:43.521378	11	CONTRATO		8	\N	\N	\N	\N	\N
t	2019-10-28 16:37:25.808913	2019-10-28 16:37:25.808913	12	LOGO		9	\N	\N	\N	\N	\N
t	2019-10-28 16:51:34.239347	2019-10-28 16:51:34.239347	13	PLAN ESTRATEGICO APROBADO DE ARCO ESTRATEGIAS		10	\N	\N	\N	\N	\N
t	2019-10-28 19:39:16.509224	2019-10-28 19:39:16.509224	14	logotest		11	\N	\N	\N	\N	\N
t	2019-11-18 22:59:23.283822	2019-11-18 22:59:23.283822	15	Key1		12	\N	\N	\N	\N	\N
t	2019-11-18 22:59:23.37114	2019-11-18 22:59:23.37114	16	jey2		12	\N	\N	\N	\N	\N
t	2019-11-19 17:24:13.194578	2019-11-19 17:24:13.194578	17	ORGANIGRAMA VENTAS		13	\N	\N	\N	\N	\N
t	2019-11-19 17:24:13.195069	2019-11-19 17:24:13.195069	18	COMERCIAL		13	\N	\N	\N	\N	\N
t	2019-11-19 17:24:13.217661	2019-11-19 17:24:13.217661	19	VENTAS		13	\N	\N	\N	\N	\N
t	2019-12-04 22:43:28.740133	2019-12-04 22:43:28.740133	20	LOGO LOAN		17	\N	\N	\N	\N	\N
t	2019-12-10 17:20:01.582289	2019-12-10 17:20:01.582289	21	AMBIENTES SANOS CIA. LTDA.		18	\N	\N	\N	\N	\N
t	2019-12-10 17:20:01.732537	2019-12-10 17:20:01.732537	22	MEDIO AMBIENTE		18	\N	\N	\N	\N	\N
t	2020-02-04 19:38:50.681361	2020-02-04 19:38:50.681361	23	LOGO		19	\N	\N	\N	\N	\N
t	2020-02-04 19:38:50.682002	2020-02-04 19:38:50.682002	24	LOAN		19	\N	\N	\N	\N	\N
t	2020-02-04 19:42:33.855503	2020-02-04 19:42:33.855503	25	CONTRATO LOAN		20	\N	\N	\N	\N	\N
t	2020-02-04 19:42:34.342641	2020-02-04 19:42:34.342641	26	LOAN		20	\N	\N	\N	\N	\N
t	2020-02-04 19:42:34.34994	2020-02-04 19:42:34.34994	27	LICENCIA USO		20	\N	\N	\N	\N	\N
t	2020-02-09 21:59:31.923016	2020-02-09 21:59:31.923016	28	LOAN		21	\N	\N	\N	\N	\N
t	2020-02-09 22:02:06.084341	2020-02-09 22:02:06.084341	29	PLAN MIDAS		22	\N	\N	\N	\N	\N
t	2020-02-09 22:02:06.371323	2020-02-09 22:02:06.371323	30	ORGANIGRAMA LOAN		22	\N	\N	\N	\N	\N
t	2020-02-09 22:03:09.41924	2020-02-09 22:03:09.41924	31	LOAN		23	\N	\N	\N	\N	\N
t	2020-02-09 22:03:09.425419	2020-02-09 22:03:09.425419	32	MANUAL PMS		23	\N	\N	\N	\N	\N
t	2020-02-09 22:06:06.852991	2020-02-09 22:06:06.852991	33	PLAN MIDAS 2020		24	\N	\N	\N	\N	\N
t	2020-02-09 22:06:06.854903	2020-02-09 22:06:06.854903	34	ESTRATEGIA LOAN		24	\N	\N	\N	\N	\N
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (is_active, created_at, updated_at, id, username, email, password, is_admin, failed_login_count, first_login, force_password_change, last_failed_login_on, last_login_on, verified_phone, created, updated, "companyId") FROM stdin;
t	2019-09-25 20:49:10.583666	2020-02-05 02:39:37.793086	2	jorgeluisliu	jorgeluisliu@gmail.com	$2a$10$rKp8pwFmGKnAwbTR8lUSz.g8/dhDYaP7HkIPRBOs6AuOUIjY48iau	f	0	f	f	\N	\N	f	\N	\N	25
t	2019-09-30 17:51:33.822104	2020-02-05 02:39:50.002654	4	lpatino	lpatino@gmail.com	$2a$10$aMwHb2GIkmI7.0B/BdVbO.QnrtBT1UqJZl7V6cXdojhINUmt0vCD6	f	0	f	f	\N	\N	f	\N	\N	25
t	2019-09-25 19:49:20.34898	2020-02-05 02:40:00.647207	1	demo	demo@demo.com	$2a$10$KKvuiK4RmIVCIXXBIuyhVe7gN8.9l/ql9v3Y7ruDXpCgCqZEdhKGe	f	0	f	f	\N	\N	f	\N	\N	25
t	2019-09-30 16:05:09.414324	2020-02-05 02:40:13.534717	3	asaltos	asaltos@gmail.com	$2a$10$GiV39q4VaiZqE2LiuXqNs.UUYDDvJZvf5sbjJxCs0EGmFwIFNSKpa	f	0	f	f	\N	\N	f	\N	\N	25
t	2020-02-04 12:39:33.137156	2020-02-07 22:48:19.961689	5	jliu	jorgeluisliu@hotmail.com	$2a$10$OIizCVglPoGpDmeHUuOMQeCfTL.DHW73zyAlShWdL4uCArEhsvqyy	f	0	f	f	\N	\N	f	\N	\N	26
\.


--
-- Name: area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.area_id_seq', 18, true);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comment_id_seq', 1, false);


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_id_seq', 26, true);


--
-- Name: company_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_values_id_seq', 27, true);


--
-- Name: department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.department_id_seq', 28, true);


--
-- Name: economic_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.economic_activity_id_seq', 1, false);


--
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 45, true);


--
-- Name: file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.file_id_seq', 24, true);


--
-- Name: goal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.goal_id_seq', 41, true);


--
-- Name: indicator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicator_id_seq', 21, true);


--
-- Name: indicator_measurement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicator_measurement_id_seq', 1, false);


--
-- Name: indicator_schedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicator_schedule_id_seq', 1, false);


--
-- Name: indicator_tendence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicator_tendence_id_seq', 1, false);


--
-- Name: indicator_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicator_type_id_seq', 1, false);


--
-- Name: key_factor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.key_factor_id_seq', 32, true);


--
-- Name: meeting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_id_seq', 1, false);


--
-- Name: meeting_participant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_participant_id_seq', 1, false);


--
-- Name: meeting_task_pending_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_task_pending_id_seq', 1, false);


--
-- Name: module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.module_id_seq', 1, false);


--
-- Name: objective_goal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objective_goal_id_seq', 144, true);


--
-- Name: objective_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objective_id_seq', 24, true);


--
-- Name: objective_indicator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objective_indicator_id_seq', 25, true);


--
-- Name: objective_level_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objective_level_id_seq', 1, false);


--
-- Name: objective_participant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objective_participant_id_seq', 103, true);


--
-- Name: objective_perspective_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objective_perspective_id_seq', 1, false);


--
-- Name: objetive_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.objetive_comment_id_seq', 1, false);


--
-- Name: organizational_level_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organizational_level_id_seq', 4, true);


--
-- Name: parameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parameter_id_seq', 2, true);


--
-- Name: permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permission_id_seq', 1, false);


--
-- Name: permission_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permission_role_id_seq', 1, false);


--
-- Name: position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.position_id_seq', 49, true);


--
-- Name: priority_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.priority_comment_id_seq', 1, false);


--
-- Name: priority_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.priority_id_seq', 1, false);


--
-- Name: priority_participant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.priority_participant_id_seq', 1, false);


--
-- Name: project_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_comment_id_seq', 1, false);


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_id_seq', 1, false);


--
-- Name: reference_origen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reference_origen_id_seq', 3, true);


--
-- Name: reference_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reference_type_id_seq', 4, true);


--
-- Name: reference_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reference_values_id_seq', 405, true);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_id_seq', 6, true);


--
-- Name: role_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_user_id_seq', 5, true);


--
-- Name: sector_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sector_id_seq', 16, true);


--
-- Name: stage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stage_id_seq', 10, true);


--
-- Name: strategic_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strategic_projects_id_seq', 23, true);


--
-- Name: subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscription_id_seq', 1, true);


--
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tag_id_seq', 34, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 5, true);


--
-- Name: indicator_type PK_00e9617aac9ddd1271c16796c09; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator_type
    ADD CONSTRAINT "PK_00e9617aac9ddd1271c16796c09" PRIMARY KEY (id);


--
-- Name: company PK_056f7854a7afdba7cbd6d45fc20; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT "PK_056f7854a7afdba7cbd6d45fc20" PRIMARY KEY (id);


--
-- Name: meeting_participant PK_076322be51eef11585f17a45c66; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_participant
    ADD CONSTRAINT "PK_076322be51eef11585f17a45c66" PRIMARY KEY (id);


--
-- Name: objective_level PK_0995eec48d48162d0b846087360; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_level
    ADD CONSTRAINT "PK_0995eec48d48162d0b846087360" PRIMARY KEY (id);


--
-- Name: comment PK_0b0e4bbc8415ec426f87f3a88e2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "PK_0b0e4bbc8415ec426f87f3a88e2" PRIMARY KEY (id);


--
-- Name: module PK_0e20d657f968b051e674fbe3117; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.module
    ADD CONSTRAINT "PK_0e20d657f968b051e674fbe3117" PRIMARY KEY (id);


--
-- Name: objective PK_1084365b2a588160b31361a252e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective
    ADD CONSTRAINT "PK_1084365b2a588160b31361a252e" PRIMARY KEY (id);


--
-- Name: project_participant PK_149de99a476203f813c3cb43a09; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_participant
    ADD CONSTRAINT "PK_149de99a476203f813c3cb43a09" PRIMARY KEY (id);


--
-- Name: reference_origen PK_1bf358a410253dba583d4b0fcb4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reference_origen
    ADD CONSTRAINT "PK_1bf358a410253dba583d4b0fcb4" PRIMARY KEY (id);


--
-- Name: reference_values PK_23035e79dd480af32857192a609; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reference_values
    ADD CONSTRAINT "PK_23035e79dd480af32857192a609" PRIMARY KEY (id);


--
-- Name: file PK_36b46d232307066b3a2c9ea3a1d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT "PK_36b46d232307066b3a2c9ea3a1d" PRIMARY KEY (id);


--
-- Name: permission_role PK_383892d758d08d346f837d3d8b7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT "PK_383892d758d08d346f837d3d8b7" PRIMARY KEY (id);


--
-- Name: key_factor PK_38c7dd01412cb7604cb294f4730; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key_factor
    ADD CONSTRAINT "PK_38c7dd01412cb7604cb294f4730" PRIMARY KEY (id);


--
-- Name: area PK_39d5e4de490139d6535d75f42ff; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area
    ADD CONSTRAINT "PK_39d5e4de490139d6535d75f42ff" PRIMARY KEY (id);


--
-- Name: permission PK_3b8b97af9d9d8807e41e6f48362; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT "PK_3b8b97af9d9d8807e41e6f48362" PRIMARY KEY (id);


--
-- Name: employee PK_3c2bc72f03fd5abbbc5ac169498; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT "PK_3c2bc72f03fd5abbbc5ac169498" PRIMARY KEY (id);


--
-- Name: priority PK_413921aa4a118e20f361ceba8b4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority
    ADD CONSTRAINT "PK_413921aa4a118e20f361ceba8b4" PRIMARY KEY (id);


--
-- Name: indicator_schedule PK_455ba032b58b001be05a924ca1c; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator_schedule
    ADD CONSTRAINT "PK_455ba032b58b001be05a924ca1c" PRIMARY KEY (id);


--
-- Name: indicator PK_4693fe4c2cb912a71e05c589e7e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator
    ADD CONSTRAINT "PK_4693fe4c2cb912a71e05c589e7e" PRIMARY KEY (id);


--
-- Name: indicator_measurement PK_4bfc2a71f28f3d2b66631349c58; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator_measurement
    ADD CONSTRAINT "PK_4bfc2a71f28f3d2b66631349c58" PRIMARY KEY (id);


--
-- Name: project PK_4d68b1358bb5b766d3e78f32f57; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT "PK_4d68b1358bb5b766d3e78f32f57" PRIMARY KEY (id);


--
-- Name: company_values PK_4ff35dbeceb486f0503b53137e8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_values
    ADD CONSTRAINT "PK_4ff35dbeceb486f0503b53137e8" PRIMARY KEY (id);


--
-- Name: idea PK_5096f543c484b349f5234da9d97; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.idea
    ADD CONSTRAINT "PK_5096f543c484b349f5234da9d97" PRIMARY KEY (id);


--
-- Name: objective_perspective PK_555820aef92a9491b72cc84ab12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_perspective
    ADD CONSTRAINT "PK_555820aef92a9491b72cc84ab12" PRIMARY KEY (id);


--
-- Name: organizational_level PK_5db6df7c9e15343f1c3b9d5d922; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizational_level
    ADD CONSTRAINT "PK_5db6df7c9e15343f1c3b9d5d922" PRIMARY KEY (id);


--
-- Name: sector PK_668b2ea8a2f534425407732f3ab; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sector
    ADD CONSTRAINT "PK_668b2ea8a2f534425407732f3ab" PRIMARY KEY (id);


--
-- Name: objetive_comment PK_829628f13af8997312f94d96070; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objetive_comment
    ADD CONSTRAINT "PK_829628f13af8997312f94d96070" PRIMARY KEY (id);


--
-- Name: goal PK_88c8e2b461b711336c836b1e130; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goal
    ADD CONSTRAINT "PK_88c8e2b461b711336c836b1e130" PRIMARY KEY (id);


--
-- Name: subscription PK_8c3e00ebd02103caa1174cd5d9d; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT "PK_8c3e00ebd02103caa1174cd5d9d" PRIMARY KEY (id);


--
-- Name: tag PK_8e4052373c579afc1471f526760; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT "PK_8e4052373c579afc1471f526760" PRIMARY KEY (id);


--
-- Name: reference_type PK_930978fbb1a57441e2c0cf5bb54; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reference_type
    ADD CONSTRAINT "PK_930978fbb1a57441e2c0cf5bb54" PRIMARY KEY (id);


--
-- Name: priority_participant PK_933f953259c060621a91d016af6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority_participant
    ADD CONSTRAINT "PK_933f953259c060621a91d016af6" PRIMARY KEY (id);


--
-- Name: department PK_9a2213262c1593bffb581e382f5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT "PK_9a2213262c1593bffb581e382f5" PRIMARY KEY (id);


--
-- Name: role PK_b36bcfe02fc8de3c57a8b2391c2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT "PK_b36bcfe02fc8de3c57a8b2391c2" PRIMARY KEY (id);


--
-- Name: position PK_b7f483581562b4dc62ae1a5b7e2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT "PK_b7f483581562b4dc62ae1a5b7e2" PRIMARY KEY (id);


--
-- Name: objective_participant PK_b7f8d12f75bf8840b969e8b7d03; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_participant
    ADD CONSTRAINT "PK_b7f8d12f75bf8840b969e8b7d03" PRIMARY KEY (id);


--
-- Name: priority_comment PK_b843baf52cbd667cfb1b97ae380; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority_comment
    ADD CONSTRAINT "PK_b843baf52cbd667cfb1b97ae380" PRIMARY KEY (id);


--
-- Name: economic_activity PK_bf93fe2768dbad0d84748d78dbb; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economic_activity
    ADD CONSTRAINT "PK_bf93fe2768dbad0d84748d78dbb" PRIMARY KEY (id);


--
-- Name: project_comment PK_c2b88e7d1046da2d5c06a50da12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_comment
    ADD CONSTRAINT "PK_c2b88e7d1046da2d5c06a50da12" PRIMARY KEY (id);


--
-- Name: stage PK_c54d11b3c24a188262844af1612; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stage
    ADD CONSTRAINT "PK_c54d11b3c24a188262844af1612" PRIMARY KEY (id);


--
-- Name: objective_goal PK_c5961767dd7e867eb1f760e9b15; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_goal
    ADD CONSTRAINT "PK_c5961767dd7e867eb1f760e9b15" PRIMARY KEY (id);


--
-- Name: meeting_task_pending PK_c5a3c34caf99b654fea5b917a3a; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_task_pending
    ADD CONSTRAINT "PK_c5a3c34caf99b654fea5b917a3a" PRIMARY KEY (id);


--
-- Name: strategic_projects PK_c71a2138d923db3595854c20942; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strategic_projects
    ADD CONSTRAINT "PK_c71a2138d923db3595854c20942" PRIMARY KEY (id);


--
-- Name: objective_indicator PK_c77d8e13fecd8131fee6fe79e72; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_indicator
    ADD CONSTRAINT "PK_c77d8e13fecd8131fee6fe79e72" PRIMARY KEY (id);


--
-- Name: indicator_tendence PK_c8298043384aca2659048715ba1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator_tendence
    ADD CONSTRAINT "PK_c8298043384aca2659048715ba1" PRIMARY KEY (id);


--
-- Name: user PK_cace4a159ff9f2512dd42373760; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);


--
-- Name: parameter PK_cc5c047040f9c69f0e0d6a844a0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT "PK_cc5c047040f9c69f0e0d6a844a0" PRIMARY KEY (id);


--
-- Name: meeting PK_dccaf9e4c0e39067d82ccc7bb83; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting
    ADD CONSTRAINT "PK_dccaf9e4c0e39067d82ccc7bb83" PRIMARY KEY (id);


--
-- Name: role_user PK_e3583d40265174efd29754a7c57; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "PK_e3583d40265174efd29754a7c57" PRIMARY KEY (id);


--
-- Name: priority_participant REL_5f9dc0cd26f61f2850bf9182ad; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority_participant
    ADD CONSTRAINT "REL_5f9dc0cd26f61f2850bf9182ad" UNIQUE ("priorityId");


--
-- Name: meeting_participant REL_72b595bfd7e389da4b639fee74; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_participant
    ADD CONSTRAINT "REL_72b595bfd7e389da4b639fee74" UNIQUE ("meetingId");


--
-- Name: meeting_task_pending REL_965b7b861b00e1da69f54ffd4c; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_task_pending
    ADD CONSTRAINT "REL_965b7b861b00e1da69f54ffd4c" UNIQUE ("meetingId");


--
-- Name: project_participant REL_ccfc0ce731cbb9d6d97a5503a3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_participant
    ADD CONSTRAINT "REL_ccfc0ce731cbb9d6d97a5503a3" UNIQUE ("projectId");


--
-- Name: objective FK_0262b8b2eb3912ceac811df6bab; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective
    ADD CONSTRAINT "FK_0262b8b2eb3912ceac811df6bab" FOREIGN KEY ("employeeId") REFERENCES public.employee(id);


--
-- Name: objective_indicator FK_0abad4ef27236f399e2bc20bd10; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_indicator
    ADD CONSTRAINT "FK_0abad4ef27236f399e2bc20bd10" FOREIGN KEY ("indicatorId") REFERENCES public.indicator(id);


--
-- Name: stage FK_13cebf70440c73ef5ec92f456ed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stage
    ADD CONSTRAINT "FK_13cebf70440c73ef5ec92f456ed" FOREIGN KEY ("companyId") REFERENCES public.company(id) ON DELETE CASCADE;


--
-- Name: permission_role FK_1886001bdced4ea977b9f1b97c1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT "FK_1886001bdced4ea977b9f1b97c1" FOREIGN KEY ("permissionId") REFERENCES public.permission(id) ON DELETE CASCADE;


--
-- Name: permission FK_18f3ac6d3f1e3e6b5e3f8123289; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission
    ADD CONSTRAINT "FK_18f3ac6d3f1e3e6b5e3f8123289" FOREIGN KEY ("moduleId") REFERENCES public.module(id);


--
-- Name: permission_role FK_1dd59c61aec4fc206bc43a31153; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT "FK_1dd59c61aec4fc206bc43a31153" FOREIGN KEY ("roleId") REFERENCES public.role(id) ON DELETE CASCADE;


--
-- Name: objetive_comment FK_20676419e233c4b8d32b5f4264d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objetive_comment
    ADD CONSTRAINT "FK_20676419e233c4b8d32b5f4264d" FOREIGN KEY ("objectiveId") REFERENCES public.objective(id);


--
-- Name: indicator FK_24e3ca3c7708b917c554751c5ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator
    ADD CONSTRAINT "FK_24e3ca3c7708b917c554751c5ce" FOREIGN KEY ("indicatorTendenceId") REFERENCES public.indicator_tendence(id);


--
-- Name: role_user FK_2a23ceb75c7511d0523c4aaf492; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "FK_2a23ceb75c7511d0523c4aaf492" FOREIGN KEY ("userId") REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: objective FK_3136e7e32fe3eee15a0f849c773; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective
    ADD CONSTRAINT "FK_3136e7e32fe3eee15a0f849c773" FOREIGN KEY ("stageId") REFERENCES public.stage(id);


--
-- Name: goal FK_326e1fb9b09dd161b0c0d3e020c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goal
    ADD CONSTRAINT "FK_326e1fb9b09dd161b0c0d3e020c" FOREIGN KEY ("stageId") REFERENCES public.stage(id) ON DELETE CASCADE;


--
-- Name: indicator FK_33118814bc7ca39eaf5e38bf09e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator
    ADD CONSTRAINT "FK_33118814bc7ca39eaf5e38bf09e" FOREIGN KEY ("indicatorMeasurementId") REFERENCES public.indicator_measurement(id);


--
-- Name: objective FK_36d4326f614e7ec7c2dcec03e1c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective
    ADD CONSTRAINT "FK_36d4326f614e7ec7c2dcec03e1c" FOREIGN KEY ("ObjectivePerspectiveId") REFERENCES public.objective_perspective(id);


--
-- Name: position FK_3b4d015f23c3cf9884fdff2f3f3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT "FK_3b4d015f23c3cf9884fdff2f3f3" FOREIGN KEY ("organizationalLevelId") REFERENCES public.organizational_level(id);


--
-- Name: objective_goal FK_422c474391da60646dd39b55a97; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_goal
    ADD CONSTRAINT "FK_422c474391da60646dd39b55a97" FOREIGN KEY ("objectiveIndicatorId") REFERENCES public.objective_indicator(id);


--
-- Name: indicator FK_4e668bf36f82aa1800267f0e47c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator
    ADD CONSTRAINT "FK_4e668bf36f82aa1800267f0e47c" FOREIGN KEY ("indicatorScheduleId") REFERENCES public.indicator_schedule(id);


--
-- Name: priority FK_4f491c6596785d5ced616ea6967; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority
    ADD CONSTRAINT "FK_4f491c6596785d5ced616ea6967" FOREIGN KEY ("stageId") REFERENCES public.stage(id) ON DELETE CASCADE;


--
-- Name: indicator FK_56c8d398d389121b3708e3961b8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator
    ADD CONSTRAINT "FK_56c8d398d389121b3708e3961b8" FOREIGN KEY ("companyId") REFERENCES public.company(id);


--
-- Name: priority_comment FK_5c9a70b3def34f90ab5996d1d61; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority_comment
    ADD CONSTRAINT "FK_5c9a70b3def34f90ab5996d1d61" FOREIGN KEY ("priorityId") REFERENCES public.priority(id);


--
-- Name: position FK_5e10c32062c64bc526d8c2e6a2e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."position"
    ADD CONSTRAINT "FK_5e10c32062c64bc526d8c2e6a2e" FOREIGN KEY ("stageId") REFERENCES public.stage(id);


--
-- Name: priority_participant FK_5f9dc0cd26f61f2850bf9182adf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority_participant
    ADD CONSTRAINT "FK_5f9dc0cd26f61f2850bf9182adf" FOREIGN KEY ("priorityId") REFERENCES public.priority(id);


--
-- Name: objective FK_6738a2f374e5156d53eaf8a7f9d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective
    ADD CONSTRAINT "FK_6738a2f374e5156d53eaf8a7f9d" FOREIGN KEY ("ObjectiveLevelId") REFERENCES public.objective_level(id);


--
-- Name: meeting_participant FK_72b595bfd7e389da4b639fee743; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_participant
    ADD CONSTRAINT "FK_72b595bfd7e389da4b639fee743" FOREIGN KEY ("meetingId") REFERENCES public.meeting(id);


--
-- Name: key_factor FK_73ef4ae0b8f26c1a9dbda6a5b53; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key_factor
    ADD CONSTRAINT "FK_73ef4ae0b8f26c1a9dbda6a5b53" FOREIGN KEY ("stageId") REFERENCES public.stage(id) ON DELETE CASCADE;


--
-- Name: project FK_770a75f9c7df789e59e4ae3e5fc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT "FK_770a75f9c7df789e59e4ae3e5fc" FOREIGN KEY ("stageId") REFERENCES public.stage(id) ON DELETE CASCADE;


--
-- Name: company FK_868d9aa47f5a6134571f56ab8c6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT "FK_868d9aa47f5a6134571f56ab8c6" FOREIGN KEY ("sectorId") REFERENCES public.sector(id);


--
-- Name: role_user FK_89e55dae19555d0d5fe8602b281; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT "FK_89e55dae19555d0d5fe8602b281" FOREIGN KEY ("roleId") REFERENCES public.role(id) ON DELETE CASCADE;


--
-- Name: parameter FK_8ddb853749fe3b63655142a39c5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT "FK_8ddb853749fe3b63655142a39c5" FOREIGN KEY ("companyId") REFERENCES public.company(id) ON DELETE CASCADE;


--
-- Name: reference_values FK_8ddc86a7692c42d8be1e3d46985; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reference_values
    ADD CONSTRAINT "FK_8ddc86a7692c42d8be1e3d46985" FOREIGN KEY ("referenceTypeId") REFERENCES public.reference_type(id);


--
-- Name: meeting_task_pending FK_965b7b861b00e1da69f54ffd4c9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_task_pending
    ADD CONSTRAINT "FK_965b7b861b00e1da69f54ffd4c9" FOREIGN KEY ("meetingId") REFERENCES public.meeting(id);


--
-- Name: reference_values FK_9caf4e06579205312e3d05a9663; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reference_values
    ADD CONSTRAINT "FK_9caf4e06579205312e3d05a9663" FOREIGN KEY ("referenceOrigenId") REFERENCES public.reference_origen(id);


--
-- Name: project_comment FK_ae5e74e5b3b22980720060c1a41; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_comment
    ADD CONSTRAINT "FK_ae5e74e5b3b22980720060c1a41" FOREIGN KEY ("projectId") REFERENCES public.project(id);


--
-- Name: company FK_b20b244646b9fcc3ad0d50032b3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT "FK_b20b244646b9fcc3ad0d50032b3" FOREIGN KEY ("subscriptionId") REFERENCES public.subscription(id);


--
-- Name: comment FK_b37be3d722ecb68977181615d8a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "FK_b37be3d722ecb68977181615d8a" FOREIGN KEY ("referenceOrigenId") REFERENCES public.reference_origen(id);


--
-- Name: strategic_projects FK_b4190ec7bdb1672f94351a2d58b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strategic_projects
    ADD CONSTRAINT "FK_b4190ec7bdb1672f94351a2d58b" FOREIGN KEY ("stageId") REFERENCES public.stage(id) ON DELETE CASCADE;


--
-- Name: area FK_bd31d07172e3b7b734cdb1c3a96; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area
    ADD CONSTRAINT "FK_bd31d07172e3b7b734cdb1c3a96" FOREIGN KEY ("stageId") REFERENCES public.stage(id);


--
-- Name: project_participant FK_ccfc0ce731cbb9d6d97a5503a35; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_participant
    ADD CONSTRAINT "FK_ccfc0ce731cbb9d6d97a5503a35" FOREIGN KEY ("projectId") REFERENCES public.project(id);


--
-- Name: objective_indicator FK_cfeecb49ad4440f0da1f07cadc3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_indicator
    ADD CONSTRAINT "FK_cfeecb49ad4440f0da1f07cadc3" FOREIGN KEY ("objectiveId") REFERENCES public.objective(id);


--
-- Name: meeting FK_d0e0a872d2f92529bcfebc35f79; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting
    ADD CONSTRAINT "FK_d0e0a872d2f92529bcfebc35f79" FOREIGN KEY ("stageId") REFERENCES public.stage(id) ON DELETE CASCADE;


--
-- Name: company FK_dbe0adfe2ea0289d3b54a921dc5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT "FK_dbe0adfe2ea0289d3b54a921dc5" FOREIGN KEY ("economicActivityEntityId") REFERENCES public.economic_activity(id);


--
-- Name: objective_participant FK_e0dce24dd10a95e39b00507810e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objective_participant
    ADD CONSTRAINT "FK_e0dce24dd10a95e39b00507810e" FOREIGN KEY ("ObjectiveId") REFERENCES public.objective(id);


--
-- Name: indicator FK_eaf96cb4f8e4ed912d7d7651cf7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicator
    ADD CONSTRAINT "FK_eaf96cb4f8e4ed912d7d7651cf7" FOREIGN KEY ("indicatorTypeId") REFERENCES public.indicator_type(id);


--
-- Name: employee FK_f4b0d329c4a3cf79ffe9d565047; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT "FK_f4b0d329c4a3cf79ffe9d565047" FOREIGN KEY ("userId") REFERENCES public."user"(id);


--
-- Name: department FK_f8736c2b058be4e89add8ab2a6b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT "FK_f8736c2b058be4e89add8ab2a6b" FOREIGN KEY ("stageId") REFERENCES public.stage(id);


--
-- Name: comment FK_fc08ee13fa1fa10e459e58d0061; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "FK_fc08ee13fa1fa10e459e58d0061" FOREIGN KEY ("referenceTypeId") REFERENCES public.reference_type(id);


--
-- Name: company_values FK_fcccf3fe4583ca87b8b82777f3f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_values
    ADD CONSTRAINT "FK_fcccf3fe4583ca87b8b82777f3f" FOREIGN KEY ("stageId") REFERENCES public.stage(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

