--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5
-- Dumped by pg_dump version 13.5

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
-- Name: dmi_adp_all_current_positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_all_current_positions (
    id integer NOT NULL,
    customer_id character varying(50),
    current_level character varying(50),
    current_user_email_id character varying(200),
    current_status character varying(50),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.dmi_adp_all_current_positions OWNER TO postgres;

--
-- Name: dmi_adp_allocations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_allocations (
    id integer NOT NULL,
    customer_id character varying(50),
    level_1 character varying(200),
    level_2 character varying(200),
    level_3 character varying(200),
    current_level character varying(200),
    created timestamp without time zone,
    modified timestamp without time zone,
    ro_scheduled_date character varying(50),
    io_scheduled_date character varying(50),
    level_4_ro character varying(200),
    level_4_mo character varying(200),
    io_sched_date_comment character varying(500)
);


ALTER TABLE public.dmi_adp_allocations OWNER TO postgres;

--
-- Name: dmi_adp_ama_approved_applications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_ama_approved_applications (
    id integer NOT NULL,
    customer_id character varying(50),
    user_email_id character varying(200),
    user_once_no character varying(50),
    status character varying(50),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.dmi_adp_ama_approved_applications OWNER TO postgres;

--
-- Name: dmi_adp_ama_approved_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_adp_ama_approved_applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_adp_ama_approved_applications_id_seq OWNER TO postgres;

--
-- Name: dmi_adp_ama_approved_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_adp_ama_approved_applications_id_seq OWNED BY public.dmi_adp_ama_approved_applications.id;





--
-- Name: dmi_adp_esigned_statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_esigned_statuses (
    id integer NOT NULL,
    customer_id character varying(50),
    application_esigned character varying(10),
    report_esigned character varying(10),
    certificate_esigned character varying(10),
    application_type character varying(10),
    application_status character varying(100),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.dmi_adp_esigned_statuses OWNER TO postgres;

--
-- Name: dmi_adp_final_reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_final_reports (
    id integer NOT NULL,
    customer_id character varying(50),
    status character varying(50),
    current_level character varying(50),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.dmi_adp_final_reports OWNER TO postgres;

--
-- Name:dmi_adp_final_submits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_final_submits (
    id integer NOT NULL,
    customer_id character varying(50),
    status character varying(50),
    created timestamp without time zone,
    modified timestamp without time zone,
    current_level character varying(200)
);


ALTER TABLE public.dmi_adp_final_submits OWNER TO postgres;

--
-- Name: dmi_adp_grant_certificate_pdfs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_grant_certificate_pdfs (
    id integer NOT NULL,
    customer_id character varying(50),
    user_email_id character varying(200),
    user_once_no character varying(50),
    pdf_file character varying(200),
    date timestamp without time zone,
    pdf_version character varying(10),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.dmi_adp_grant_certificate_pdfs OWNER TO postgres;

--
-- Name: dmi_adp_ho_allocations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_ho_allocations (
    customer_id character varying(50),
    dy_ama character varying(200),
    ho_mo_smo character varying(200),
    jt_ama character varying(200),
    ama character varying(200),
    current_level character varying(200),
    created timestamp without time zone,
    modified timestamp without time zone,
    id integer NOT NULL
);


ALTER TABLE public.dmi_adp_ho_allocations OWNER TO postgres;

--
-- Name: dmi_adp_ho_allocations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_adp_ho_allocations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_adp_ho_allocations_id_seq OWNER TO postgres;

--
-- Name: dmi_adp_ho_allocations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_adp_ho_allocations_id_seq OWNED BY public.dmi_adp_ho_allocations.id;


--
-- Name: dmi_adp_ho_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_ho_comments (
    id integer NOT NULL,
    customer_id character varying(50),
    comment_by character varying(200),
    comment_to character varying(200),
    comment_date timestamp without time zone,
    comment text,
    created timestamp without time zone,
    modified timestamp without time zone,
    from_user character varying(20),
    to_user character varying(20)
);


ALTER TABLE public.dmi_adp_ho_comments OWNER TO postgres;

--
-- Name: dmi_adp_ho_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_adp_ho_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_adp_ho_comments_id_seq OWNER TO postgres;

--
-- Name: dmi_adp_ho_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_adp_ho_comments_id_seq OWNED BY public.dmi_adp_ho_comments.id;


--
-- Name: dmi_adp_level4_ro_approved_appls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_level4_ro_approved_appls (
    id integer NOT NULL,
    customer_id character varying(100),
    user_email_id character varying(200),
    status character varying(100),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.dmi_adp_level4_ro_approved_appls OWNER TO postgres;

--
-- Name: dmi_adp_level4_ro_approved_appls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_adp_level4_ro_approved_appls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_adp_level4_ro_approved_appls_id_seq OWNER TO postgres;

--
-- Name: dmi_adp_level4_ro_approved_appls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_adp_level4_ro_approved_appls_id_seq OWNED BY public.dmi_adp_level4_ro_approved_appls.id;


--
-- Name: dmi_adp_mo_ro_comments_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_mo_ro_comments_details (
    id integer NOT NULL,
    customer_id character varying(50),
    comment_by character varying(200),
    comment_to character varying(200),
    comment_date timestamp without time zone,
    comment text,
    created timestamp without time zone,
    modified timestamp without time zone,
    available_to character varying(10)
);


ALTER TABLE public.dmi_adp_mo_ro_comments_details OWNER TO postgres;

--
-- Name: dmi_adp_pdf_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_pdf_records (
    id integer NOT NULL,
    customer_id character varying(50),
    pdf_file character varying(200),
    created timestamp without time zone,
    modified timestamp without time zone,
    date timestamp without time zone,
    pdf_version character varying(10)
);


ALTER TABLE public.dmi_adp_pdf_records OWNER TO postgres;

--
-- Name: dmi_adp_report_pdf_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_report_pdf_records (
    id integer NOT NULL,
    customer_id character varying(50),
    pdf_file character varying(200),
    date timestamp without time zone,
    pdf_version character varying(10),
    created timestamp without time zone,
    modified timestamp without time zone
);


ALTER TABLE public.dmi_adp_report_pdf_records OWNER TO postgres;

--
-- Name: dmi_adp_ro_so_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dmi_adp_ro_so_comments (
    id integer NOT NULL,
    customer_id character varying(50),
    comment_by character varying(200),
    comment_to character varying(200),
    comment_date timestamp without time zone,
    comment text,
    created timestamp without time zone,
    modified timestamp without time zone,
    from_user character varying(20),
    to_user character varying(20)
);


ALTER TABLE public.dmi_adp_ro_so_comments OWNER TO postgres;

--
-- Name: dmi_15_digit_all_current_positions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_15_digit_all_current_positions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_15_digit_all_current_positions_id_seq OWNER TO postgres;

--
-- Name: dmi_15_digit_all_current_positions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_15_digit_all_current_positions_id_seq OWNED BY public.dmi_adp_all_current_positions.id;


--
-- Name: dmi_15_digit_allocations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_15_digit_allocations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_15_digit_allocations_id_seq OWNER TO postgres;

--
-- Name: dmi_15_digit_allocations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_15_digit_allocations_id_seq OWNED BY public.dmi_adp_allocations.id;


--
-- Name: dmi_adp_esigned_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_adp_esigned_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_adp_esigned_statuses_id_seq OWNER TO postgres;

--
-- Name: dmi_adp_esigned_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_adp_esigned_statuses_id_seq OWNED BY public.dmi_adp_esigned_statuses.id;


--
-- Name: dmi_15_digit_final_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_15_digit_final_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_15_digit_final_reports_id_seq OWNER TO postgres;

--
-- Name: dmi_15_digit_final_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_15_digit_final_reports_id_seq OWNED BY public.dmi_adp_final_reports.id;


--
-- Name: dmi_adp_final_submits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_adp_final_submits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_adp_final_submits_id_seq OWNER TO postgres;

--
-- Name: dmi_adp_final_submits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_adp_final_submits_id_seq OWNED BY public.dmi_adp_final_submits.id;


--
-- Name: dmi_15_digit_grant_certificate_pdfs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_15_digit_grant_certificate_pdfs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_15_digit_grant_certificate_pdfs_id_seq OWNER TO postgres;

--
-- Name: dmi_15_digit_grant_certificate_pdfs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_15_digit_grant_certificate_pdfs_id_seq OWNED BY public.dmi_adp_grant_certificate_pdfs.id;


--
-- Name: dmi_15_digit_mo_ro_comments_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_15_digit_mo_ro_comments_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_15_digit_mo_ro_comments_details_id_seq OWNER TO postgres;

--
-- Name: dmi_15_digit_mo_ro_comments_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_15_digit_mo_ro_comments_details_id_seq OWNED BY public.dmi_adp_mo_ro_comments_details.id;


--
-- Name: dmi_15_digit_pdf_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_15_digit_pdf_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_15_digit_pdf_records_id_seq OWNER TO postgres;

--
-- Name: dmi_15_digit_pdf_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_15_digit_pdf_records_id_seq OWNED BY public.dmi_adp_pdf_records.id;


--
-- Name: dmi_15_digit_report_pdf_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_15_digit_report_pdf_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_15_digit_report_pdf_records_id_seq OWNER TO postgres;

--
-- Name: dmi_15_digit_report_pdf_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_15_digit_report_pdf_records_id_seq OWNED BY public.dmi_adp_report_pdf_records.id;


--
-- Name: dmi_15_digit_ro_so_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dmi_15_digit_ro_so_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dmi_15_digit_ro_so_comments_id_seq OWNER TO postgres;

--
-- Name: dmi_15_digit_ro_so_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dmi_15_digit_ro_so_comments_id_seq OWNED BY public.dmi_adp_ro_so_comments.id;


--
-- Name: dmi_adp_all_current_positions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_all_current_positions ALTER COLUMN id SET DEFAULT nextval('public.dmi_15_digit_all_current_positions_id_seq'::regclass);


--
-- Name: dmi_adp_allocations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_allocations ALTER COLUMN id SET DEFAULT nextval('public.dmi_15_digit_allocations_id_seq'::regclass);


--
-- Name: dmi_adp_ama_approved_applications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_ama_approved_applications ALTER COLUMN id SET DEFAULT nextval('public.dmi_adp_ama_approved_applications_id_seq'::regclass);

--
-- Name: dmi_adp_esigned_statuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_esigned_statuses ALTER COLUMN id SET DEFAULT nextval('public.dmi_adp_esigned_statuses_id_seq'::regclass);


--
-- Name: dmi_adp_final_reports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_final_reports ALTER COLUMN id SET DEFAULT nextval('public.dmi_15_digit_final_reports_id_seq'::regclass);


--
-- Name:dmi_adp_final_submits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_final_submits ALTER COLUMN id SET DEFAULT nextval('public.dmi_adp_final_submits_id_seq'::regclass);


--
-- Name: dmi_adp_grant_certificate_pdfs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_grant_certificate_pdfs ALTER COLUMN id SET DEFAULT nextval('public.dmi_15_digit_grant_certificate_pdfs_id_seq'::regclass);


--
-- Name: dmi_adp_ho_allocations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_ho_allocations ALTER COLUMN id SET DEFAULT nextval('public.dmi_adp_ho_allocations_id_seq'::regclass);


--
-- Name: dmi_adp_ho_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_ho_comments ALTER COLUMN id SET DEFAULT nextval('public.dmi_adp_ho_comments_id_seq'::regclass);


--
-- Name: dmi_adp_level4_ro_approved_appls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_level4_ro_approved_appls ALTER COLUMN id SET DEFAULT nextval('public.dmi_adp_level4_ro_approved_appls_id_seq'::regclass);


--
-- Name: dmi_adp_mo_ro_comments_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_mo_ro_comments_details ALTER COLUMN id SET DEFAULT nextval('public.dmi_15_digit_mo_ro_comments_details_id_seq'::regclass);

--
-- Name: dmi_adp_pdf_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_pdf_records ALTER COLUMN id SET DEFAULT nextval('public.dmi_15_digit_pdf_records_id_seq'::regclass);


--
-- Name: dmi_adp_report_pdf_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_report_pdf_records ALTER COLUMN id SET DEFAULT nextval('public.dmi_15_digit_report_pdf_records_id_seq'::regclass);


--
-- Name: dmi_adp_ro_so_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_ro_so_comments ALTER COLUMN id SET DEFAULT nextval('public.dmi_15_digit_ro_so_comments_id_seq'::regclass);

--
-- Name: dmi_adp_all_current_positions dmi_adp_all_current_positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_all_current_positions
    ADD CONSTRAINT dmi_adp_all_current_positions_pkey PRIMARY KEY (id);


--
-- Name: dmi_adp_allocations dmi_adp_allocations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_allocations
    ADD CONSTRAINT dmi_adp_allocations_pkey PRIMARY KEY (id);


--
-- Name: dmi_adp_ama_approved_applications dmi_adp_ama_approved_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_ama_approved_applications
    ADD CONSTRAINT dmi_adp_ama_approved_applications_pkey PRIMARY KEY (id);

--
-- Name: dmi_adp_esigned_statuses dmi_adp_esigned_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_esigned_statuses
    ADD CONSTRAINT dmi_adp_esigned_statuses_pkey PRIMARY KEY (id);


--
-- Name: dmi_adp_final_reports dmi_adp_final_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_final_reports
    ADD CONSTRAINT dmi_adp_final_reports_pkey PRIMARY KEY (id);


--
-- Name:dmi_adp_final_submits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_final_submits
    ADD CONSTRAINT dmi_adp_final_submits_pkey PRIMARY KEY (id);


--
-- Name: dmi_adp_grant_certificate_pdfs dmi_adp_grant_certificate_pdfs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_grant_certificate_pdfs
    ADD CONSTRAINT dmi_adp_grant_certificate_pdfs_pkey PRIMARY KEY (id);


--
-- Name: dmi_adp_ho_allocations dmi_adp_ho_allocations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_ho_allocations
    ADD CONSTRAINT dmi_adp_ho_allocations_pkey PRIMARY KEY (id);


--
-- Name: dmi_adp_ho_comments dmi_adp_ho_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_ho_comments
    ADD CONSTRAINT dmi_adp_ho_comments_pkey PRIMARY KEY (id);


--
-- Name: dmi_adp_mo_ro_comments_details dmi_adp_mo_ro_comments_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_mo_ro_comments_details
    ADD CONSTRAINT dmi_adp_mo_ro_comments_details_pkey PRIMARY KEY (id);




--
-- Name: dmi_adp_pdf_records dmi_adp_pdf_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_pdf_records
    ADD CONSTRAINT dmi_adp_pdf_records_pkey PRIMARY KEY (id);


--
-- Name: dmi_adp_report_pdf_records dmi_adp_report_pdf_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_report_pdf_records
    ADD CONSTRAINT dmi_adp_report_pdf_records_pkey PRIMARY KEY (id);


--
-- Name: dmi_adp_ro_so_comments dmi_adp_ro_so_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dmi_adp_ro_so_comments
    ADD CONSTRAINT dmi_adp_ro_so_comments_pkey PRIMARY KEY (id);


--
-- Name: ind_alloc_current_level_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_alloc_current_level_4 ON public.dmi_adp_allocations USING btree (current_level);


--
-- Name: ind_alloc_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_alloc_customer_id_4 ON public.dmi_adp_allocations USING btree (customer_id);


--
-- Name: ind_alloc_level_1_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_alloc_level_1_4 ON public.dmi_adp_allocations USING btree (level_1);


--
-- Name: ind_alloc_level_2_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_alloc_level_2_4 ON public.dmi_adp_allocations USING btree (level_2);


--
-- Name: ind_alloc_level_3_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_alloc_level_3_4 ON public.dmi_adp_allocations USING btree (level_3);


--
-- Name: ind_amaappr_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_amaappr_customer_id_4 ON public.dmi_adp_ama_approved_applications USING btree (customer_id);


--
-- Name: ind_amaappr_user_email_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_amaappr_user_email_id_4 ON public.dmi_adp_ama_approved_applications USING btree (user_email_id);


--
-- Name: ind_apppdf_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_apppdf_4 ON public.dmi_adp_pdf_records USING btree (pdf_version);


--
-- Name: ind_apppdf_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_apppdf_customer_id_4 ON public.dmi_adp_pdf_records USING btree (customer_id);


--
-- Name: ind_curpos_current_level_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_curpos_current_level_4 ON public.dmi_adp_all_current_positions USING btree (current_level);


--
-- Name: ind_curpos_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_curpos_customer_id_4 ON public.dmi_adp_all_current_positions USING btree (customer_id);


--
-- Name: ind_curpos_user_email_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_curpos_user_email_id_4 ON public.dmi_adp_all_current_positions USING btree (current_user_email_id);


--
-- Name: ind_customer_id_12; Type: INDEX; Schema: public; Owner: postgres
--



--
-- Name: ind_esignsta_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_esignsta_customer_id_4 ON public.dmi_adp_esigned_statuses USING btree (customer_id);


--
-- Name: ind_finrep_current_level_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_finrep_current_level_4 ON public.dmi_adp_final_reports USING btree (current_level);


--
-- Name: ind_finrep_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_finrep_customer_id_4 ON public.dmi_adp_final_reports USING btree (customer_id);


--
-- Name: ind_finrep_status_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_finrep_status_4 ON public.dmi_adp_final_reports USING btree (status);


--
-- Name: ind_finsub_current_level_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_finsub_current_level_4 ON public.dmi_adp_final_submits USING btree (current_level);


--
-- Name: ind_finsub_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_finsub_customer_id_4 ON public.dmi_adp_final_submits USING btree (customer_id);


--
-- Name: ind_finsub_status_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_finsub_status_4 ON public.dmi_adp_final_submits USING btree (status);


--
-- Name: ind_form_status_12; Type: INDEX; Schema: public; Owner: postgres
--



--
-- Name: ind_grant_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_grant_customer_id_4 ON public.dmi_adp_grant_certificate_pdfs USING btree (customer_id);


--
-- Name: ind_grant_user_email_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_grant_user_email_id_4 ON public.dmi_adp_grant_certificate_pdfs USING btree (user_email_id);


--
-- Name: ind_hoalloc_ama_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_hoalloc_ama_4 ON public.dmi_adp_ho_allocations USING btree (ama);


--
-- Name: ind_hoalloc_current_level_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_hoalloc_current_level_4 ON public.dmi_adp_ho_allocations USING btree (current_level);


--
-- Name: ind_hoalloc_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_hoalloc_customer_id_4 ON public.dmi_adp_ho_allocations USING btree (customer_id);


--
-- Name: ind_hoalloc_dyama_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_hoalloc_dyama_4 ON public.dmi_adp_ho_allocations USING btree (dy_ama);


--
-- Name: ind_hoalloc_jtama_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_hoalloc_jtama_4 ON public.dmi_adp_ho_allocations USING btree (jt_ama);


--
-- Name: ind_hocomm_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_hocomm_customer_id_4 ON public.dmi_adp_ho_comments USING btree (customer_id);


--
-- Name: ind_hocomm_from_user_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_hocomm_from_user_4 ON public.dmi_adp_ho_comments USING btree (from_user);


--
-- Name: ind_hocomm_to_user_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_hocomm_to_user_4 ON public.dmi_adp_ho_comments USING btree (to_user);


--
-- Name: ind_mocomm_comment_by_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_mocomm_comment_by_4 ON public.dmi_adp_mo_ro_comments_details USING btree (comment_by);


--
-- Name: ind_mocomm_comment_to_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_mocomm_comment_to_4 ON public.dmi_adp_mo_ro_comments_details USING btree (comment_to);


--
-- Name: ind_mocomm_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_mocomm_customer_id_4 ON public.dmi_adp_mo_ro_comments_details USING btree (customer_id);


--
-- Name: ind_paysta_confirm_4; Type: INDEX; Schema: public; Owner: postgres
--



--
-- Name: ind_reppdf_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_reppdf_4 ON public.dmi_adp_report_pdf_records USING btree (pdf_version);


--
-- Name: ind_reppdf_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_reppdf_customer_id_4 ON public.dmi_adp_report_pdf_records USING btree (customer_id);


--
-- Name: ind_roappr_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_roappr_customer_id_4 ON public.dmi_adp_level4_ro_approved_appls USING btree (customer_id);


--
-- Name: ind_roappr_user_email_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_roappr_user_email_id_4 ON public.dmi_adp_level4_ro_approved_appls USING btree (user_email_id);


--
-- Name: ind_roso_customer_id_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_roso_customer_id_4 ON public.dmi_adp_ro_so_comments USING btree (customer_id);


--
-- Name: ind_roso_from_user_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_roso_from_user_4 ON public.dmi_adp_ro_so_comments USING btree (from_user);


--
-- Name: ind_roso_to_user_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ind_roso_to_user_4 ON public.dmi_adp_ro_so_comments USING btree (to_user);


--
-- Name: ind_user_email_id_12; Type: INDEX; Schema: public; Owner: postgres
--

--
-- PostgreSQL database dump complete
--

