--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.4

-- Started on 2024-09-30 11:30:15 UTC

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
-- TOC entry 226 (class 1259 OID 16736)
-- Name: corpus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corpus (
    id integer NOT NULL,
    num integer NOT NULL
);


ALTER TABLE public.corpus OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16735)
-- Name: corpus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.corpus ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.corpus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 16753)
-- Name: days; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.days (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.days OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16752)
-- Name: days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.days ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16724)
-- Name: disciplines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disciplines (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.disciplines OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16723)
-- Name: disciplines_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.disciplines ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.disciplines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 16699)
-- Name: faculties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculties (
    id bigint NOT NULL,
    title character varying(255) NOT NULL
);


ALTER TABLE public.faculties OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16698)
-- Name: faculties_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.faculties ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.faculties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 16705)
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    url character varying(255),
    id_faculty bigint
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16704)
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.groups ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 16742)
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id bigint NOT NULL,
    num character varying(10) NOT NULL,
    id_corpus integer
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16854)
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.rooms ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 16759)
-- Name: schedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schedule (
    id bigint NOT NULL,
    id_day bigint,
    id_time bigint,
    id_discipline bigint,
    id_teacher bigint,
    id_room bigint,
    id_group bigint
);


ALTER TABLE public.schedule OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16758)
-- Name: schedule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.schedule ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16718)
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    id bigint NOT NULL,
    fio character varying(255) NOT NULL
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16717)
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.teachers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.teachers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 16730)
-- Name: times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.times (
    id bigint NOT NULL,
    "time" character varying NOT NULL
);


ALTER TABLE public.times OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16729)
-- Name: times_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.times ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.times_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3423 (class 0 OID 16736)
-- Dependencies: 226
-- Data for Name: corpus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (1, 1);
INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (2, 2);
INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (3, 3);
INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (4, 4);
INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (5, 5);
INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (6, 6);
INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (7, 7);
INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (8, 8);
INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (9, 9);
INSERT INTO public.corpus (id, num) OVERRIDING SYSTEM VALUE VALUES (10, 0);


--
-- TOC entry 3426 (class 0 OID 16753)
-- Dependencies: 229
-- Data for Name: days; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.days (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Понедельник');
INSERT INTO public.days (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'Вторник');
INSERT INTO public.days (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'Среда');
INSERT INTO public.days (id, name) OVERRIDING SYSTEM VALUE VALUES (4, 'Четверг');
INSERT INTO public.days (id, name) OVERRIDING SYSTEM VALUE VALUES (5, 'Пятница');
INSERT INTO public.days (id, name) OVERRIDING SYSTEM VALUE VALUES (6, 'Суббота');


--
-- TOC entry 3419 (class 0 OID 16724)
-- Dependencies: 222
-- Data for Name: disciplines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.disciplines (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Иностранный язык в профессиональной деятельности');
INSERT INTO public.disciplines (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'Разработка мобильных приложений');
INSERT INTO public.disciplines (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'Психология общения');
INSERT INTO public.disciplines (id, name) OVERRIDING SYSTEM VALUE VALUES (4, 'Физическая культура');
INSERT INTO public.disciplines (id, name) OVERRIDING SYSTEM VALUE VALUES (5, 'Технология разработки и защиты баз данных');
INSERT INTO public.disciplines (id, name) OVERRIDING SYSTEM VALUE VALUES (6, 'Разработка программных модулей');
INSERT INTO public.disciplines (id, name) OVERRIDING SYSTEM VALUE VALUES (7, 'Компьютерные сети');
INSERT INTO public.disciplines (id, name) OVERRIDING SYSTEM VALUE VALUES (8, 'Поддержка и тестирование программных модулей');


--
-- TOC entry 3413 (class 0 OID 16699)
-- Dependencies: 216
-- Data for Name: faculties; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (1, 'Факультет мехатроники и автоматизации');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (2, 'Факультет бизнеса');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (3, 'Факультет автоматики и вычислительной техники');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (4, 'Факультет радиотехники и электроники');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (5, 'Механико-технологический факультет');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (6, 'Факультет летательных аппаратов');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (7, 'Факультет прикладной математики и информатики');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (8, 'Физико-технический факультет');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (9, 'Факультет энергетики');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (10, 'Факультет гуманитарного образования');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (11, 'Заочное отделение');
INSERT INTO public.faculties (id, title) OVERRIDING SYSTEM VALUE VALUES (12, 'Институт социальных технологий');


--
-- TOC entry 3415 (class 0 OID 16705)
-- Dependencies: 218
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (1, 'АА-46', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АА-46', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (2, 'АА-47', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АА-47', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (3, 'АБс-424', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-424', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (4, 'АБс-425', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-425', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (5, 'АБс-426', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-426', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (6, 'АБс-427', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-427', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (7, 'АБ-420', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБ-420', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (8, 'АБ-421', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБ-421', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (9, 'АБ-422', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБ-422', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (10, 'АВТ-408', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-408', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (11, 'АВТ-409', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-409', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (12, 'АВТ-410', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-410', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (13, 'АВТ-412', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-412', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (14, 'АВТ-413', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-413', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (15, 'АВТ-414', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-414', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (16, 'АВТ-418', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-418', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (17, 'АВТ-419', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-419', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (18, 'АВТ-441', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-441', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (19, 'АВТ-442', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-442', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (20, 'АВТ-443', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-443', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (21, 'АИ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АИ-42', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (22, 'АО-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АО-41', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (23, 'АО-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АО-42', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (24, 'АП-426', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АП-426', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (25, 'АП-427', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АП-427', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (26, 'АТ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АТ-43', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (27, 'АТ-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АТ-44', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (28, 'АТ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АТ-45', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (29, 'АА-36', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АА-36', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (30, 'АА-37', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АА-37', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (31, 'АБс-322', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-322', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (32, 'АБс-323', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-323', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (33, 'АБс-324', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-324', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (34, 'АБ-320', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБ-320', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (35, 'АБ-321', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБ-321', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (36, 'АВТ-308', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-308', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (37, 'АВТ-309', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-309', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (38, 'АВТ-310', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-310', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (39, 'АВТ-312', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-312', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (40, 'АВТ-313', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-313', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (41, 'АВТ-314', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-314', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (42, 'АВТ-318', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-318', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (43, 'АВТ-319', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-319', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (44, 'АВТ-341', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-341', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (45, 'АВТ-342', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-342', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (46, 'АВТ-343', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-343', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (47, 'АИ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АИ-32', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (48, 'АО-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АО-31', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (49, 'АО-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АО-32', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (50, 'АП-326', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АП-326', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (51, 'АП-327', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АП-327', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (52, 'АТ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АТ-33', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (53, 'АТ-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АТ-34', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (54, 'АА-26', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АА-26', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (55, 'АА-27', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АА-27', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (56, 'АБс-222', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-222', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (57, 'АБс-223', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-223', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (58, 'АБ-220', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБ-220', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (59, 'АБ-221', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБ-221', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (60, 'АВТ-208', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-208', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (61, 'АВТ-209', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-209', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (62, 'АВТ-210', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-210', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (63, 'АВТ-213', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-213', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (64, 'АВТ-214', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-214', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (65, 'АВТ-218', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-218', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (66, 'АВТ-219', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-219', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (67, 'АВТ-241', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-241', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (68, 'АВТ-242', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-242', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (69, 'АВТ-243', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-243', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (70, 'АИ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АИ-22', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (71, 'АО-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АО-22', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (72, 'АП-226', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АП-226', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (73, 'АП-227', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АП-227', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (74, 'АТ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АТ-23', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (75, 'АТ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АТ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (76, 'АА-16', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АА-16', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (77, 'АБс-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-123', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (78, 'АБ-120', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБ-120', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (79, 'АВТ-108', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-108', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (80, 'АВТ-109', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-109', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (81, 'АВТ-110', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-110', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (82, 'АВТ-113', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-113', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (83, 'АВТ-114', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-114', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (84, 'АВТ-118', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-118', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (85, 'АВТ-119', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-119', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (86, 'АВТ-141', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-141', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (87, 'АВТ-143', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АВТ-143', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (88, 'АИ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АИ-12', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (89, 'АО-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АО-12', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (90, 'АП-126', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АП-126', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (91, 'АТ-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АТ-13', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (92, 'АТ-14', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АТ-14', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (93, 'АБс-022', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБс-022', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (94, 'ААМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ААМ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (95, 'АБМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АБМ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (96, 'АЗМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АЗМ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (97, 'АИМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АИМ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (98, 'АИСМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АИСМ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (99, 'АММ2-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АММ2-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (100, 'АММ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АММ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (101, 'АОМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АОМ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (102, 'АПИМ2-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АПИМ2-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (103, 'АПИМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АПИМ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (104, 'АПМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АПМ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (105, 'АСМ2-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АСМ2-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (106, 'АСМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АСМ-24', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (107, 'ВШ6-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ВШ6-41', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (108, 'ААМ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ААМ-23', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (109, 'АПИМ2-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АПИМ2-23', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (110, 'АПИМ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АПИМ-23', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (111, 'АПМ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АПМ-23', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (112, 'АСМ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АСМ-23', 3);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (113, 'SD-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=SD-43', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (114, 'ГС-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ГС-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (115, 'МА-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МА-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (116, 'МБ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МБ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (117, 'МВ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МВ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (118, 'МР-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МР-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (119, 'ПС-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПС-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (120, 'СА-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СА-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (121, 'СД-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СД-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (122, 'СЭ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЭ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (123, 'С-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=С-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (124, 'С-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=С-42', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (125, 'ТС-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТС-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (126, 'ЭП-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭП-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (127, 'ГС-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ГС-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (128, 'ГС-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ГС-32', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (129, 'МА-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МА-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (130, 'МБ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МБ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (131, 'МВ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МВ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (132, 'МР-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МР-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (133, 'ПС-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПС-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (134, 'СА-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СА-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (135, 'СД-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СД-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (136, 'СЭ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЭ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (137, 'С-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=С-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (138, 'С-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=С-32', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (139, 'ТС-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТС-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (140, 'ЭП-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭП-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (141, 'ГС-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ГС-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (142, 'МА-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МА-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (143, 'МБ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МБ-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (144, 'МВ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МВ-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (145, 'МР-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МР-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (146, 'ПС-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПС-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (147, 'СА-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СА-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (148, 'СД-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СД-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (149, 'СЭ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЭ-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (150, 'С-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=С-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (151, 'С-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=С-22', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (152, 'ТС-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТС-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (153, 'ЭП-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭП-21', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (154, 'ГС-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ГС-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (155, 'МА-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МА-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (156, 'МБ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МБ-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (157, 'МВ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МВ-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (158, 'МР-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МР-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (159, 'ПС-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПС-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (160, 'СА-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СА-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (161, 'СД-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СД-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (162, 'СЭ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЭ-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (163, 'С-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=С-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (164, 'С-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=С-12', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (165, 'ТС-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТС-11', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (166, 'ГС-01', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ГС-01', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (167, 'МА-01', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МА-01', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (168, 'МВ-01', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МВ-01', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (169, 'АУМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АУМ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (170, 'ВШ4-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ВШ4-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (171, 'ВШ5-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ВШ5-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (172, 'ГСМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ГСМ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (173, 'МБМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МБМ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (174, 'ПСМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПСМ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (175, 'САМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=САМ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (176, 'СМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СМ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (177, 'СЭМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЭМ-41', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (178, 'АУМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=АУМ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (179, 'ГСМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ГСМ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (180, 'ПСМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПСМ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (181, 'САМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=САМ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (182, 'СДМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СДМ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (183, 'СМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СМ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (184, 'СЭМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЭМ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (185, 'ТСМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТСМ-31', 6);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (186, 'КМ-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=КМ-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (187, 'КП-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=КП-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (188, 'КХ-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=КХ-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (189, 'ММ-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ММ-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (190, 'МтР-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МтР-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (191, 'НТ-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=НТ-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (192, 'ТА-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТА-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (193, 'ТМ-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТМ-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (194, 'ТХ-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТХ-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (195, 'ХТ-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ХТ-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (196, 'ЦТК-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЦТК-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (197, 'КМ-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=КМ-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (198, 'КП-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=КП-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (199, 'ММ-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ММ-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (200, 'МтР-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МтР-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (201, 'НТ-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=НТ-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (202, 'ТА-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТА-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (203, 'ТМ-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТМ-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (204, 'ТХ-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТХ-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (205, 'ХТ-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ХТ-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (206, 'ХТ-223', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ХТ-223', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (207, 'ЦТК-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЦТК-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (208, 'КМ-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=КМ-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (209, 'КП-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=КП-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (210, 'ММ-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ММ-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (211, 'МП-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МП-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (212, 'МтР-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МтР-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (213, 'НТ-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=НТ-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (214, 'ТА-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТА-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (215, 'ТМ-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТМ-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (216, 'ТХ-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТХ-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (217, 'ХТ-122', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ХТ-122', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (218, 'ХТ-222', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ХТ-222', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (219, 'КМ-121', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=КМ-121', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (220, 'КП-121', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=КП-121', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (221, 'ММ-121', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ММ-121', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (222, 'МтР-121', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=МтР-121', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (223, 'НТ-121', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=НТ-121', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (224, 'ТА-121', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТА-121', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (225, 'ТМ-121', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТМ-121', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (226, 'ТХ-121', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТХ-121', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (227, 'ХТ-121', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ХТ-121', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (228, 'ХТ-221', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ХТ-221', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (229, 'ВШ3-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ВШ3-41', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (230, 'Маг-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Маг-124', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (231, 'Маг-424', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Маг-424', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (232, 'Маг-624', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Маг-624', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (233, 'Маг-724', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Маг-724', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (234, 'Маг-123', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Маг-123', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (235, 'Маг-423', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Маг-423', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (236, 'Маг-523', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Маг-523', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (237, 'Маг-623', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Маг-623', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (238, 'Маг-723', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Маг-723', 5);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (239, 'ЭМА-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМА-41', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (240, 'ЭМА-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМА-42', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (241, 'ЭМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-41', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (242, 'ЭМ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-42', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (243, 'ЭМ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-43', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (244, 'ЭМ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-45', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (245, 'ЭМ-47', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-47', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (246, 'ЭМА-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМА-31', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (247, 'ЭМА-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМА-32', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (248, 'ЭМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-31', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (249, 'ЭМ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-32', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (250, 'ЭМ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-33', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (251, 'ЭМ-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-35', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (252, 'ЭМ-37', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-37', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (253, 'ЭМА-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМА-21', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (254, 'ЭМА-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМА-23', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (255, 'ЭМ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-21', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (256, 'ЭМ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-22', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (257, 'ЭМ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-23', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (258, 'ЭМ-25', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-25', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (259, 'ЭМА-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМА-11', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (260, 'ЭМА-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМА-12', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (261, 'ЭМА-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМА-13', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (262, 'ЭМ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-11', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (263, 'ЭМ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-12', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (264, 'ЭМ-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-13', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (265, 'ЭМ-15', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-15', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (266, 'ЭМ-17', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭМ-17', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (267, 'ЭММА-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММА-41', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (268, 'ЭММА-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММА-42', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (269, 'ЭММ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-41', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (270, 'ЭММ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-42', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (271, 'ЭММ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-43', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (272, 'ЭММ-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-44', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (273, 'ЭММ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-45', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (274, 'ЭММ-47', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-47', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (275, 'ЭММА-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММА-31', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (276, 'ЭММ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-31', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (277, 'ЭММ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-32', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (278, 'ЭММ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-33', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (279, 'ЭММ-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-34', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (280, 'ЭММ-37', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭММ-37', 1);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (281, 'ПМИ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-41', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (282, 'ПМИ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-42', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (283, 'ПМИ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-43', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (284, 'ПМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-41', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (285, 'ПМ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-42', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (286, 'ПМ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-43', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (287, 'ПМ-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-44', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (288, 'ПМ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-45', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (289, 'ПМИ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-31', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (290, 'ПМИ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-32', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (291, 'ПМИ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-33', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (292, 'ПМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-31', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (293, 'ПМ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-32', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (294, 'ПМ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-33', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (295, 'ПМ-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-34', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (296, 'ПМ-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-35', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (297, 'ПМИ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-22', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (298, 'ПМИ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-23', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (299, 'ПМ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-21', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (300, 'ПМ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-23', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (301, 'ПМ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-24', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (302, 'ПМ-25', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-25', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (303, 'ПМИ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-11', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (304, 'ПМИ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИ-12', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (305, 'ПМ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-12', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (306, 'ПМ-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-13', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (307, 'ПМ-14', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-14', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (308, 'ПМ-15', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМ-15', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (309, 'ПМИМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИМ-41', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (310, 'ПММ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПММ-41', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (311, 'ПММ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПММ-42', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (312, 'ПММ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПММ-43', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (313, 'ПМИМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПМИМ-31', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (314, 'ПММ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПММ-31', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (315, 'ПММ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПММ-32', 7);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (316, 'РКС10-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РКС10-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (317, 'РКС10-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РКС10-42', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (318, 'РК6-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РК6-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (319, 'РМ2-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РМ2-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (320, 'РН1-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РН1-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (321, 'РН1-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РН1-42', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (322, 'РП4-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РП4-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (323, 'РП4-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РП4-42', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (324, 'РТВ14-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТВ14-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (325, 'РТВ14-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТВ14-42', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (326, 'РТС9-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТС9-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (327, 'РТС9-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТС9-42', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (328, 'РТ5-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТ5-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (329, 'РЭ3-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭ3-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (330, 'РЭ3-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭ3-42', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (331, 'РКС10-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РКС10-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (332, 'РК6-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РК6-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (333, 'РМ2-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РМ2-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (334, 'РН1-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РН1-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (335, 'РН1-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РН1-32', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (336, 'РП4-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РП4-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (337, 'РП4-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РП4-32', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (338, 'РТВ14-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТВ14-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (339, 'РТС9-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТС9-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (340, 'РТ5-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТ5-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (341, 'РЭ3-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭ3-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (342, 'РЭ3-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭ3-32', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (343, 'РКС10-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РКС10-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (344, 'РК6-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РК6-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (345, 'РМС7-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РМС7-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (346, 'РНТ1-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РНТ1-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (347, 'РП4-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РП4-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (348, 'РП4-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РП4-22', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (349, 'РТВ14-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТВ14-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (350, 'РТС9-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТС9-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (351, 'РТ5-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТ5-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (352, 'РЭН2-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭН2-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (353, 'РЭ3-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭ3-21', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (354, 'РЭ3-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭ3-22', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (355, 'РКС10-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РКС10-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (356, 'РК6-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РК6-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (357, 'РМС7-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РМС7-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (358, 'РНТ1-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РНТ1-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (359, 'РП4-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РП4-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (360, 'РТВ14-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТВ14-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (361, 'РТС9-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТС9-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (362, 'РТ5-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТ5-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (363, 'РЭН2-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭН2-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (364, 'РЭ3-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭ3-11', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (365, 'ВШ1-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ВШ1-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (366, 'ВШ2-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ВШ2-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (367, 'РКМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РКМ-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (368, 'РМС-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РМС-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (369, 'РНМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РНМ-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (370, 'РТИМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТИМ-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (371, 'РТМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТМ-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (372, 'РЭМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭМ-41', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (373, 'РКМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РКМ-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (374, 'РМС-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РМС-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (375, 'РНМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РНМ-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (376, 'РТИМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТИМ-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (377, 'РТМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РТМ-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (378, 'РЭМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РЭМ-31', 4);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (379, 'ФГ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФГ-41', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (380, 'ФК-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФК-41', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (381, 'ФЛ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФЛ-41', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (382, 'ФТ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФТ-41', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (383, 'ФТ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФТ-42', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (384, 'ФФ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФФ-41', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (385, 'ФГ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФГ-31', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (386, 'ФК-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФК-31', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (387, 'ФЛ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФЛ-31', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (388, 'ФТ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФТ-31', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (389, 'ФТ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФТ-32', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (390, 'ФФ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФФ-31', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (391, 'ФГ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФГ-21', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (392, 'ФК-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФК-21', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (393, 'ФЛ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФЛ-21', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (394, 'ФТ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФТ-21', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (395, 'ФФ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФФ-21', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (396, 'ФГ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФГ-11', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (397, 'ФК-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФК-11', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (398, 'ФЛ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФЛ-11', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (399, 'ФТ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФТ-11', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (400, 'ФФ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФФ-11', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (401, 'ФГ-41М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФГ-41М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (402, 'ФЛ-41М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФЛ-41М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (403, 'ФО-41М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФО-41М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (404, 'ФТ-41М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФТ-41М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (405, 'ФТ-42М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФТ-42М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (406, 'ФА-31М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФА-31М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (407, 'ФГ-31М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФГ-31М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (408, 'ФЛ-31М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФЛ-31М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (409, 'ФО-31М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФО-31М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (410, 'ФТ-31М', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФТ-31М', 8);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (411, 'EN3-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=EN3-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (412, 'ТЭ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТЭ-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (413, 'ЭнБ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭнБ-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (414, 'ЭН1-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (415, 'ЭН1-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-42', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (416, 'ЭН1-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-45', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (417, 'ЭН2-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (418, 'ЭН2-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-42', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (419, 'ЭН2-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-44', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (420, 'ЭН2-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-45', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (421, 'ТЭ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТЭ-31', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (422, 'ЭнБ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭнБ-31', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (423, 'ЭН1-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-31', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (424, 'ЭН1-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-32', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (425, 'ЭН1-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-34', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (426, 'ЭН1-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-35', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (427, 'ЭН2-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-31', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (428, 'ЭН2-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-32', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (429, 'ЭН2-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-35', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (430, 'ТЭ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТЭ-21', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (431, 'ЭнБ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭнБ-21', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (432, 'ЭН1-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-21', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (433, 'ЭН1-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-22', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (434, 'ЭН1-25', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-25', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (435, 'ЭН2-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-21', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (436, 'ЭН2-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-22', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (437, 'ЭН2-25', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-25', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (438, 'ТЭ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТЭ-11', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (439, 'ЭнБ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭнБ-11', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (440, 'ЭН1-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-11', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (441, 'ЭН1-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-12', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (442, 'ЭН1-13у', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-13у', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (443, 'ЭН1-15', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН1-15', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (444, 'ЭН2-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-11', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (445, 'ЭН2-15', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭН2-15', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (446, 'ТЭМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТЭМ-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (447, 'ЭнБМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭнБМ-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (448, 'ЭНМЭ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМЭ-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (449, 'ЭНМ1-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ1-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (450, 'ЭНМ1-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ1-42', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (451, 'ЭНМ1-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ1-44', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (452, 'ЭНМ2-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ2-41', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (453, 'ЭНМ2-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ2-43', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (454, 'ТЭМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ТЭМ-31', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (455, 'ЭнБМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭнБМ-31', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (456, 'ЭНМЭ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМЭ-31', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (457, 'ЭНМ1-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ1-31', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (458, 'ЭНМ1-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ1-32', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (459, 'ЭНМ1-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ1-34', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (460, 'ЭНМ2-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ2-31', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (461, 'ЭНМ2-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭНМ2-33', 9);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (462, 'ФБИ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-41', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (463, 'ФБИ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-42', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (464, 'ФБИ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-43', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (465, 'ФБИ-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-44', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (466, 'ФБМТ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМТ-41', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (467, 'ФБТХ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХ-41', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (468, 'ФБТХ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХ-42', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (469, 'ФБЭБС-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-41', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (470, 'ФБЭБС-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-42', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (471, 'ФБЭБС-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-43', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (472, 'ФБЭ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-41', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (473, 'ФБЭ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-42', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (474, 'ФБЭ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-43', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (475, 'ФБЭ-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-44', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (476, 'ФБЭ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-45', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (477, 'ФБ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-41', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (478, 'ФБ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-42', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (479, 'ФБ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-43', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (480, 'ФБ-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-44', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (481, 'ФБ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-45', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (482, 'ЭК-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭК-41', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (483, 'ЭК-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭК-42', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (484, 'ФБИ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (485, 'ФБИ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-32', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (486, 'ФБИ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-33', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (487, 'ФБИ-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-34', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (488, 'ФБк-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБк-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (489, 'ФБМТ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМТ-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (490, 'ФБТХ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХ-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (491, 'ФБТХ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХ-32', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (492, 'ФБЭБС-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (493, 'ФБЭБС-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-32', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (494, 'ФБЭБС-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-33', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (495, 'ФБЭ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (496, 'ФБЭ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-32', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (497, 'ФБЭ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-33', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (498, 'ФБЭ-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-34', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (499, 'ФБ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (500, 'ФБ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-32', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (501, 'ФБ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-33', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (502, 'ФБ-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-34', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (503, 'ФБ-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-35', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (504, 'ЭК-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭК-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (505, 'ФБИ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-21', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (506, 'ФБИ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-22', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (507, 'ФБИ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-23', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (508, 'ФБИ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-24', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (509, 'ФБМТ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМТ-21', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (510, 'ФБТХ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХ-21', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (511, 'ФБТХ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХ-22', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (512, 'ФБЭБС-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-21', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (513, 'ФБЭБС-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-22', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (514, 'ФБЭБС-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-23', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (515, 'ФБЭ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-21', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (516, 'ФБЭ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-23', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (517, 'ФБЭ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-24', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (518, 'ФБ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-21', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (519, 'ФБ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-22', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (520, 'ФБ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-23', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (521, 'ФБ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-24', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (522, 'ФБ-25', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-25', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (523, 'ФБ-26', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-26', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (524, 'ЭК-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭК-21', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (525, 'ФБИ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-11', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (526, 'ФБИ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-12', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (527, 'ФБИ-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-13', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (528, 'ФБИ-14', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБИ-14', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (529, 'ФБМИП-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМИП-11', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (530, 'ФБМТ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМТ-11', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (531, 'ФБТХ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХ-11', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (532, 'ФБТХ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХ-12', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (533, 'ФБЭБС-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-11', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (534, 'ФБЭБС-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-12', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (535, 'ФБЭБС-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-13', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (536, 'ФБЭ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-11', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (537, 'ФБЭ-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-13', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (538, 'ФБЭ-14', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭ-14', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (539, 'ФБ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-11', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (540, 'ФБ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-12', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (541, 'ФБ-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-13', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (542, 'ФБ-14', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-14', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (543, 'ФБ-15', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-15', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (544, 'ФБ-16', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-16', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (545, 'ФБ-17', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБ-17', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (546, 'ЭК-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЭК-11', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (547, 'ФБЭБС-01', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-01', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (548, 'ФБЭБС-02', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭБС-02', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (549, 'дФБМ-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=дФБМ-44', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (550, 'дФБМ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=дФБМ-45', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (551, 'дФБМ-46', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=дФБМ-46', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (552, 'дФБМ-47', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=дФБМ-47', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (553, 'ФБМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМ-41', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (554, 'ФБМ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМ-42', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (555, 'ФБМ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМ-43', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (556, 'ФБТХМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХМ-41', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (557, 'ФБЭМ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭМ-45', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (558, 'ФБЭМ-46', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭМ-46', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (559, 'дФБМ-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=дФБМ-34', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (560, 'дФБМ-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=дФБМ-35', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (561, 'дФБМ-36', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=дФБМ-36', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (562, 'ФБМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМ-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (563, 'ФБМ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМ-32', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (564, 'ФБМ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБМ-33', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (565, 'ФБТХМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБТХМ-31', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (566, 'ФБЭМ-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭМ-35', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (567, 'ФБЭМ-36', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ФБЭМ-36', 2);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (568, 'ИЯ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-41', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (569, 'ИЯ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-42', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (570, 'ИЯ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-43', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (571, 'ИЯ-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-44', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (572, 'ИЯ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-45', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (573, 'П-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-41', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (574, 'П-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-42', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (575, 'П-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-43', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (576, 'П-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-44', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (577, 'РГ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-41', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (578, 'РГ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-42', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (579, 'РГ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-43', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (580, 'РГ-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-45', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (581, 'СЛ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-41', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (582, 'СЛ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-42', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (583, 'СЛ-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-43', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (584, 'Ф-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-41', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (585, 'Ф-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-42', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (586, 'Ф-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-43', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (587, 'Ф-44', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-44', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (588, 'ИЯ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (589, 'ИЯ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-32', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (590, 'ИЯ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-33', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (591, 'ИЯ-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-34', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (592, 'ИЯ-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-35', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (593, 'П-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (594, 'П-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-32', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (595, 'П-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-33', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (596, 'П-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-35', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (597, 'РГ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (598, 'РГ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-32', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (599, 'РГ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-33', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (600, 'РГ-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-35', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (601, 'СЛ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (602, 'СЛ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-32', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (603, 'СЛ-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-33', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (604, 'Ф-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (605, 'Ф-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-32', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (606, 'Ф-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-33', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (607, 'ИЯ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-21', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (608, 'ИЯ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-22', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (609, 'ИЯ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-23', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (610, 'ИЯ-24', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-24', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (611, 'ИЯ-25', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-25', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (612, 'ИЯ-26', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-26', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (613, 'П-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-21', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (614, 'П-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-22', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (615, 'П-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-23', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (616, 'РГ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-21', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (617, 'РГ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-22', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (618, 'РГ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-23', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (619, 'РГ-25', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-25', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (620, 'СЛ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-21', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (621, 'СЛ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-22', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (622, 'СЛ-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-23', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (623, 'Ф-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-21', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (624, 'Ф-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-23', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (625, 'ИЯ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-11', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (626, 'ИЯ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-12', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (627, 'ИЯ-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-13', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (628, 'ИЯ-15', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-15', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (629, 'ИЯ-16', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИЯ-16', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (630, 'П-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-11', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (631, 'П-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-12', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (632, 'П-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=П-13', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (633, 'РГ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-11', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (634, 'РГ-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-13', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (635, 'РГ-15', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГ-15', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (636, 'СЛ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-11', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (637, 'СЛ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-12', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (638, 'СЛ-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛ-13', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (639, 'Ф-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-11', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (640, 'Ф-13', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Ф-13', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (641, 'ПлМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПлМ-41', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (642, 'ПОм-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПОм-41', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (643, 'ПОм-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПОм-42', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (644, 'РГМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГМ-41', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (645, 'СЛМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛМ-41', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (646, 'ПлМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПлМ-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (647, 'ПЛМ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПЛМ-32', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (648, 'ПОм-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПОм-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (649, 'ПОм-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ПОм-32', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (650, 'РГМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=РГМ-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (651, 'СЛМ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=СЛМ-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (652, 'Фм-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=Фм-31', 10);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (653, 'ДЭ-430', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ДЭ-430', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (654, 'ДЭ-460', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ДЭ-460', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (655, 'ЗФ-424', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЗФ-424', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (656, 'ДЭ-330', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ДЭ-330', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (657, 'ДЭ-360', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ДЭ-360', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (658, 'ЗФ-324', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЗФ-324', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (659, 'ДЭ-230', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ДЭ-230', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (660, 'ДЭ-260', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ДЭ-260', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (661, 'ЗФ-224', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЗФ-224', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (662, 'ДГ-110', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ДГ-110', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (663, 'ДЭ-130', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ДЭ-130', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (664, 'ДЭ-160', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ДЭ-160', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (665, 'ЗФ-124', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ЗФ-124', 11);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (666, 'КН-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-КН-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (667, 'КН-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-КН-42', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (668, 'ПСФ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ПСФ-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (669, 'ПСФ-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ПСФ-42', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (670, 'СР-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-СР-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (671, 'КН-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-КН-31', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (672, 'ПСФ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ПСФ-31', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (673, 'ПСФ-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ПСФ-32', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (674, 'СР-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-СР-31', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (675, 'КН-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-КН-21', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (676, 'КН-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-КН-22', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (677, 'ПСФ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ПСФ-21', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (678, 'ПСФ-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ПСФ-22', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (679, 'СР-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-СР-21', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (680, 'КН-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-КН-11', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (681, 'КН-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-КН-12', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (682, 'ПСФ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ПСФ-11', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (683, 'ПСФ-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ПСФ-12', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (684, 'СР-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-СР-11', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (685, 'СРМ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-СРМ-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (686, 'АФ-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-АФ-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (687, 'Б-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Б-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (688, 'Б-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Б-42', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (689, 'Д-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Д-42', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (690, 'Д-45', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Д-45', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (691, 'ИП-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (692, 'ИП-42', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-42', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (693, 'ИП-43', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-43', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (694, 'К-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-К-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (695, 'П-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-П-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (696, 'С-41', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-С-41', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (697, 'АФ-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-АФ-31', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (698, 'Б-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Б-31', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (699, 'Б-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Б-32', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (700, 'Д-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Д-32', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (701, 'Д-35', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Д-35', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (702, 'ИП-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-31', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (703, 'ИП-32', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-32', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (704, 'ИП-33', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-33', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (705, 'ИП-34', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-34', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (706, 'К-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-К-31', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (707, 'П-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-П-31', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (708, 'С-31', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-С-31', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (709, 'АФ-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-АФ-21', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (710, 'Б-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Б-21', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (711, 'Б-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Б-22', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (712, 'Д-25', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Д-25', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (713, 'ИП-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-21', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (714, 'ИП-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-22', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (715, 'ИП-23', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИП-23', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (716, 'ИС-22', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-ИС-22', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (717, 'К-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-К-21', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (718, 'П-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-П-21', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (719, 'С-21', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-С-21', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (720, 'АФ-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-АФ-11', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (721, 'Д-12', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Д-12', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (722, 'Д-15', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-Д-15', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (723, 'П-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-П-11', 12);
INSERT INTO public.groups (id, title, url, id_faculty) OVERRIDING SYSTEM VALUE VALUES (724, 'С-11', 'https://www.nstu.ru/studies/schedule/schedule_classes/schedule?group=ИСТР-С-11', 12);


--
-- TOC entry 3424 (class 0 OID 16742)
-- Dependencies: 227
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rooms (id, num, id_corpus) OVERRIDING SYSTEM VALUE VALUES (1, '311', 9);
INSERT INTO public.rooms (id, num, id_corpus) OVERRIDING SYSTEM VALUE VALUES (2, '320', 9);
INSERT INTO public.rooms (id, num, id_corpus) OVERRIDING SYSTEM VALUE VALUES (3, '206', 8);
INSERT INTO public.rooms (id, num, id_corpus) OVERRIDING SYSTEM VALUE VALUES (4, '714', 8);
INSERT INTO public.rooms (id, num, id_corpus) OVERRIDING SYSTEM VALUE VALUES (5, '425', 1);
INSERT INTO public.rooms (id, num, id_corpus) OVERRIDING SYSTEM VALUE VALUES (6, 'Горский', 10);


--
-- TOC entry 3428 (class 0 OID 16759)
-- Dependencies: 231
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.schedule (id, id_day, id_time, id_discipline, id_teacher, id_room, id_group) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1, 1, 1, 1, 714);
INSERT INTO public.schedule (id, id_day, id_time, id_discipline, id_teacher, id_room, id_group) OVERRIDING SYSTEM VALUE VALUES (2, 1, 2, 1, 1, 1, 714);
INSERT INTO public.schedule (id, id_day, id_time, id_discipline, id_teacher, id_room, id_group) OVERRIDING SYSTEM VALUE VALUES (3, 1, 3, 2, 1, 1, 714);
INSERT INTO public.schedule (id, id_day, id_time, id_discipline, id_teacher, id_room, id_group) OVERRIDING SYSTEM VALUE VALUES (4, 2, 1, 3, 3, 6, 714);
INSERT INTO public.schedule (id, id_day, id_time, id_discipline, id_teacher, id_room, id_group) OVERRIDING SYSTEM VALUE VALUES (5, 2, 2, 4, 4, 3, 714);
INSERT INTO public.schedule (id, id_day, id_time, id_discipline, id_teacher, id_room, id_group) OVERRIDING SYSTEM VALUE VALUES (6, 2, 3, 4, 4, 3, 714);
INSERT INTO public.schedule (id, id_day, id_time, id_discipline, id_teacher, id_room, id_group) OVERRIDING SYSTEM VALUE VALUES (7, 2, 4, 4, 4, 3, 714);


--
-- TOC entry 3417 (class 0 OID 16718)
-- Dependencies: 220
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.teachers (id, fio) OVERRIDING SYSTEM VALUE VALUES (1, 'Сафаров Р.А.');
INSERT INTO public.teachers (id, fio) OVERRIDING SYSTEM VALUE VALUES (2, 'Власов С.И.');
INSERT INTO public.teachers (id, fio) OVERRIDING SYSTEM VALUE VALUES (3, 'Чилочи Е.С.');
INSERT INTO public.teachers (id, fio) OVERRIDING SYSTEM VALUE VALUES (4, 'Третьяк И.А.');
INSERT INTO public.teachers (id, fio) OVERRIDING SYSTEM VALUE VALUES (5, 'Захарова О.А.');
INSERT INTO public.teachers (id, fio) OVERRIDING SYSTEM VALUE VALUES (6, 'Горевая О.А.');
INSERT INTO public.teachers (id, fio) OVERRIDING SYSTEM VALUE VALUES (7, 'Бертик А.А.');
INSERT INTO public.teachers (id, fio) OVERRIDING SYSTEM VALUE VALUES (8, 'Алаева Н.С.');


--
-- TOC entry 3421 (class 0 OID 16730)
-- Dependencies: 224
-- Data for Name: times; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.times (id, "time") OVERRIDING SYSTEM VALUE VALUES (1, '08:30 - 10:00');
INSERT INTO public.times (id, "time") OVERRIDING SYSTEM VALUE VALUES (2, '10:15 - 11:45');
INSERT INTO public.times (id, "time") OVERRIDING SYSTEM VALUE VALUES (3, '12:00 - 13:30');
INSERT INTO public.times (id, "time") OVERRIDING SYSTEM VALUE VALUES (4, '14:00 - 15:30');
INSERT INTO public.times (id, "time") OVERRIDING SYSTEM VALUE VALUES (5, '15:45 - 17:15');
INSERT INTO public.times (id, "time") OVERRIDING SYSTEM VALUE VALUES (6, '17:30 - 19:00');


--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 225
-- Name: corpus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.corpus_id_seq', 1, false);


--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 228
-- Name: days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.days_id_seq', 6, true);


--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 221
-- Name: disciplines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.disciplines_id_seq', 8, true);


--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 215
-- Name: faculties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faculties_id_seq', 12, true);


--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 217
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groups_id_seq', 1, false);


--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 232
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_id_seq', 6, true);


--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 230
-- Name: schedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schedule_id_seq', 7, true);


--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 219
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_id_seq', 8, true);


--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 223
-- Name: times_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.times_id_seq', 6, true);


--
-- TOC entry 3254 (class 2606 OID 16842)
-- Name: corpus corpus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corpus
    ADD CONSTRAINT corpus_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 16757)
-- Name: days days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.days
    ADD CONSTRAINT days_pkey PRIMARY KEY (id);


--
-- TOC entry 3250 (class 2606 OID 16728)
-- Name: disciplines disciplines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT disciplines_pkey PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 16703)
-- Name: faculties faculties_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculties
    ADD CONSTRAINT faculties_pkey PRIMARY KEY (id);


--
-- TOC entry 3246 (class 2606 OID 16811)
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 16746)
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- TOC entry 3260 (class 2606 OID 16763)
-- Name: schedule schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 16722)
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- TOC entry 3252 (class 2606 OID 16734)
-- Name: times times_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.times
    ADD CONSTRAINT times_pkey PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 16712)
-- Name: groups groups_id_faculty_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_id_faculty_fkey FOREIGN KEY (id_faculty) REFERENCES public.faculties(id) ON DELETE CASCADE;


--
-- TOC entry 3262 (class 2606 OID 16843)
-- Name: rooms rooms_id_corpus_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_id_corpus_fkey FOREIGN KEY (id_corpus) REFERENCES public.corpus(id) ON DELETE CASCADE;


--
-- TOC entry 3263 (class 2606 OID 16764)
-- Name: schedule schedule_id_day_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_id_day_fkey FOREIGN KEY (id_day) REFERENCES public.days(id) ON DELETE CASCADE;


--
-- TOC entry 3264 (class 2606 OID 16774)
-- Name: schedule schedule_id_discipline_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_id_discipline_fkey FOREIGN KEY (id_discipline) REFERENCES public.disciplines(id) ON DELETE CASCADE;


--
-- TOC entry 3265 (class 2606 OID 16812)
-- Name: schedule schedule_id_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_id_group_fkey FOREIGN KEY (id_group) REFERENCES public.groups(id) ON DELETE CASCADE;


--
-- TOC entry 3266 (class 2606 OID 16784)
-- Name: schedule schedule_id_room_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_id_room_fkey FOREIGN KEY (id_room) REFERENCES public.rooms(id) ON DELETE CASCADE;


--
-- TOC entry 3267 (class 2606 OID 16779)
-- Name: schedule schedule_id_teacher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_id_teacher_fkey FOREIGN KEY (id_teacher) REFERENCES public.teachers(id) ON DELETE CASCADE;


--
-- TOC entry 3268 (class 2606 OID 16769)
-- Name: schedule schedule_id_time_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_id_time_fkey FOREIGN KEY (id_time) REFERENCES public.times(id) ON DELETE CASCADE;


-- Completed on 2024-09-30 11:30:15 UTC

--
-- PostgreSQL database dump complete
--

