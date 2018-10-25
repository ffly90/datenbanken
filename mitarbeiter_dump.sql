--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: mitarbeiter; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (1, 'Maier', 'Roland', 'Baustraße 1', '30459', 'Adorf', NULL, '1988-04-02', 'Müller', NULL, 3, '1997-12-10', 'E', 2342.67, 19.20, 210.39, '00002');
INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (2, 'Müller', 'Trude', 'ABC-Straße 1', '09283', 'Plauen', NULL, '1897-05-12', 'Müller', NULL, 1, '1997-12-11', 'E', 575.67, 19.20, 2033.39, '00003');
INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (3, 'Assmann', 'Lukas', 'Hollerweg 1', '18734', 'Bheim', NULL, '2012-08-02', 'Müller', NULL, 5, '1997-12-12', 'E', 231.67, 2.20, 201.39, '00005');
INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (4, 'Reich', 'Caroline', 'Siemensallee 1', '75862', 'Weiler', NULL, '1977-04-23', 'Müller', NULL, 4, '1997-12-13', 'E', 5421.67, 1.20, 230.39, '00001');
INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (5, 'Specht', 'Stefan', 'Wesselyring 1', '52836', 'Fessenheim', NULL, '1989-04-02', 'Müller', NULL, 2, '1997-12-14', 'E', 6632.67, 12.00, 270.39, '00004');


--
-- PostgreSQL database dump complete
--

