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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: fähigkeit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."fähigkeit" (
    faehnr integer NOT NULL,
    faehbez character varying(35) NOT NULL
);


ALTER TABLE public."fähigkeit" OWNER TO postgres;

--
-- Name: kind; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kind (
    kvname character varying(45) NOT NULL,
    kgebdat date NOT NULL,
    kgeschl character varying(1) NOT NULL,
    pnr integer NOT NULL
);


ALTER TABLE public.kind OWNER TO postgres;

--
-- Name: kostenstelle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kostenstelle (
    kstnr character varying(4) NOT NULL,
    kstbez character varying(35) NOT NULL
);


ALTER TABLE public.kostenstelle OWNER TO postgres;

--
-- Name: mafaeh; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mafaeh (
    pnr integer NOT NULL,
    faehnr integer NOT NULL,
    fgradp character varying(1) NOT NULL
);


ALTER TABLE public.mafaeh OWNER TO postgres;

--
-- Name: mitarbeiter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mitarbeiter (
    pnr integer NOT NULL,
    pfname character varying(20) NOT NULL,
    pvname character varying(20) NOT NULL,
    pansstrn character varying(20) NOT NULL,
    pansplz character varying(5) NOT NULL,
    pansort character varying(20) NOT NULL,
    paustdat date,
    pgebdat date NOT NULL,
    pgebname character varying(45) NOT NULL,
    ptitel character varying(45),
    pstkl integer,
    peindat date NOT NULL,
    pkonf character varying(1) NOT NULL,
    pgehsum numeric(9,2) NOT NULL,
    pgstuv numeric(5,2) NOT NULL,
    pgmofrei numeric(9,2) NOT NULL,
    stnr character varying(5) NOT NULL
);


ALTER TABLE public.mitarbeiter OWNER TO postgres;

--
-- Name: stelle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stelle (
    stnr character varying(5) NOT NULL,
    stbez character varying(35) NOT NULL,
    kstnr character varying(4) NOT NULL,
    taetnr integer NOT NULL
);


ALTER TABLE public.stelle OWNER TO postgres;

--
-- Name: stellfae; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stellfae (
    stnr character varying(5) NOT NULL,
    faehnr integer NOT NULL,
    fgrads character varying(1) NOT NULL
);


ALTER TABLE public.stellfae OWNER TO postgres;

--
-- Name: taetfae; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taetfae (
    taetnr integer NOT NULL,
    faehnr integer NOT NULL,
    fgradt character varying(30)
);


ALTER TABLE public.taetfae OWNER TO postgres;

--
-- Name: tätigkeit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tätigkeit" (
    taetnr integer NOT NULL,
    taetbez character varying(35) NOT NULL,
    taettext character varying(50) NOT NULL
);


ALTER TABLE public."tätigkeit" OWNER TO postgres;

--
-- Data for Name: fähigkeit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."fähigkeit" (faehnr, faehbez) VALUES (1, 'DB_Admin');
INSERT INTO public."fähigkeit" (faehnr, faehbez) VALUES (2, 'MS_Admin');
INSERT INTO public."fähigkeit" (faehnr, faehbez) VALUES (3, 'LX_Admin');
INSERT INTO public."fähigkeit" (faehnr, faehbez) VALUES (4, 'AX_Admin');
INSERT INTO public."fähigkeit" (faehnr, faehbez) VALUES (5, 'SR_Admin');


--
-- Data for Name: kind; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kind (kvname, kgebdat, kgeschl, pnr) VALUES ('Jeremy-Pascal', '2017-01-01', 'w', 1);
INSERT INTO public.kind (kvname, kgebdat, kgeschl, pnr) VALUES ('Jacqueline-Rualita', '2017-12-01', 'w', 1);
INSERT INTO public.kind (kvname, kgebdat, kgeschl, pnr) VALUES ('Lukas', '1997-05-23', 'm', 3);
INSERT INTO public.kind (kvname, kgebdat, kgeschl, pnr) VALUES ('Delilah', '2003-02-28', 'w', 5);
INSERT INTO public.kind (kvname, kgebdat, kgeschl, pnr) VALUES ('Roger', '2001-10-10', 'm', 2);


--
-- Data for Name: kostenstelle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kostenstelle (kstnr, kstbez) VALUES ('0001', 'trainee');
INSERT INTO public.kostenstelle (kstnr, kstbez) VALUES ('0002', 'junior');
INSERT INTO public.kostenstelle (kstnr, kstbez) VALUES ('0003', 'resident');
INSERT INTO public.kostenstelle (kstnr, kstbez) VALUES ('0004', 'senior');
INSERT INTO public.kostenstelle (kstnr, kstbez) VALUES ('0005', 'management');


--
-- Data for Name: mafaeh; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.mafaeh (pnr, faehnr, fgradp) VALUES (1, 1, 'a');
INSERT INTO public.mafaeh (pnr, faehnr, fgradp) VALUES (2, 3, 'b');
INSERT INTO public.mafaeh (pnr, faehnr, fgradp) VALUES (2, 5, 'c');
INSERT INTO public.mafaeh (pnr, faehnr, fgradp) VALUES (1, 3, 'd');
INSERT INTO public.mafaeh (pnr, faehnr, fgradp) VALUES (4, 1, 'e');


--
-- Data for Name: mitarbeiter; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (1, 'Maier', 'Roland', 'Baustraße 1', '30459', 'Adorf', NULL, '1988-04-02', 'Müller', NULL, 3, '1997-12-10', 'E', 2342.67, 19.20, 210.39, '00002');
INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (2, 'Müller', 'Trude', 'ABC-Straße 1', '09283', 'Plauen', NULL, '1897-05-12', 'Müller', NULL, 1, '1997-12-11', 'E', 575.67, 19.20, 2033.39, '00003');
INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (3, 'Assmann', 'Lukas', 'Hollerweg 1', '18734', 'Bheim', NULL, '2012-08-02', 'Müller', NULL, 5, '1997-12-12', 'E', 231.67, 2.20, 201.39, '00005');
INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (4, 'Reich', 'Caroline', 'Siemensallee 1', '75862', 'Weiler', NULL, '1977-04-23', 'Müller', NULL, 4, '1997-12-13', 'E', 5421.67, 1.20, 230.39, '00001');
INSERT INTO public.mitarbeiter (pnr, pfname, pvname, pansstrn, pansplz, pansort, paustdat, pgebdat, pgebname, ptitel, pstkl, peindat, pkonf, pgehsum, pgstuv, pgmofrei, stnr) VALUES (5, 'Specht', 'Stefan', 'Wesselyring 1', '52836', 'Fessenheim', NULL, '1989-04-02', 'Müller', NULL, 2, '1997-12-14', 'E', 6632.67, 12.00, 270.39, '00004');


--
-- Data for Name: stelle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stelle (stnr, stbez, kstnr, taetnr) VALUES ('00001', 'Administrator1', '0001', 1);
INSERT INTO public.stelle (stnr, stbez, kstnr, taetnr) VALUES ('00002', 'Administrator2', '0002', 2);
INSERT INTO public.stelle (stnr, stbez, kstnr, taetnr) VALUES ('00003', 'Administrator3', '0003', 3);
INSERT INTO public.stelle (stnr, stbez, kstnr, taetnr) VALUES ('00004', 'Administrator4', '0004', 4);
INSERT INTO public.stelle (stnr, stbez, kstnr, taetnr) VALUES ('00005', 'Administrator5', '0005', 5);


--
-- Data for Name: stellfae; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stellfae (stnr, faehnr, fgrads) VALUES ('00001', 1, 'a');
INSERT INTO public.stellfae (stnr, faehnr, fgrads) VALUES ('00002', 3, 'b');
INSERT INTO public.stellfae (stnr, faehnr, fgrads) VALUES ('00003', 5, 'c');
INSERT INTO public.stellfae (stnr, faehnr, fgrads) VALUES ('00004', 3, 'd');
INSERT INTO public.stellfae (stnr, faehnr, fgrads) VALUES ('00005', 1, 'e');


--
-- Data for Name: taetfae; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.taetfae (taetnr, faehnr, fgradt) VALUES (1, 1, 'good');
INSERT INTO public.taetfae (taetnr, faehnr, fgradt) VALUES (2, 3, 'excellent');
INSERT INTO public.taetfae (taetnr, faehnr, fgradt) VALUES (2, 5, 'medium');
INSERT INTO public.taetfae (taetnr, faehnr, fgradt) VALUES (1, 3, 'beginner');
INSERT INTO public.taetfae (taetnr, faehnr, fgradt) VALUES (4, 1, 'expert');


--
-- Data for Name: tätigkeit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."tätigkeit" (taetnr, taetbez, taettext) VALUES (1, 'Büroklammern biegen', 'Büroklammern biegen bis zum Abwinken');
INSERT INTO public."tätigkeit" (taetnr, taetbez, taettext) VALUES (2, 'Übersetzen Klingonisch', 'Übersetzen ins Klingonische');
INSERT INTO public."tätigkeit" (taetnr, taetbez, taettext) VALUES (3, 'Kaffee holen', 'Aber nur den mit sehr viel Koffein!');
INSERT INTO public."tätigkeit" (taetnr, taetbez, taettext) VALUES (4, 'Kryptografie entwickeln', 'Entwicklung neuer kryptografischer Systeme');
INSERT INTO public."tätigkeit" (taetnr, taetbez, taettext) VALUES (5, 'Dozent an der Uni', 'Dozieren Sie 40 Stunden pro Woche in Mathe');


--
-- Name: fähigkeit fähigkeit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."fähigkeit"
    ADD CONSTRAINT "fähigkeit_pkey" PRIMARY KEY (faehnr);


--
-- Name: kind kind_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kind
    ADD CONSTRAINT kind_pkey PRIMARY KEY (kvname, pnr);


--
-- Name: kostenstelle kostenstelle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kostenstelle
    ADD CONSTRAINT kostenstelle_pkey PRIMARY KEY (kstnr);


--
-- Name: mafaeh mafaeh_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mafaeh
    ADD CONSTRAINT mafaeh_pkey PRIMARY KEY (pnr, faehnr);


--
-- Name: mitarbeiter mitarbeiter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mitarbeiter
    ADD CONSTRAINT mitarbeiter_pkey PRIMARY KEY (pnr);


--
-- Name: stelle stelle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stelle
    ADD CONSTRAINT stelle_pkey PRIMARY KEY (stnr);


--
-- Name: stellfae stellfae_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stellfae
    ADD CONSTRAINT stellfae_pkey PRIMARY KEY (stnr, faehnr);


--
-- Name: taetfae taetfae_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taetfae
    ADD CONSTRAINT taetfae_pkey PRIMARY KEY (taetnr, faehnr);


--
-- Name: tätigkeit tätigkeit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tätigkeit"
    ADD CONSTRAINT "tätigkeit_pkey" PRIMARY KEY (taetnr);


--
-- Name: kind kind_pnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kind
    ADD CONSTRAINT kind_pnr_fkey FOREIGN KEY (pnr) REFERENCES public.mitarbeiter(pnr) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: mafaeh mafaeh_faehnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mafaeh
    ADD CONSTRAINT mafaeh_faehnr_fkey FOREIGN KEY (faehnr) REFERENCES public."fähigkeit"(faehnr) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: mafaeh mafaeh_pnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mafaeh
    ADD CONSTRAINT mafaeh_pnr_fkey FOREIGN KEY (pnr) REFERENCES public.mitarbeiter(pnr) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: mitarbeiter mitarbeiter_stnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mitarbeiter
    ADD CONSTRAINT mitarbeiter_stnr_fkey FOREIGN KEY (stnr) REFERENCES public.stelle(stnr) ON DELETE RESTRICT;


--
-- Name: stelle stelle_kstnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stelle
    ADD CONSTRAINT stelle_kstnr_fkey FOREIGN KEY (kstnr) REFERENCES public.kostenstelle(kstnr) ON DELETE RESTRICT;


--
-- Name: stelle stelle_taetnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stelle
    ADD CONSTRAINT stelle_taetnr_fkey FOREIGN KEY (taetnr) REFERENCES public."tätigkeit"(taetnr) ON DELETE RESTRICT;


--
-- Name: stellfae stellfae_faehnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stellfae
    ADD CONSTRAINT stellfae_faehnr_fkey FOREIGN KEY (faehnr) REFERENCES public."fähigkeit"(faehnr) ON DELETE CASCADE;


--
-- Name: stellfae stellfae_stnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stellfae
    ADD CONSTRAINT stellfae_stnr_fkey FOREIGN KEY (stnr) REFERENCES public.stelle(stnr) ON DELETE CASCADE;


--
-- Name: taetfae taetfae_faehnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taetfae
    ADD CONSTRAINT taetfae_faehnr_fkey FOREIGN KEY (faehnr) REFERENCES public."fähigkeit"(faehnr) ON DELETE CASCADE;


--
-- Name: taetfae taetfae_taetnr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taetfae
    ADD CONSTRAINT taetfae_taetnr_fkey FOREIGN KEY (taetnr) REFERENCES public."tätigkeit"(taetnr) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

