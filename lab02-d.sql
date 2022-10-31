--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    lname character varying(50) NOT NULL,
    fname character varying(50) NOT NULL,
    mname character varying(50)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO postgres;

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: installs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installs (
    pc_id integer NOT NULL,
    soft_id integer NOT NULL
);


ALTER TABLE public.installs OWNER TO postgres;

--
-- Name: pcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs (
    id integer NOT NULL,
    room_id integer NOT NULL,
    note character varying(120),
    ip_addr character varying(15) NOT NULL,
    mac_addr character varying(17) NOT NULL
);


ALTER TABLE public.pcs OWNER TO postgres;

--
-- Name: pcs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pcs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pcs_id_seq OWNER TO postgres;

--
-- Name: pcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pcs_id_seq OWNED BY public.pcs.id;


--
-- Name: pcs_to_switches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs_to_switches (
    id_sw integer NOT NULL,
    id_pc integer NOT NULL
);


ALTER TABLE public.pcs_to_switches OWNER TO postgres;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    num character varying(3) NOT NULL,
    emp_id integer NOT NULL
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_id_seq OWNER TO postgres;

--
-- Name: rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;


--
-- Name: soft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soft (
    id integer NOT NULL,
    sname character varying(30) NOT NULL,
    ver character varying(5) NOT NULL,
    quant integer NOT NULL,
    CONSTRAINT soft_quant_check CHECK ((quant < 3000))
);


ALTER TABLE public.soft OWNER TO postgres;

--
-- Name: soft_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.soft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.soft_id_seq OWNER TO postgres;

--
-- Name: soft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.soft_id_seq OWNED BY public.soft.id;


--
-- Name: switches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.switches (
    id integer NOT NULL,
    model_name character varying(50) NOT NULL,
    quant_ports integer NOT NULL,
    serial_number character varying(50) NOT NULL,
    CONSTRAINT switches_quant_ports_check CHECK ((quant_ports < 40))
);


ALTER TABLE public.switches OWNER TO postgres;

--
-- Name: switches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.switches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.switches_id_seq OWNER TO postgres;

--
-- Name: switches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.switches_id_seq OWNED BY public.switches.id;


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: pcs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs ALTER COLUMN id SET DEFAULT nextval('public.pcs_id_seq'::regclass);


--
-- Name: rooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);


--
-- Name: soft id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft ALTER COLUMN id SET DEFAULT nextval('public.soft_id_seq'::regclass);


--
-- Name: switches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.switches ALTER COLUMN id SET DEFAULT nextval('public.switches_id_seq'::regclass);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, lname, fname, mname) FROM stdin;
1	Seldon	Tisha	\N
2	Heeran	Cirilo	Tymothy
3	Vere	Franzen	\N
4	Crosher	Melinde	\N
5	Baudinelli	Redford	\N
6	Lawee	Charo	\N
7	Morriss	Corinna	\N
8	Rojahn	Mitchael	\N
9	Jiggle	Shelby	Shayne
10	Fortesquieu	Wolfgang	\N
11	Willsmore	Jacquelynn	\N
12	Lovie	Menard	\N
13	Rochewell	Gaylord	\N
14	Grut	Serene	Renaldo
15	Episcopi	Berri	\N
16	Mathen	Lydia	Barnabas
17	Bedrosian	Darcy	\N
18	Kew	Elly	\N
19	Ketteman	Tiertza	Brianne
20	Withrington	Renaldo	\N
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.installs (pc_id, soft_id) FROM stdin;
12	6
2	1
30	8
34	3
24	3
30	5
19	7
28	6
30	2
21	1
20	10
8	9
34	10
15	2
34	2
22	5
3	2
2	6
2	10
26	1
20	10
34	5
20	3
25	9
34	8
35	4
31	7
5	3
1	3
15	4
10	6
3	2
5	4
21	5
9	10
29	8
31	2
25	7
21	5
7	1
8	10
30	5
28	2
8	1
20	10
30	9
8	5
33	4
26	4
29	1
5	10
6	2
22	7
19	8
35	6
24	8
9	2
20	7
8	6
25	7
7	7
3	7
15	2
22	7
35	4
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs (id, room_id, note, ip_addr, mac_addr) FROM stdin;
1	4	\N	58.194.227.255	55-C0-CB-74-6D-9E
2	6	\N	216.150.96.144	99-B8-1C-33-A0-91
3	2	\N	30.111.225.33	61-3A-C1-F1-E2-14
4	1	\N	200.140.130.241	4E-AF-2A-07-C6-BB
5	10	\N	224.127.146.99	F5-28-12-3E-D3-37
6	12	\N	75.189.34.125	41-9D-C2-9F-2C-D8
7	12	\N	127.121.45.105	67-19-04-FC-56-30
8	9	\N	171.105.39.178	8D-31-66-80-29-2A
9	11	\N	213.89.229.205	07-EA-F4-97-AC-34
10	11	\N	255.250.43.139	BB-5F-46-2E-94-84
11	14	\N	129.18.238.68	13-DD-F4-09-28-B0
12	14	\N	147.26.178.31	BA-5C-D5-CF-3A-1E
13	9	\N	244.182.121.20	FB-8F-4D-8F-02-A5
14	2	\N	200.157.42.48	BF-8A-F1-95-99-79
15	15	\N	199.90.157.25	49-78-7A-9D-9D-42
16	5	\N	97.75.249.172	70-37-09-C9-A0-68
17	1	\N	28.97.218.39	B8-4B-FC-09-0C-C6
18	8	\N	127.170.43.61	29-35-EE-02-F4-64
19	3	\N	22.109.34.12	B4-0A-EF-04-F2-03
20	1	\N	75.17.235.240	46-F6-11-1B-41-E5
21	13	\N	167.87.0.92	2B-7F-E2-E7-78-ED
22	3	\N	90.149.36.163	D9-27-58-FF-89-5B
23	3	\N	55.110.238.65	B2-4C-E1-13-9A-4E
24	8	\N	218.96.213.20	92-D3-64-55-D8-3F
25	4	\N	181.85.86.53	B8-84-1E-52-83-B9
26	2	\N	14.97.104.40	58-8E-1F-A9-5C-7F
27	15	\N	217.113.238.248	0E-0E-FC-8B-D0-44
28	3	\N	166.90.173.60	F4-5D-1E-EE-AD-B9
29	1	\N	69.69.80.196	81-92-19-3C-B2-8D
30	9	\N	6.247.104.44	20-4B-A8-3E-39-2F
31	9	\N	25.104.214.133	5D-55-AA-CA-44-E3
32	13	\N	165.130.167.39	45-B1-C8-33-54-C9
33	1	\N	145.246.201.28	0D-69-B3-F2-00-B6
34	6	\N	59.176.35.163	00-C3-35-C6-E4-DA
35	4	\N	67.80.131.61	A2-0B-58-98-FE-C1
\.


--
-- Data for Name: pcs_to_switches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs_to_switches (id_sw, id_pc) FROM stdin;
1	2
1	4
2	1
2	3
2	5
4	8
4	11
3	25
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, num, emp_id) FROM stdin;
1	11	15
2	13	3
3	19	4
4	24	5
5	36	3
6	34	7
7	30	9
8	33	6
9	34	7
10	40	4
11	34	20
12	16	12
13	34	18
14	19	5
15	18	12
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soft (id, sname, ver, quant) FROM stdin;
1	Overhold	5.47	49
2	Prodder	5.5.7	80
3	Fix San	2.81	48
4	Fintone	0.67	56
5	Mat Lam Tam	0.1.3	42
6	Keylex	0.4.0	61
7	Span	9.80	57
8	Temp	0.3.0	94
9	Bitwolf	0.60	48
10	Zoolab	0.6.8	15
\.


--
-- Data for Name: switches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.switches (id, model_name, quant_ports, serial_number) FROM stdin;
1	TP-LINK TL-SG1008D	11	1418009
2	Dlink S42901	12	1646287
3	TP-LINK TL-SG1008D	11	1418009
4	TP-LINK TL-SG1024DE	39	2193808
\.


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 20, true);


--
-- Name: pcs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pcs_id_seq', 35, true);


--
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_id_seq', 15, true);


--
-- Name: soft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.soft_id_seq', 10, true);


--
-- Name: switches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.switches_id_seq', 4, true);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: pcs pcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pcs_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: soft soft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft
    ADD CONSTRAINT soft_pkey PRIMARY KEY (id);


--
-- Name: switches switches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.switches
    ADD CONSTRAINT switches_pkey PRIMARY KEY (id);


--
-- Name: installs fk_inst_pcs_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT fk_inst_pcs_id FOREIGN KEY (pc_id) REFERENCES public.pcs(id);


--
-- Name: installs fk_inst_soft_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT fk_inst_soft_id FOREIGN KEY (soft_id) REFERENCES public.soft(id);


--
-- Name: pcs_to_switches fk_pc_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs_to_switches
    ADD CONSTRAINT fk_pc_id FOREIGN KEY (id_pc) REFERENCES public.pcs(id);


--
-- Name: pcs fk_room_id_roooms_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT fk_room_id_roooms_id FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- Name: rooms fk_rooms_emp_id_emp_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk_rooms_emp_id_emp_id FOREIGN KEY (emp_id) REFERENCES public.employees(id);


--
-- Name: pcs_to_switches fk_sw_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs_to_switches
    ADD CONSTRAINT fk_sw_id FOREIGN KEY (id_sw) REFERENCES public.switches(id);


--
-- PostgreSQL database dump complete
--

