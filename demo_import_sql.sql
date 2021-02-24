--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: dataset1; Type: TABLE; Schema: public; Owner: pfd; Tablespace: 
--

CREATE TABLE dataset1 (
    pid character varying(11) NOT NULL,
    u_id character varying(15) NOT NULL,
    pname character varying(50) NOT NULL,
    helpful character varying(5) NOT NULL,
    score character varying(3) NOT NULL,
    summary character varying(65) NOT NULL,
    text character varying(2308) NOT NULL
);


ALTER TABLE dataset1 OWNER TO pfd;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: recom_iprefi; Type: TABLE; Schema: public; Owner: pfd; Tablespace: 
--

CREATE TABLE recom_iprefi (
    id integer NOT NULL,
    userid character(15) NOT NULL,
    itemp character(11) NOT NULL,
    scorep character(4)
);


ALTER TABLE recom_iprefi OWNER TO pfd;

--
-- Name: recom_iprefi_id_seq; Type: SEQUENCE; Schema: public; Owner: pfd
--

CREATE SEQUENCE recom_iprefi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recom_iprefi_id_seq OWNER TO pfd;

--
-- Name: recom_iprefi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pfd
--

ALTER SEQUENCE recom_iprefi_id_seq OWNED BY recom_iprefi.id;


--
-- Name: recom_uprefi; Type: TABLE; Schema: public; Owner: pfd; Tablespace: 
--

CREATE TABLE recom_uprefi (
    id integer NOT NULL,
    userid character varying(10) NOT NULL,
    userp character varying(40) NOT NULL
);


ALTER TABLE recom_uprefi OWNER TO pfd;

--
-- Name: recom_uprefi_id_seq; Type: SEQUENCE; Schema: public; Owner: pfd
--

CREATE SEQUENCE recom_uprefi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recom_uprefi_id_seq OWNER TO pfd;

--
-- Name: recom_uprefi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pfd
--

ALTER SEQUENCE recom_uprefi_id_seq OWNED BY recom_uprefi.id;


--
-- Name: recom_userprofile; Type: TABLE; Schema: public; Owner: pfd; Tablespace: 
--

CREATE TABLE recom_userprofile (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    password character varying(16) NOT NULL,
    userid character varying(14) NOT NULL,
    scoreop character varying(3) NOT NULL,
    last_login date NOT NULL,
    date_joined date NOT NULL
);


ALTER TABLE recom_userprofile OWNER TO pfd;

--
-- Name: recom_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: pfd
--

CREATE SEQUENCE recom_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recom_userprofile_id_seq OWNER TO pfd;

--
-- Name: recom_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pfd
--

ALTER SEQUENCE recom_userprofile_id_seq OWNED BY recom_userprofile.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pfd
--

ALTER TABLE ONLY recom_iprefi ALTER COLUMN id SET DEFAULT nextval('recom_iprefi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pfd
--

ALTER TABLE ONLY recom_uprefi ALTER COLUMN id SET DEFAULT nextval('recom_uprefi_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pfd
--

ALTER TABLE ONLY recom_userprofile ALTER COLUMN id SET DEFAULT nextval('recom_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
22	Can add uprefi	8	add_uprefi
23	Can change uprefi	8	change_uprefi
24	Can delete uprefi	8	delete_uprefi
25	Can add iprefi	9	add_iprefi
26	Can change iprefi	9	change_iprefi
27	Can delete iprefi	9	delete_iprefi
31	Can add user profile	11	add_userprofile
32	Can change user profile	11	change_userprofile
33	Can delete user profile	11	delete_userprofile
34	Can add dataset1	12	add_dataset1
35	Can change dataset1	12	change_dataset1
36	Can delete dataset1	12	delete_dataset1
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$20000$8QYlmtTkRIVN$H56nAWLJEKFCgJ5lL18sgyrKGVPj72JRwrG0s5nVTVM=	\N	f	vineethasok				f	t	2015-09-27 00:07:08.982408+05:30
3		\N	f	v1				f	t	2015-10-01 19:47:08.662108+05:30
4	pbkdf2_sha256$20000$5eOF6zYaXChX$fniesHQ9mFmLNwoz7aDYkhkY41kPEmDnXfdVokdTnJA=	2015-10-01 23:17:20.947946+05:30	f	v2				f	t	2015-10-01 19:48:48.392697+05:30
1	pbkdf2_sha256$20000$PKD8AxZicDXU$L68ALVDSARPX1WDgEamxt5jMeUa9H8b2uspKXLYafVM=	2015-10-01 23:24:30.395888+05:30	t	pfd			asokvineeth93@gmail.com	t	t	2015-09-26 12:35:53.360124+05:30
6	pbkdf2_sha256$20000$UVQsdNrjV44V$+IM1zVmgh8kH0jU2f/UcGm70PMehKYVt3hj6CPSL4Lw=	2015-10-02 00:05:28.968776+05:30	f	vinu				f	t	2015-10-02 00:05:21.212236+05:30
7	pbkdf2_sha256$20000$bCKBsdJQbmtu$SRcxIMZNE6UYb7hkOKZZwGLvNGVhmokliLUnW78cVx8=	2015-10-02 10:50:44.474189+05:30	f	vinu22				f	t	2015-10-02 10:50:08.183046+05:30
9	pbkdf2_sha256$20000$VJMpLbao2Hjb$HFmtaqpLOB6lN+Ns6KOKeKe7YxniLuQPZLrR2qEiWPM=	2015-10-02 13:09:43.217705+05:30	f	vinu321				f	t	2015-10-02 13:09:35.526849+05:30
10	pbkdf2_sha256$20000$h744yBpoX9hk$FTqQjFnnTMg8gXb/K5YjDOCY+tkk3YflugCj1gyEBoU=	2015-10-02 15:08:05.193661+05:30	f	varsha				f	t	2015-10-02 15:07:57.929316+05:30
11	pbkdf2_sha256$20000$TssKmRkq8pHb$FILAqm3VUMXLOfLV+oZI12t2cbw8U+dtexErPLpbHzw=	2015-10-02 16:02:36.481917+05:30	f	varsh				f	t	2015-10-02 15:44:46.40005+05:30
5	pbkdf2_sha256$20000$xkYg8tbpFSta$3SCBtZdsMiZT87VbWN0Degqyw0ibXJ8LlTKw6Vq/6YE=	2015-10-02 16:36:35.894586+05:30	f	v3				f	t	2015-10-01 23:40:39.123186+05:30
8	pbkdf2_sha256$20000$UGerlcWwaZk9$hmCoZvGDT+1cBpa9aXubt3JEbd9PAajYWnuqwtuNXXg=	2015-10-02 20:03:39.434681+05:30	f	vinu123				f	t	2015-10-02 12:18:22.030395+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 11, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: dataset1; Type: TABLE DATA; Schema: public; Owner: pfd
--

COPY dataset1 (pid, u_id, pname, helpful, score, summary, text) FROM stdin;
B001E4KFG0	A3SGXH7AUHU8GW	delmartian	1/1	5.0	Good Quality Dog Food	I have bought several of the Vitality canned dog food products and have found them all to be of good quality. The product looks more like a stew than a processed meat and it smells better. My Labrador is finicky and she appreciates this product better than  most.
B00813GRG4	A1D87F6ZCVE5NK	dll pa	0/0	1.0	Not as Advertised	Product arrived labeled as Jumbo Salted Peanuts...the peanuts were actually small sized unsalted. Not sure if this was an error or if the vendor intended to represent the product as "Jumbo".
B000LQOCH0	ABXLMWJIXXAIN	Natalia Corres "Natalia Corres"	1/1	4.0	Delight	This is a confection that has been around a few centuries.  It is a light, pillowy citrus gelatin with nuts - in this case Filberts. And it is cut into tiny squares and then liberally coated with powdered sugar.  And it is a tiny mouthful of heaven.  Not too chewy, and very flavorful.  I highly recommend this yummy treat.  If you are familiar with the story of C.S. Lewis' "The Lion, The Witch, and The Wardrobe" - this is the treat that seduces Edmund into selling out his Brother and Sisters to the Witch.
B000UA0QIQ	A395BORC6FGVXV	Karl	3/3	2.0	Cough Medicine	If you are looking for the secret ingredient in Robitussin I believe I have found it.  I got this in addition to the Root Beer Extract I ordered (which was good) and made some cherry soda.  The flavor is very medicinal.
B006K2ZZ7K	A1UQRSCLF8GW1T	Michael D. Bigham "M. Wassir"	0/0	5.0	Great taffy	Great taffy at a great price.  There was a wide assortment of yummy taffy.  Delivery was very quick.  If your a taffy lover, this is a deal.
B006K2ZZ7K	ADT0SRK1MGOEU	Twoapennything	0/0	4.0	Nice Taffy	I got a wild hair for taffy and ordered this five pound bag. The taffy was all very enjoyable with many flavors: watermelon, root beer, melon, peppermint, grape, etc. My only complaint is there was a bit too much red/black licorice-flavored pieces (just not my particular favorites). Between me, my kids, and my husband, this lasted only two weeks! I would recommend this brand of taffy -- it was a delightful treat.
B006K2ZZ7K	A1SP2KVKFXXRU1	David C. Sullivan	0/0	5.0	Great!  Just as good as the expensive brands!	This saltwater taffy had great flavors and was very soft and chewy.  Each candy was individually wrapped well.  None of the candies were stuck together, which did happen in the expensive version, Fralinger's.  Would highly recommend this candy!  I served it at a beach-themed party and everyone loved it!
B006K2ZZ7K	A3JRGQVEQN31IQ	Pamela G. Williams	0/0	5.0	Wonderful, tasty taffy	This taffy is so good.  It is very soft and chewy.  The flavors are amazing.  I would definitely recommend you buying it.  Very satisfying!!
B000E7L2R4	A1MZYO9TZK0BBI	R. James	1/1	5.0	Yay Barley	Right now I'm mostly just sprouting this so my cats can eat the grass. They love it. I rotate it around with Wheatgrass and Rye too
B00171APVA	A21BT40VZCCYT4	Carol A. Reed	0/0	5.0	Healthy Dog Food	This is a very healthy dog food. Good for their digestion. Also good for small puppies. My dog eats her required amount at every feeding.
B0001PB9FE	A3HDKO7OW0QNK4	Canadian Fan	1/1	5.0	The Best Hot Sauce in the World	I don't know if it's the cactus or the tequila or just the unique combination of ingredients, but the flavour of this hot sauce makes it one of a kind!  We picked up a bottle once on a trip we were on and brought it back home with us and were totally blown away!  When we realized that we simply couldn't find it anywhere in our city we were bummed.<br /><br />Now, because of the magic of the internet, we have a case of the sauce and are ecstatic because of it.<br /><br />If you love hot sauce..I mean really love hot sauce, but don't want a sauce that tastelessly burns your throat, grab a bottle of Tequila Picante Gourmet de Inclan.  Just realize that once you taste it, you will never want to use any other sauce.<br /><br />Thank you for the personal, incredible service!
B0009XLVG0	A2725IB4YY9JEB	A Poeng "SparkyGoHome"	4/4	5.0	My cats LOVE this "diet" food better than their regular food	One of my boys needed to lose some weight and the other didn't.  I put this food on the floor for the chubby guy, and the protein-rich, no by-product food up higher where only my skinny boy can jump.  The higher food sits going stale.  They both really go for this food.  And my chubby boy has been losing about an ounce a week.
B0009XLVG0	A327PCT23YH90	LT	1/1	1.0	My Cats Are Not Fans of the New Food	My cats have been happily eating Felidae Platinum for more than two years. I just got a new bag and the shape of the food is different. They tried the new food when I first put it in their bowls and now the bowls sit full and the kitties will not touch the food. I've noticed similar reviews related to formula changes in the past. Unfortunately, I now need to find a new food that my cats will eat.
B001GVISJM	A18ECVX2RJ7HUE	willie "roadie"	2/2	4.0	fresh and greasy!	good flavor! these came securely packed... they were fresh and delicious! i love these Twizzlers!
B001GVISJM	A2MUGFV2TDQ47K	Lynrie "Oh HELL no"	4/5	5.0	Strawberry Twizzlers - Yummy	The Strawberry Twizzlers are my guilty pleasure - yummy. Six pounds will be around for a while with my son and I.
B001GVISJM	A1CZX3CP8IKQIJ	Brian A. Lee	4/5	5.0	Lots of twizzlers, just what you expect.	My daughter loves twizzlers and this shipment of six pounds really hit the spot. It's exactly what you would expect...six packages of strawberry twizzlers.
B001GVISJM	A3KLWF6WQ5BNYO	Erica Neathery	0/0	2.0	poor taste	I love eating them and they are good for watching TV and looking at movies! It is not too sweet. I like to transfer them to a zip lock baggie so they stay fresh so I can take my time eating them.
B001GVISJM	AFKW14U97Z6QO	Becca	0/0	5.0	Love it!	I am very satisfied with my Twizzler purchase.  I shared these with others and we have all enjoyed them.  I will definitely be ordering more.
B001GVISJM	A2A9X58G2GTBLP	Wolfee1	0/0	5.0	GREAT SWEET CANDY!	Twizzlers, Strawberry my childhood favorite candy, made in Lancaster Pennsylvania by Y & S Candies, Inc. one of the oldest confectionery Firms in the United States, now a Subsidiary of the Hershey Company, the Company was established in 1845 as Young and Smylie, they also make Apple Licorice Twists, Green Color and Blue Raspberry Licorice Twists, I like them all<br /><br />I keep it in a dry cool place because is not recommended it to put it in the fridge. According to the Guinness Book of Records, the longest Licorice Twist ever made measured 1.200 Feet (370 M) and weighted 100 Pounds (45 Kg) and was made by Y & S Candies, Inc. This Record-Breaking Twist became a Guinness World Record on July 19, 1998. This Product is Kosher! Thank You
B001GVISJM	A3IV7CL2C13K2U	Greg	0/0	5.0	Home delivered twizlers	Candy was delivered very fast and was purchased at a reasonable price.  I was home bound and unable to get to a store so this was perfect for me.
B001GVISJM	A1WO0KGLPR5PV6	mom2emma	0/0	5.0	Always fresh	My husband is a Twizzlers addict.  We've bought these many times from Amazon because we're government employees living overseas and can't get them in the country we are assigned to.  They've always been fresh and tasty, packed well and arrive in a timely manner.
B001GVISJM	AZOF9E17RGZH8	Tammy Anderson	0/0	5.0	TWIZZLERS	I bought these for my husband who is currently overseas. He loves these, and apparently his staff likes them also.<br />There are generous amounts of Twizzlers in each 16-ounce bag, and this was well worth the price. <a href="http://www.amazon.com/gp/product/B001GVISJM">Twizzlers, Strawberry, 16-Ounce Bags (Pack of 6)</a>
B001GVISJM	ARYVQL4N737A1	Charles Brown	0/0	5.0	Delicious product!	I can remember buying this candy as a kid and the quality hasn't dropped in all these years. Still a superb product you won't be disappointed with.
B001GVISJM	AJ613OLZZUG7V	Mare's	0/0	5.0	Twizzlers	I love this candy.  After weight watchers I had to cut back but still have a craving for it.
B001GVISJM	A22P2J09NJ9HKE	S. Cabanaugh "jilly pepper"	0/0	5.0	Please sell these in Mexico!!	I have lived out of the US for over 7 yrs now, and I so miss my Twizzlers!!  When I go back to visit or someone visits me, I always stock up.  All I can say is YUM!<br />Sell these in Mexico and you will have a faithful buyer, more often than I'm able to buy them right now.
B001GVISJM	A3FONPR03H3PJS	Deborah S. Linzer "Cat Lady"	0/0	5.0	Twizzlers - Strawberry	Product received is as advertised.<br /><br /><a href="http://www.amazon.com/gp/product/B001GVISJM">Twizzlers, Strawberry, 16-Ounce Bags (Pack of 6)</a>
B001GVISJM	A3RXAU2N8KV45G	lady21	0/1	1.0	Nasty No flavor	The candy is just red , No flavor . Just  plan and chewy .  I would never buy them again
B001GVISJM	AAAS38B98HMIK	Heather Dube	0/1	4.0	Great Bargain for the Price	I was so glad Amazon carried these batteries.  I have a hard time finding them elsewhere because they are such a unique size.  I need them for my garage door opener.<br />Great deal for the price.
B00144C10S	A2F4LZVGFLD1OB	DaisyH	0/0	5.0	YUMMY!	I got this for my Mum who is not diabetic but needs to watch her sugar intake, and my father who simply chooses to limit unnecessary sugar intake - she's the one with the sweet tooth - they both LOVED these toffees, you would never guess that they're sugar-free and it's so great that you can eat them pretty much guilt free!  i was so impressed that i've ordered some for myself (w dark chocolate) to take to the office so i'll eat them instead of snacking on sugary sweets.<br />These are just EXCELLENT!
B0001PB9FY	A3HDKO7OW0QNK4	Canadian Fan	1/1	5.0	The Best Hot Sauce in the World	I don't know if it's the cactus or the tequila or just the unique combination of ingredients, but the flavour of this hot sauce makes it one of a kind!  We picked up a bottle once on a trip we were on and brought it back home with us and were totally blown away!  When we realized that we simply couldn't find it anywhere in our city we were bummed.<br /><br />Now, because of the magic of the internet, we have a case of the sauce and are ecstatic because of it.<br /><br />If you love hot sauce..I mean really love hot sauce, but don't want a sauce that tastelessly burns your throat, grab a bottle of Tequila Picante Gourmet de Inclan.  Just realize that once you taste it, you will never want to use any other sauce.<br /><br />Thank you for the personal, incredible service!
B003F6UO7K	AFM0O9480F04W	Sherril	0/0	5.0	Great machine!	I have never been a huge coffee fan. However, my mother purchased this little machine and talked me into trying the Latte Macciato. No Coffee Shop has a better one and I like most of the other products, too (as a usually non-coffee drinker!).<br />The little Dolche Guesto Machine is super easy to use and prepares a really good Coffee/Latte/Cappuccino/etc in less than a minute (if water is heated up). I would recommend the Dolce Gusto to anyone. Too good for the price and I'am getting one myself! :)
B003F6UO7K	A31OQO709M20Y7	Molly V. Smith "staral"	0/1	5.0	THIS IS MY TASTE...	This offer is a great price and a great taste, thanks Amazon for selling this product.<br /><br />Staral
B001EO5QW8	AOVROBZ8BNTP7	S. Potter	19/19	4.0	Best of the Instant Oatmeals	McCann's Instant Oatmeal is great if you must have your oatmeal but can only scrape together two or three minutes to prepare it. There is no escaping the fact, however, that even the best instant oatmeal is nowhere near as good as even a store brand of oatmeal requiring stovetop preparation.  Still, the McCann's is as good as it gets for instant oatmeal. It's even better than the organic, all-natural brands I have tried.  All the varieties in the McCann's variety pack taste good.  It can be prepared in the microwave or by adding boiling water so it is convenient in the extreme when time is an issue.<br /><br />McCann's use of actual cane sugar instead of high fructose corn syrup helped me decide to buy this product.  Real sugar tastes better and is not as harmful as the other stuff. One thing I do not like, though, is McCann's use of thickeners.  Oats plus water plus heat should make a creamy, tasty oatmeal without the need for guar gum. But this is a convenience product.  Maybe the guar gum is why, after sitting in the bowl a while, the instant McCann's becomes too thick and gluey.
B001EO5QW8	A3PMM0NFVEJGK9	Megan "Bad at Nicknames"	13/13	4.0	Good Instant	This is a good instant oatmeal from the best oatmeal brand.  It uses cane sugar instead of high fructouse corn syrup, so not only does it have a better sweetness, but some doctors now say that this form of sugar is better for you.  Great on a cold morning when you don't have time to make McCann's Steel Cut Oats.  The apple cinnamon is the best but the maple and brown sugar or the regular are good too.  Plus they don't require doctoring to actually tell the three flavors apart.
B001EO5QW8	A2EB6OGOWCRU5H	CorbyJames	9/9	5.0	Great Irish oatmeal for those in a hurry!	Instant oatmeal can become soggy the minute the water hits the bowl. McCann's Instant Oatmeal holds its texture, has excellent flavor, and is good for you all at the same time. McCann's regular oat meal is excellent, too, but may take a bit longer to prepare than most have time for in the morning. This is the best instant brand I've ever eaten, and a very close second to the non-instant variety.<br /><br />McCann's Instant Irish Oatmeal, Variety Pack of Regular, Apples & Cinnamon, and Maple & Brown Sugar, 10-Count Boxes (Pack of 6)
B001EO5QW8	A2CI0RLADCRKPF	T. J. Ryan	3/3	4.0	satisfying	McCann's Instant Irish Oatmeal, Variety Pack of Regular, Apples & Cinnamon, and Maple & Brown Sugar, 10-Count Boxes (Pack of 6)<br /><br />I'm a fan of the McCann's steel-cut oats, so I thought I'd give the instant variety a try. I found it to be a hardy meal, not too sweet, and great for folks like me (post-bariatric surgery) who need food that is palatable, easily digestible, with fiber but won't make you bloat.
B001EO5QW8	A1MYS9LFFBIYKM	Abby Chase "gluten free"	2/2	5.0	Love Gluten Free Oatmeal!!!	For those of us with celiac disease this product is a lifesaver and what could be better than getting it at almost half the price of the grocery or health food store!  I love McCann's instant oatmeal - all flavors!!!<br /><br />Thanks,<br />Abby
B001EO5QW8	A3MGP2E1ZZ6GRB	Zardoz "focuspuller"	1/1	5.0	it's oatmeal	What else do you need to know? Oatmeal, instant (make it with a half cup of low-fat milk and add raisins,nuke for 90 seconds). More expensive than Kroger store brand oatmeal and maybe a little tastier or better texture or something. It's still just oatmeal. Mmm, convenient!
B001EO5QW8	A2GHZ2UTV2B0CD	JERRY REITH	0/0	4.0	GOOD WAY TO START THE DAY....	I WAS VISITING MY FRIEND NATE THE OTHER MORNING FOR COFFEE , HE CAME OUT OF HIS STORAGE ROOM WITH ( A PACKET OF McCANNS INSTANT IRISH OATMEAL .) HE SUGGESTED THAT I TRY IT FOR MY OWN USE ,IN MY STASH . SOMETIMES NATE DOSE NOT GIVE YOU A CHANCE TO SAY NO , SO I ENDED UP TRYING THE APPLE AND CINN . FOUND IT TO BE VERY TASTEFULL WHEN MADE WITH WATER OR POWDERED MILK . IT GOES GOOD WITH O.J. AND COFFEE AND A SLICE OF TOAST AND YOUR READY TO TAKE ON THE WORLD...OR THE DAY AT LEAST..  JERRY REITH...
B001EO5QW8	AO80AC8313NIZ	kYpondman	0/0	5.0	Wife's favorite Breakfast	I ordered this for my wife as it was reccomended by our daughter.  She has this almost every morning and likes all flavors.  She's happy, I'm happy!!!<br /><a href="http://www.amazon.com/gp/product/B001EO5QW8">McCANN'S Instant Irish Oatmeal, Variety Pack of Regular, Apples & Cinnamon, and Maple & Brown Sugar, 10-Count Boxes (Pack of 6)</a>
B001EO5QW8	AQCY5KRO7489S	Garrett	0/0	5.0	Why wouldn't you buy oatmeal from Mcanns? Tastes great!	The variety packs taste great!<br /><br />I have them every morning. At $0.30 cents per meal, I don't understand why everyone on earth isn't buying this stuff up.<br /><br />Maple and brown sugar is terrific, followed by apples and cinnamon, followed by regular. You don't get tired of the same ole thing, and they taste great.<br /><br />I just boil water from a small pot, empty the packet or 2 in a bowl, pour in boiling water, and watch it expand to 2x its size!<br /><br />Taste really good and takes minutes to prepare.<br /><br />Not sure why everyone on earth isn't this. Convenient, healthy, very quick, excellent quality, and extremely cheap...
B001EO5QW8	A1WK4ALVZDYPUE	Dick Baldwin "christobe"	0/0	5.0	Oatmeal For Oatmeal Lovers	McCann's makes oatmeal for every oatmeal connoisseur, whether one likes it from the raw pellet state that cooks for half an hour, to the sloth addled instant, which can be done in the microwave for under three minutes. It's all good, that's for sure, and the beauty of the instant variety is that it is available in different flavors as well as regular.<br />  This variety pack allows different tastes to be explored, as well as giving you a chance to experience the difference between McCann's and other well-known oatmeals. What I personally like about McCann's is that it cooks up thicker and with more body than the top brand here in America. The Apples & Cinnamon, though, tends to be a little liqu_idy so you may want to experiment with the amount of water you add. In my 1300watt microwave the oatmeal cooks up in about one minute and twenty-seven seconds, so you should also watch that to get a handle on how much time and water to use.<br />  The only bad thing -- if you can consider it a bad thing -- about this offering is that you have to buy in lot so you'll end up with six ten-count boxes. This is good if you have a whole family of oatmeal-eaters, but if you're a single person alone -- well, love oatmeal.
B001EO5QW8	A16XFOYQSJREL7	Roger Pugliese	0/0	5.0	Food-Great	I have McCann's Oatmeal every morning and by ordering it from Amazon I am able to save almost $3.00 per box.<br />It is a great product. Tastes great and very healthy
B001EO5QW8	A17DW6SUOC70DJ	Mother of 9	0/0	5.0	Good Hot Breakfast	McCann's Oatmeal is a good quality choice.  Our favorite is the Apples and Cinnamon, but we find that none of these are overly sugary.  For a good hot breakfast in 2 minutes, this is excellent.
B001EO5QW8	A2G7B7FKP2O2PU	D. Leschke	0/0	5.0	Great taste and convenience	We really like the McCann's steel cut oats but find we don't cook it up too often.<br />This tastes much better to me than the grocery store brands and is just as convenient.<br />Anything that keeps me eating oatmeal regularly is a good thing.
B001EO5QW8	A39Z97950MCTQE	K. A. Freel	0/0	3.0	Hearty Oatmeal	This seems a little more wholesome than some of the supermarket brands, but it is somewhat mushy and doesn't have quite as much flavor either.  It didn't pass muster with my kids, so I probably won't buy it again.
B001EO5QW8	AQLL2R1PPR46X	grumpyrainbow	0/0	5.0	good	Good oatmeal.  I like the apple cinnamon the best.  Though I wouldn't follow the directions on the package since it always comes out too soupy for my taste.  That could just be me since I like my oatmeal really thick to add some milk on top of.
B001EO5QW8	A26AY1TFK8BQXQ	kbogo "shoelover"	1/2	3.0	Mushy	The flavors are good.  However, I do not see any differce between this and Oaker Oats brand - they are both mushy.
B001EO5QW8	ALOR97KTZTK1P	knitty pants	1/2	4.0	Very good but next time I won't order the Variety Pack	I really like the Maple and Brown Sugar flavor. The regular is fine with brown sugar added. The Apples and Cinnamon flavor is OK. This is a very quick, easy and satisfying breakfast and I'll order this brand again, but not the variety. I'll get all Maple and Brown Sugar.
B001EO5QW8	A276999Y6VRSCQ	JMay	0/1	3.0	Same stuff	This is the same stuff you can buy at the big box stores.  There is nothing healthy about it.  It is just carbs and sugars.  Save your money and get something that at least has some taste.
B001EO5QW8	A108P30XVUFKXY	Roberto A	0/7	1.0	Don't like it	This oatmeal is not good. Its mushy, soft, I don't like it. Quaker Oats is the way to go.
B000G6RPMY	A3S5KJDA6ED2PS	Mike Kaser	4/4	5.0	HOT!  And good!  Came back for more  :)	Got a free package of these with a bottle of bloody mary mix I bought from the seller, and the advertising worked..lol,  I tried them, and shared them with 2 buddies, and we all loved them...  So im here to buy more, and noticed there were no reviews yet,...  well now there is.  They are Hot,  but not "burn your mouth forever hot"  its a nice temp...  Perfect for us..
B000G6RPMY	A9L6L5H9BPEBO	Edwin C. Pauzer	1/1	4.0	You'll go nuts over Ass-Kickin' Peanuts.	This wasn't in stock the last time I looked. I had to go to the Vermont Country Store in Weston to find it along with a jaw harp, Cranberry Horseradish Sauce, Fartless Black Bean Salsa, Apple Cider Jelly, Newton's Cradle Art in Motion and the staple Vermont Maple Syrup.<br /><br />Back to the Ass Kickin Peanuts. They are hot. They will activate the perspiration glands behind your ears and under your arms. It requires a beverage as advertised, a glass of very cold milk, and a box of Kleenex since it will make your nose run. They look like ordinary peanuts which is already giving me ideas for work. I suspect that some people have been hitting my goodies in my absence, especially my colleague Greg. I'm going to take this to work at earliest opportunity and empty the contents of this can into an ordinary Planters Peanuts can, and then see whose crying or whose nose is running when I return.<br /><br />The can should be shaken to ensure the spices are evenly distributed. It is important to wash your hands after consumption and not touch the eyes.<br /><br />You'll go nuts over these Ass-Kickin' Peanuts.<br /><br />P.S. I'm not sharing the peanuts, not deliberately, and I'll probably give Greg the jaw harp for Christmas. He'll be so insulted.
B000G6RPMY	AQ9DWWYP2KJCQ	Roel Trevino "protomex"	0/0	3.0	not ass kickin	we're used to spicy foods down here in south texas and these are not at all spicy.  doubt very much habanero is used at all.  could take it up a notch or two.
B002GWHC0G	A1ND7WC5LXOU48	David Belton "Proteus 1"	2/2	4.0	Roasts up a smooth brew	I roast at home with a stove-top popcorn popper (but I do it outside, of course). These beans (Coffee Bean Direct Green Mexican Altura) seem to be well-suited for this method. The first and second cracks are distinct, and I've roasted the beans from medium to slightly dark with great results every time. The aroma is strong and persistent. The taste is smooth, velvety, yet lively.
B002GWHC0G	A2EFAW1P3DRXWO	TJ Fairfax	0/0	5.0	Our guests love it!	We roast these in a large cast iron pan on the grill (about 1/3 of the bag at a time).  The smell is wonderful and the roasted beans taste delicious too.  More importantly, the coffee is smooth, no bitter aftertaste.  On numerous occasions, we've had to send the roasted beans home with friends because they like it so much.
B004N5KULM	A202WR509428VF	amateur amazon shopper	2/2	5.0	Awesome Deal!	Deal was awesome!  Arrived before Halloween as indicated and was enough to satisfy trick or treaters.  I love the quality of this product and it was much less expensive than the local store's candy.
B004N5KULM	ASCNNAJU6SXF8	S. Beck	1/1	5.0	How can you go wrong!	It is chocolate, what can I say.  Great variety of everything our family loves.  With a family of six it goes fast here.  Perfect variety.  Kit Kat, Reeses, take five and more.
B004N5KULM	A2A7KXM9B4XW90	P. Kelso "Amazon all the way!"	0/0	5.0	Awsome - Kids in neighborhood loved us!	Great product, nice combination of chocolates and perfect size!  The bags had plenty, and they were shipped promptly.  The kids in the neighborhood liked our candies!
B004N5KULM	A2QOGOXPOVKAJG	mimimc	0/0	5.0	great deal.	Halloween is over but, I sent a bag to my daughters class for her share. The chocolate was fresh and enjoyed by many.
B004N5KULM	A1ZR8O62VSU4OK	Lisa J. Szlosek "lisa"	2/4	3.0	Better price for this at Target	Watch your prices with this.  While the assortment was good, and I did get this on a gold box purchase, the price for this was<br />$3-4 less at Target.
B004N5KULM	A7ZK2A3VIW7X9	Peggy	0/2	5.0	pretty expensive	This bag of candy online is pretty expensive, it should be cheaper in order to compete with grocery stores, other than that, its a good combination of my favorite candy
B001EO5TPM	A1E09XGZUR78C6	gary sturrock	2/2	1.0	stale product.	Arrived in 6 days and were so stale i could not eat any of the 6 bags!!
B005DUM9UQ	A3HR0ZZOFKQ97N	RLC	3/3	5.0	Hammer Nutrition 's Fizz Rocks!	I have used the endurolyte product for several years in both pill and powder form.  Long desert rides on the dirt bike always found my camelbak water heavily laced with the endurolyte powder, not overly tasty, but quite effective, as I never got a cramp on these several hundred mile rides.  Same for desert racing in the buggy, the camelbaks were always laced with the powder.  Now we have the Fizz...what a great product!  Firstly, its Hammer's endurolyte product so it's great, endurance athlete's the world over use their products. Second its convenient, handly tablets that dissovle in a fizz.  Third it tastes great! Imagine getting a nice cool drink when your body is starving for hydration and electrolytes and rather than getting a "salty" taste, you get a refreshing lemon-lime or mango!  The camelbaks always get the Fizz now.  I also drop a tablet in my bottled water whenever I exercise and have a nice flavored water chock full of electrolytes. I cannot recommend this product or any hammer product highly enough.
B005DUM9UQ	A2XIHNXODNZGV4	ChemProf "chem professor"	1/1	5.0	great source of electrolytes	This product serves me well as a source of electrolytes during and after a long run or bike ride.<br />I have tried all of the flavors but really do like the grapefruit flavor... no after-taste and I actually like the slight carbonation.<br />I use other Hammer products and really like their whole product line.
B005DUM9UQ	A3TWF9DQ6MU87E	dhy4b	1/1	5.0	Great for preventing cramps	This stuff really works for preventing cramping during the middle to latter stages of your rides. Pop 1 into each water bottle and you're set. Flavor is fine and goes down easy.
B005DUM9UQ	AEFIZIJ1FK1BK	Doug	0/0	5.0	Low Carb Alternative to Gatorade	For those of us on a low carb diet these little tablets are just the thing.<br /><br />Two years ago I started cycling again after many years but was having heart arrhythmia after longer rides in high heat.  I was drinking plain water but did a little research and thought electrolytes might be the issue.  Gatorade wasn't an option because it is so loaded with carbohydrates so I looked around for a low-carb alternative.  The "zero carb" sports drinks didn't help so what to do?  One day I ran across these at my bike shop so tried a tube of them.....voila!...problem solved!!<br /><br />I've shared them with two friends in particular whose problems with leg cramps were resolved while using these.<br /><br />These guys got it right -- they are superbly formulated and simply work.....
B005DUM9UQ	A8OFFIAL6XTOH	Bill Shirer	0/1	2.0	Taste is not so good.	I purchased the Mango flavor, and to me it doesn't take like Mango at all.  There is no hint of sweetness, and unfortunately there is a hint or aftertaste almost like licorice.  I've been consuming various sports nutrition products for decades, so I'm familiar and have come to like the taste of the most of the products I've tried.  The mango flavor is one of the least appealing I've tasted.  It's not terrible, but it's bad enough that I notice the bad taste every sip I take.
B000E7VI7S	A1KL2LAW08X6UQ	calmnsense	0/0	3.0	How much would you pay for a bag of chocolate pretzels?	If you're impulsive like me, then $6 is ok. Don't get me wrong, the quality of these babies is very good and I have no complaints. But in retrospect, the price is a little ridiculous (esp. when you add on the shipping).
B000E7VI7S	AWCBF2ZWIN57F	C. Salcido	0/2	5.0	pretzel haven!	this was sooooo deliscious but too bad i ate em too fast and gained 2 pds! my fault
B001GVISJC	A27TKQHFW0FB5N	Chet	2/2	5.0	Great Gummi!	These Albanese gummi bears and rings and so on are very good and tasty and high quality. The bears even have little faces. At my local candy store this type of gummi stuff (bears, rings, snakes, balls, worms, whatever) are about $10/lb. These twin packs of 4.5 or 5 pound bags is a screaming deal as far as I'm concerned. I'm probably 50 pounds deep in these friggin' things. Consumed!
B001GVISJC	A3BDOAPSF96WGQ	2tall	1/1	5.0	Bigger then other brands	Grape gummy bears are hard to find in my area. In fact pretty much anyone I talk to about grape gummy bears they think I'm lying. So I bought 10lbs... : ) These bears are a little bit bigger then the other brands and have kind of sour kick, but nothing to strong. I love grape flavored candy/soda and these are pretty good. There is another company that makes grape gummy bears that are a little bit better in my opinion, but these are well worth it for the price. I like to use the gummy bears in home made Popsicles with flavored sports drink. The salt in the sports drink makes for softer popsicles, and the gummy bears are awesome frozen. They are delicious!
B002SRYRE8	A21E0OJ4DSKXNA	Smileface	0/0	5.0	Happy Face	Delicious. I cannot get Australian ginger where I live. This compares favorably to Australian Ginger I've purchased in other cities. Now I can enjoy it without traveling.
B006SQBRMA	ATYMT48R62ENE	Marie	0/0	5.0	Best ever latice tart	I ordered two of these and two of raspberry latice tarts directly from FantasiCakes website for a dinner party I was hosting. It arrived fresh and intact. Very good size. I froze half for later use. I am a pastry lover and these were the best I've ever tasted. The pastry was soft, the jam was really good and the taste was great. They were gone in no time. My guests were really impressed.
B0059WXJKM	A25VFHVGI4CFTP	Diana Robinson	0/1	1.0	Warning!  WARNING!  -ALCOHOL SUGARS!	Buyer Beware Please! This sweetener is not for everybody.  Maltitol is an alcohol sugar and can be undigestible in the body.  You will know a short time after consuming it if you are one of the unsuspecting many who cannot digest it by the extreme intestinal bloating and cramping and massive amounts of gas a person can experience. Nausea, diarrhea & headaches can also be experienced. I learned my lesson the hard way years ago when I fell in love with the sugar-free chocolates suzanne sommers used to sell.  I thought I'd found sugar-free chocolate nirvana at first taste but the bliss was short lived when the terrible side effects of maltitol kicked in.  The discomfort was unlike anything I had ever felt before.  I blew up like a balloon and had very painful abdominal cramping.  As the symptoms passed, this too was very unpleasant.  Though hard for me to believe a low calorie sweetener could be the culprit, all symptoms were gone when I stopped eating the chocolate. My hunch it had something to do with the maltitol were unfortunately confirmed for me about a year later when I purchased some delicious sugar-free popcorn at my local market.  The taste was amazing and while I was looking at the label wondering what could possibly make this yummy, new sugarfree treat taste so good, my heart sank when I followed the little asterisk next to sugarfree sweetener* down to the very bottom of the label and read "maltitol" in tiny little letters! Thank goodness I'd eaten only a little. I still ended up with all the same side-effects but for a much shorter duration. Some people can use maltitol to their heart's content but others, like me, can have a bad reaction to it. In case you're like me, ... it's not you ...it's the maltitol!
B001EPPI84	A3Q0IDQ03S0158	Jen	0/0	2.0	nothing special	It is okay.  I would not go out of my way to buy it again
B001EPPI84	A27TZ4WBU7N0YF	I. So	0/0	1.0	No Tea Flavor	No tea flavor at all. Just whole brunch of artifial flavors. It is not returnable. I wasted 20+ bucks.
B004X2KR36	A2W3ABLWMJ84NS	Jessica Snyder	0/0	5.0	Good	These looked like a perfect snack to through in with my trail mix.  Unfortunately, they arrived in a solid mass of melted chocolate.  I left them in my pantry for a few days, and when I opened them at room temperature they were still gooey.  I through them in the fridge and I've been breaking off hunks ever since.  They taste good to me, but the chocolate is all grainy after melting and then solidifying again.  I won't order them online again, but if I see them in a store I would pick them up.
B004X2KR36	A26M5O53PHZTKN	Debs "peanut"	0/0	5.0	Taste great	These taste really good. I have been purchasing a different brand and these are very similar in taste and texture. I agree with the other reviewer regarding ordering in the summer. There is no insulating packaging with ice packs so they will melt in warm weather like all chocolate food items. Order in cold weather and buy enough to last!!!
B004X2KR36	A2AB7M9UCNBVN7	sharonh4	0/0	3.0	Order only in cold weather	The taste was great, but the berries had melted.  May order again in winter. If you order in cold weather you should enjoy flavor.
B005R8JE8O	A3H1EQD2PBC085	jmc	0/0	5.0	this is the best	i know i cannot make tea this good.  granted, i am not from the south but i know i have never enjoyed tea that was this sweet without being too sweet.  it tastes crisp.
B0066DMI6Y	AB30HQTI5VOLR	Melinda Bishop	1/1	5.0	Delicious!	This peppermint stick is delicious and fun to eat.  My dad got me one for Christmas because he remembered me having a similar one when I was a little girl.  I'm 30 now and I love it!
B0066DMI6Y	AZLONLC8OZPEC	John W. Hollis	1/1	4.0	Great	Great gift for all ages! I purchased these giant canes before and the recipients loved them so much, they kept them and would not eat them.
B003ZFRKGO	A2VOZX7YBT0D6D	Johnnycakes "Johnnycakes"	15/15	5.0	Forget Molecular Gastronomy - this stuff rockes a coffee creamer!	I know the product title says Molecular Gastronomy, but don't let that scare you off.  I have been looking for this for a while now, not for food science, but for something more down to earth.  I use it to make my own coffee creamer.<br /><br />I have to have my coffee blonde and sweet - but the flavored creamers are full of the bad kinds of fat, and honestly, I hate to use manufactured "food" items.  I really don't think they are good for the body.  On the other hand, I hate using cold milk or cream, because I like HOT coffee.<br /><br />I stumbled across this on Amazon one day and got the idea of making my own creamer.  I also bought low-fat (non-instant) milk powder and regular milk powder. The non-instant lowfat milk is a little sweeter and tastes fresher than regular instant low-fat milk, but does not dissolve good in cold water - which is not a problem for hot coffee.  You will have to play with the ratios - I would not do just the heavy cream, it made the coffee too rich. Also, I think the powder is too expensive to just use on it's own. I like mixing 1/3 of each together.<br /><br />For flavoring, I bough cocoa bean powder, vanilla bean powder, and caster (superfine) sugar.  I mix up small batches along with spices like cinnamon and nutmeg to make my own flavored creamers.  If you wanted, you could use a fake sweetner powder instead.  I make up small amounts that I store in jelly canning jars. I also use my little food chopper/food processor to blend everything, so the sugar is not heavier and sinks to the bottom.  Let it settle for a bit before opening the top though.<br /><br />This stuff tastes WAY better than the storebought creamers and it is fun to experiment and come up with your own flavors.  I am going to try using some essential oils next and see if I can get a good chocolate/orange mix.<br /><br />All of the ingredients I mentioned are here online.  Take the time to experiment.  Maybe you don't use any low-fat milk. Or don't add any flavorings.  It is up to you.  Also, would make great housewarming/host(ess) gifts.<br /><br />I am sure other molecular people will be able to tell you more of what you can do with it, and I am sure I will experiment with it in cooking - but the main reason I bought it was to make my own creamer and it worked out great.
B0019CW0HE	A1FD9E5C06UB6B	BRENDA DEMERS	5/5	3.0	Natural Balance Lamb and Rice	While my dogs like all of the flavors that we have tried of this dog food, for some reason their itching increased when I tried the lamb and rice. I have some very itchy dogs and am giving them a limited ingredient dog food to try to help. The duck and sweet potato cut down on the itching significantly, but when we tried lamb and rice they started itching more once again. I like Natural Balance for the quality ingredients.
B0019CW0HE	AK2CXHH9VRZ2A	I. GLENN	4/4	3.0	INCREASED MY DOGS ITCHING	Awesome dog food. However, when given to my "Boston", who has severe reactions to some food ingredients, his itching increased to violent jumping out of bed at night, scratching. As soon as I changed to a different formula, the scratching stopped. So glad Natural Balance has other choices. I guess you have to try each, until you find what's best for your pet.
B0019CW0HE	A25BGFRHYHEZKK	Toby's mom	4/4	5.0	Great food!	We have three dogs and all of them love this food!  We bought it specifically for one of our dogs who has food allergies and it works great for him, no more hot spots or tummy problems.<br />I LOVE that it ships right to our door with free shipping.
B002SRYRE8	A1FJJQA34W0F4K	Gettin Real "gettin real"	0/0	5.0	Simply the BEST!	I keep trying other brands.... cheaper brands. Stupid me! This ginger IS soooo worth the money. Tender, moist and never a let down.
B0019CW0HE	A37N9XZBB8JYOF	Ash52	1/1	5.0	Great for my dogs allergies	My dog has a ton of allergies both environmental and food. She was on a prescription dog food before we had her tested to see what allergies she has. After we got the test back, we learned she was allergic to something in the prescription brand. So I finally found this dog food and she has done so well on this! She still has her environmental triggers, but I am happy she can finally eat something I know won't cause her pain.
B0019CW0HE	A1T4L0Q47OZ9N	Wendy	1/1	5.0	Great for stomach problems!	My shepherd/collie mix has IBS.  Our vet recommended a limited ingredient food.  This has really helped her symptoms and she likes it.  I will always buy it from Amazon...it's $10 cheaper and free shipping!
B0019CW0HE	A3IMXZE9FCUNOC	Dana	1/1	5.0	Better life for you dog!	Natural Balance Dry Dog Food Lamb Meal and Brown Rice Recipe did wonders for my Jack Russell. She has awful food allergy's and this food was our last hope because it was the last food we could find that didn't have SOMETHING in it that she was allergic to. She has no problem eating it dry but normally I mix the Natural Balance Dry Lamb and Brown Rice with the Natural Balance Wet Lamb and Brown Rice.. she seems to like that better. We started feeding it to our other dog (a Bichon) too and she loves it. If your dog has allergy's or stomach issue.. or if you want your dog to eat better food-- this is it! You will see a difference in your pet.
B0019CW0HE	A1EC57S6C2VLTL	Lorraine "Agelechio"	0/0	5.0	Great Food	Great food! I love the idea of one food for all ages & breeds. ÃŽt's a real convenience as well as a really good product.  My 3 dogs eat less, have almost no gas, their poop is regular and a perfect consistency, what else can a mom ask for!!
B0019CW0HE	A1OGD72Y2Y26CF	Lisas201	0/0	5.0	Great food for my my dog who has a sensitive stomach.	I have a standard poodle and pomeranian who both do wonderful on this food. I have switched them to a different food (due to price) a couple of times and end up going right back to natural balance.
B0019CW0HE	A7JWCYVPF7KCO	gare	0/0	5.0	Great dog food	This is great dog food, my dog has severs allergies and this brand is the only one that we can feed him.
B0019CW0HE	ABG53EBZBKD23	J. Romagnoli "*jroma"	0/0	5.0	Mmmmm  Mmmmm good.	This food is great - all ages dogs.  I have a 3 year old and a puppy.  They are both so soft and hardly ever get sick.  The food is good especially when you have Amazon Prime shipping  :)
B0019CW0HE	A3AF72GP4GVRY1	John D. Meara	0/0	5.0	Great Dog Food!	My golden retriever is one of the most picky dogs I've ever met.  After experimenting with various types of food, I have found she loves natural balance.  What I really like about natural balance is the fact that it has multiple flavors in dry and wet varieties.  I mix her dry food with a little wet food and my golden loves it.  Furthermore, I do like mixing up the flavors each time as I think the same meal day over day might get a little boring, so I figured why not.  I tend to stay away from the fish type though as it smells...<br /><br />Additionally, I started purchasing off Amazon because Petco didn't have the wet food box and only had a couple of cans.  I came home and to my surprise realized that I could save $20 each time I bought dog food if I just buy it off Amazon.<br /><br />All in all, I definitely recommend and give my stamp of approval to natural balance dog food.  While I have never eaten it, my dog seems to love it.
B0019CW0HE	A1DJAAKLPCJRZD	wendy	0/0	5.0	So convenient	This is the same food we get at pet store. But it's delivered to my door! And for the same price or slightly less.
B0019CW0HE	A1BFNM27629VAV	E. Triebe	0/0	5.0	Good healthy dog food	I've been very pleased with the Natural Balance dog food. Our dogs have had issues with other dog foods in the past and I had someone recommend Natural Balance grain free since it is possible they were allergic to grains. Since switching I haven't had any issues. It is also helpful that have have different kibble size for larger/smaller sized dogs.
B0019CW0HE	A18AAABCIJKC5Q	Rhiever	0/0	5.0	Great dog food	My 1-1/2 year old basenji/jack russell mix loves this dog food. He's been noticeably healthier and more energetic since I switched him over from the standard dog foods earlier this year. Despite the higher cost of natural dog foods, I find that he eats significantly less of the Natural Balance dog foods and still stays happy and full. On the normal dog foods, he'd eat up to 3 cups of dog food a day (the recommended serving for his size), whereas he only eats about 1 cup to 1-1/2 cup of the Natural Balance dog food a day. When you take this into account, you're actually getting more "bang for your buck" with the natural dog foods since you don't have to buy as much to last just as long as the normal dog foods... and a healthier, happier dog, to boot! Add in the fact that you can get free, 2-day shipping with Amazon Prime... I'm sold!!
B0019CW0HE	A3UII2114114PI	FuNky Faja "SiLkk"	0/0	5.0	Great allergy sensitive dog food, dogs love it	Our pup has experienced allergies in forms of hotspots and itching from other dog foods. The cheap 'you can buy it anywhere' food not only have crazy preservatives in them but can cause health problems for your pets.  This food works wonders on reducing allergies and our dog loves the food.<br />This message is RAMSEY FrAnkenSteiN approved.
B0019CW0HE	ABZ9F0D94YK45	Amazon-tron 3000	0/0	5.0	Perfect for our English Bulldog with Allergies	My English Bulldog had skin allergies the summer we got him at age 3.  The vet recommended we wean him off the food his previous owner gave him (Iams Lamb and Rice) and onto a new kind.  This was the second one we tried, and it has been working ever since.  It's for dogs that need a limited diet who can be sensitive to additives and proteins commonly found in commercial dog food (like chicken or beef).
B0019CW0HE	A2P6ACFZ8FTNVV	Melissa Benjamin	0/1	1.0	Bad	I fed this to my Golden Retriever and he hated it.  He wouldn't eat it, and when he did, it gave him terrible diarrhea.  We will not be buying this again.  It's also super expensive.
B004K2IHUO	A1SYSKR79LA2CB	Mycroft "Virture is its own punishment"	4/5	5.0	Taste wise it is a 6 star item	The mouth says, "How do I love thee, let me count the ways..."<br />If you like apple products a must have item.  The only draw back, shipping cost.  These are very heavy.
B004K2IHUO	A3D1TXE98KRKYO	Danny "The Student"	2/3	4.0	Great Support	Arrived slightly thawed. My parents wouldn't accept it. However, the company was very helpful and issued a full refund.
B004K2IHUO	AVCA516CFZ9HF	S. Fowler	0/0	4.0	TART!	The crust on these tarts are perfect.  My husband loves these, but I'm not so crazy about them.  They are just too sour/tart for my taste.  I'll eat the crust and hubby takes my filling.  My kids think they're great, so maybe it's just me.
B004K2IHUO	A1P21J0DMTVGS7	Lovethemovies	0/0	5.0	Omaha Apple Tartlets	These are absolutely scrumptuous!  My husband and I both love them, however, as another customer put it, they are expensive to ship!  The cost of shipping is more than the tartlets themselves are!
B004K2IHUO	AL3E5V6MXO9B0	pionex1796	0/0	5.0	Loved these Tartlets	What a nice alternative to an apple pie. Love the fact there was no slicing and dicing. Easy to prepare. I also loved the fact that you can make them fresh whenever needed.
B004K2IHUO	A2O9G2521O626G	Rachel Westendorf	0/0	5.0	The best	I like Creme Brulee. I loved that these were so easy. Just sprinkle on the sugar that came with and broil. They look amazing and taste great. My guess thought I really went out of the way for them when really it took all of 5 minutes. I will be ordering more!
B004K2IHUO	A1ZKFQLHFZAEH9	S. J. Monson "world citizen"	2/8	3.0	disappointing	not what I was expecting in terms of the company's reputation for excellent home delivery products
B001REEG6C	A30835UIR6F8KB	Adam E. Smith	2/2	5.0	Wasting Vinegar on a Cucumber is a Shame!	I first bought pickled asparagus at an Amish market and it was love at first bite. Hence, when I saw these on the discount rack at the local Safeway I cleaned it out.  These are even better than the ones from the Amish market. They are fantastic, and some of the jars have a bonus clove of garlic at the bottom. I'm going to order the six pack and I'm a household of one. They wont go to waste!
B001REEG6C	A10EHUTGNC4BGP	M. Foell	1/1	5.0	Asparagus Bliss	I love asparagus.  Up until very recently, I had never had pickled asparagus.  Oh my goodness, when a friend introduced me to this exact brand, I couldn't believe how great stuff tasted.  I loved it so much I bought the six pack.  I've got 2 jars left.  Gonna need more!!
B001REEG6C	AY12DBB0U420B	Gary Peterson	0/0	5.0	My Idea of a Good Diet Food.	I'm presently on a diet and I was at my Fresh and Easy Neighborhood Grocery looking over possible diet foods. I wanted things that were tasty, non-fat and low in calories. I came home with about a dozen items. That's how I discovered the Tillen Farms Pickled Crispy Asparagus. Well, I've always liked asparagus anyway and I've enjoyed several brands of pickled asparagus. This Tillen Farms brand is really, really good! It's the best I can recall. There's an excellent flavor and a big clove of garlic down in  the bottom of the jar which I'm looking forward to eating. I can't believe how good this asparagus tastes and right on the front it says "only 60 calories per jar!" Now this is my idea of a good diet food!<br /><br />Gary Peterson
B000J0HIT2	A1VKJN5Y1C7S5Y	Wilhelmina Robinson "Wilhelmina Robinson &#34...	2/2	2.0	Low Carb Angel Food Puffs	I was diappointed in the flavor and texture of this mix.  I usually like most of the Low Carb things I have tried, but was diappointed in this specific one.
B0037LW78C	A3VEYLW2KPZNGK	G. Simmons	3/3	5.0	Delicious tea	I have been drinking this tea for a long time now.  I used to have to purchase it at a doctor's office because it wasn't available elsewhere.  I'm so glad that I can buy it now from Amazon.com.  I drink this tea throughout the day like other folks drink coffee.  Wonderful taste.
B0037LW78C	A2F65U0UDY7TAW	Aldo	2/2	5.0	My every day green tea	I have been drinking Royal King 100% Natural Organic Green Tea (100 tea bags x 2g each) as my every day tea for several years now.  I buy 12 boxes at a time to save on shipping.  For many years I used to drink coffee from morning till night.  But finally I realized that drinking so much coffee was not healthy for me.  I finally resolved to improve my health and stopped drinking coffee all together.  I tried many alternative drinks to replace my coffee habit.  I found that green tea was not only good tasting it also has health benefits.  Green tea is one of the few drinks that actually makes you healthier (coffe and other drinks do not) - the only healthier drink is quality cold water.  In my opinion, for the price, Royal King 100% Natural Organic Green Tea is one of the best tasting teas.  This green tea has a beautiful golden color, the taste is bright and fresh.  I recommend adding a tiny amount of Y.S. Organic Bee Farms RAW HONEY to the tea to add sweetness and health benefits too.  I also give myself a treat once in a while by having a much more expense tea (Tribute Xi Hu Long Jing) but this fantastic tea is not practical for me to drink as my every day tea (although I would if I could afford it).<br /><br />Cons:  On my latest shipment the package shown on the Amazon page is different than the one shipped.  The one shipped displays "NATURALLY HIGH IN POLYPHENOL CATECHINS" (a key contributive element to the possible health effects of tea), whereas the Amazon package displays "CAFFENE FREE".  So I am not sure if this green tea is Caffene free or not.  The other con is that sometimes the tea bag rips open when I unwrap the string from around the tea bag. So if the string seems stuck to the tea bag I put the bag in the hot water to unstick it.
B0037LW78C	AWNANZ5VUO7IB	John D. Zuccarino	1/1	5.0	the best tea ever... freah bright clean	this has to be one of the best teas I have ever tasted... it's clean, bright, fresh...<br /><br />great delivery...again quality... just try it...
B0037LW78C	A1Q4PJXI5HS5WT	ceecee	0/0	5.0	Tea review	I love, love this green tea.  It is very hard to find in our area and some places on the internet charge a big price and I usually don't get as many boxes as I did with this merchant.  I will definitely order from this seller again!! Thanks!!  I depend on my green tea fix everyday!
B0037LW78C	A2IX1B76ONTXEL	Cinderella	0/0	5.0	Wonderful Tea	I love this tea. It helps curb my eating during the day. My Mom and I have given it all friends to try.
B0026Y3YBK	A3P60QLFDDCHOY	Giordano "GB"	2/2	5.0	Great cookies	I'm Italian and I lived in Italy for years. I used to buy these cookies for my everyday breakfast with an Italian espresso. I couldn't find them anywhere here in the Bay area, so it's great to have them again.
B0026Y3YBK	A38BUM0OXH38VK	singlewinder	0/0	5.0	Best everyday cookie!	In the 1980s I spent several summers in Italy. This biscotti is often given as a breakfast food or mid-day snack. They are simple and delicious and were not sold in the US back then. They are so good that I brought back two bags from a recent trip to Italy. It is great to see that they may now be found on Amazon!<br /><br />Note: it is great to open a bag, smell the contents, pour a glass of milk, then dip the Macines in the milk. Great routine and treat for kids!
B003OB0IB8	AOTEC8KEH8JGN	Seth S Moyers	0/0	5.0	Great value and convenient ramen	Got these on sale for roughly 25 cents per cup, which is half the price of my local grocery stores, plus they rarely stock the spicy flavors. These things are a GREAT snack for my office where time is constantly crunched and sometimes you can't escape for a real meal. This is one of my favorite flavors of Instant Lunch and will be back to buy every time it goes on sale.
B003OB0IB8	A1D0URD0AL237J	Mother of Pearl	0/0	5.0	great flavor	i have bought allot of different flavors and this happens to be one of my favorites and will be getting more soon
B003OB0IB8	A2BZNXMV0LC7OE	Alanna	0/0	4.0	Tastes great, but is cheaper locally.	I love this flavor of ramen! I don't eat other flavors anymore because they taste too bland by comparison. For the convenience of having it delivered to my home (I have prime, so I get it in two days and don't have to pay for the shipping), the price on amazon isn't bad at all, but it is still cheaper to run down and pick up a case of this at the grocery store.
B002SRYRE8	A198FU6P1BVUNZ	Sarah	0/0	5.0	Tastes awesome & looks beautiful	The BEST investment I've ever made for ginger. It's unbelievable! It's fibrous like the real ginger, has that spicy kick to it, but it's perfect with the sugar - calms it down.  It's very worth the $40 for 5lbs of it!  I'll be getting more soon - I use these as a topper for my ginger cupcakes and cookies :)
B003SE19UK	AD1WWGMEQ8FWW	Bob Rex	5/5	5.0	So Far So Good	I had heard a little about this product from the local pet store, then tried a small bag for our 2 cats of about 3 and 6 years respectively. The female, younger one took to it right away, and the older male, who was unfortunately weaned on the junk cat food with all the corn meal and etc... in it, and would usually refuse a diet change, actually liked it too. The older male is overweight and we were trying to switch him to soft food on the doctor's request, but he totally refused it. He is a posh cat after all. He still consumes too many calories, the fatty, but at least I know he's eating good food. Of course, I know this product seems to cost more than most other feline food on the market, but I just can't see feeding our animals the lousy alternatives that are out there, marketed as being healthy. Why do commercials show cats eating a vegetarian diet which is mostly corn meal? Is that right? I'll stay with this for now, but stay tuned.<br /><br />I'm updating this review after 9 months of using this cat food for our two cats. I upgraded the stars from 4 to 5 as it really has been a good food for the two of them. Garfield still eats a little too much, but he's just a big cat who doesn't exercise much, let's face it. Our female cat will be 4 years old in a couple months and she's so healthy. She's tiny, but happy and agile. I tried the chicken version of Holistic Select, but Garfield seemd to miss this sardine version so we went back to this one. I've ordered the duck version and will update this once they try it.
B003SE19UK	A2PM49X61MWZJV	DamiKris	4/4	5.0	Best Cat Food	I started buying this after I noticed my 1 year old cat was already starting to lose his "spunk" so I decided it was time to start buying him "real" cat food...not the garbage in the super markets. I found this at the pet store out of the other million choices, and I'm sure there are other brands that are just as good but this is the one I went with to try first and it was a great purchase. My cat has been on this for the past 8 months and he's now just has active as he was when he was a kitten and his coat has became sooo soft. Mainly, he loved the taste even more! I highly recommend this brand to all my friends and family for their animals!
B003SE19UK	A3A52DETIFZNZS	Sarah Wilson	4/4	5.0	Great food.	I have done a lot of research to find the best food for my cat, and this is an excellent food.  That is also according to my holistic veterinarian.  They put probiotics on the kibble as the last step, which is very important to me.  The best thing is that my cat loved it immediately and I had to stop mixing it with the old food because she only would eat Holistic Select.
B003SE19UK	A3L15C30CBPZOR	Cynthia G. Pate	2/2	5.0	Perfect Cat Food For Older Cats!	This cat food was recommended by my vet because my 13 year old Cleo Cat was having trouble keeping any food down and was loosing weight.  It stopped her problems.  She doesn't eat as much as before since she seems to be more satisfied after eating which helps justify the added price.  It aids in digestion since the...ok sorry...smells are gone if ya know what I mean.  Had to add that so anyone experiencing problems with their cats can see there are a lot of benifits from this cat food.
B003SE19UK	A29SUR9R8ZU54B	Alfbo	1/1	5.0	Good for Feline UTI	I have a 4 year old male cat who has chronic urinary tract infections.  I feed him this dry food in combination with wet food (with water added to it) and Uri Ease.  The combination seems to keeps his UTI's under control.  If I switch to another type of dry food, his UTI gets worse.  The other cats seem to enjoy this food as well.  It's expensive but it seems to be the best solution for me.
B003SE19UK	A9GRWS6KP8SMA	Anne Kirkwood	1/1	5.0	Palatable and healthy	Before I was educated about feline nutrition, I allowed my cats to become addicted to dry cat food. I always offered both canned and dry, but wish I would have fed them premium quality canned food and limited dry food. I have two 15 year old cats and two 5 year old cats. The only good quality dry foods they will eat are Wellness and Innova. Innova's manufacturer was recently purchased by Procter&Gamble. I began looking for a replacement. After once again offering several samples (from my local holistic pet store) Holistic Select was the only one (other than the usual Wellness and Innova) they would eat. For finicky cats, I recommend trying Holistic Select. It is a good quality food that is very palatable for finicky eaters.
B003SE19UK	ASOEVZ99YWPVL	PurpleGreen	0/0	5.0	Healthy & They LOVE It!	My holistic vet recommended this, along with a few other brands. We tried them all, but my cats prefer this (especially the sardine version). The best part is their coats are so soft and clean and their eyes are so clear. AND (and I don't want to be rude, so I'll say this as delicately as I can) their waste is far less odorous than cats who eat the McDonalds junk found in most stores, which is a definite plus for me! The health benefits are so obvious - I highly recommend Holistic Select!
B003SE19UK	A1QAJ948PN36II	Winter Green	0/0	5.0	Wonderful food - perfect for allergic kitties	One of my cats is allergic to fish and beef. This formula is one of the few she can eat, and it has much better ingredients than the prescription diets available at the vet. Both of my kitties are very active, have soft shiny fur, and neither are fat. Dry food reduces tartar buildup on teeth, also.
B003SE19UK	A1LWFJRITZLYUG	PMG1	0/0	5.0	Holistic select cat food	Our cats thrive extremely well on this dry cat food.  They definitely have much less hair ball throw ups and their fur is great.  They are fit and not over weight.  This vendor ships extremely fast.  Is one of the top Amazon suppliers in our book!
B003OB0IB8	A34UG2TNXIL0Y	Austin H.	4/4	4.0	Tastes great. Love Hot & Spicy. Bad price here.	I've been a fan of Hot & Spicy Maruchan Ramen for a long time. If you enjoy spice, and love ramen, you'll love this product. Too bad it's way too expensive here on Amazon. It's only $3.36 per 12 at my Walmart.
B003OB0IB8	A3NVZTGPORNPRW	B. Pearce	4/4	5.0	My favorite ramen	I've been eating Ramen noodles since I was a little kid, and I've never found a better flavor than Hot & Spicy Chicken!  It isn't hot at all to a chilihead like me, but it sure is good!
B003OB0IB8	A28D854VMOEHGX	Benny	3/3	3.0	It burns!	I LOVE spicy ramen, but for whatever reasons this thing burns my stomach badly and the burning sensation doesn't go away for like 3 hours! Not sure if that is healthy or not .... and you can buy this at Walmart for $0.28, way cheaper than Amazon.
B003OB0IB8	AISIYS3D2EAOX	RTyst	1/1	5.0	Amazing to the last bite.	Always being a fan of ramen as a quick and easy meal, finding it on amazon for a decent price and having it delivered to your door by the case is an amazing situation for anyone to find themselves in.
B003OB0IB8	A2DLRG3YX6A2ZU	luckybabe	2/3	2.0	Not for me	I must be a bit of a wuss, because this soup tastes to me how I imagine fire might taste. Typically I like spicy food if it has a good flavor.  I don't find this to be the case with this soup. Any flavor is killed off by the burn.
B003OB0IB8	A56HS2VNURVJ0	J. Espinoza "jchav1980"	0/0	5.0	Great spicy flavor	I really loved the spicy flavor these had.  I found myself liking the broth more than the noodles which is usually the opposite.  If you aren't used to the heat this might bother you and if you like hot hot foods this might not be enough.
B002SRYRE8	A20PK3OCKRRSA5	Mrs. J. Todd	0/0	5.0	Excellent Product/Life Saver	My son has had acid reflux since birth and has been on every medication available with no improvement, Until an older gentleman came into his work place and told him about this product and I automatically ordered it for him. I was really not expecting any better results than the 1000 other things we have tried. What a surprise! He has not had any heartburn or symptoms since day 2 of starting eating one piece of this Ginger each morning. He can now eat anything and actually enjoy it. This product was a God send for him. Thank you all for it!
B001GVISJW	ARS5Q7LR6HWPG	N. Pine "pcone"	0/0	4.0	Nice snack	I bought this for our office to give people something sweet to snack on.  Because it's bite size it's easier for people to grab a couple a pieces rather than an entire licorice stick. My only complaint is that one of the bags broke open in shipping.
B001GVISJW	A2YIO225BTKVPU	Angel_Boy "Treat the people around you the wa...	0/0	4.0	Good Licorice	Twizzlers brand licorice is much better than that other well known brand.<br />If you can get these for $2 to $2.50 a package with free s/h it's a good deal.<br />The black and cherry have good taste, but the strawberry taste was too delicate and barely there
B001GVISJW	A1ROND7G1QTOFY	Karon Dixon	0/0	5.0	I love these!!!!!!!!	I love these.........very tasty!!!!!!!!!!!  Infact, I think I am addicted to them.<br />Buying them in packs of 6 bags - is very reasonable than going to Target and getting a bag.  Savings are about a $1.00 a bag.  I use subscribe and save on these and several other product.  I love subscribe and save!!!!!!!!!!!
B001GVISJW	A1Z54EM24Y40LL	c2	0/0	5.0	Great for the kids!	If you are looking for a less messy version of licorice for the children, then be sure to try these!  They're soft, easy to chew, and they don't get your hands all sticky and gross in the car, in the summer, at the beach, etc. We love all the flavos and sometimes mix these in with the chocolate to have a very nice snack! Great item, great price too, highly recommend!
B001GVISJW	A281387UUS2IN5	Beantown Jim	0/1	3.0	Bite sized	I might be mistaken, but it appears that the pieces in this bag were reduced in size.  If they did do that, it was doubtlessly done to make it appear that the buyer got a better deal, having so many pieces after all.  The problem is that the pieces have to be a certain size in order to have enough flavor for your eating experience.  As it is, you have to use 2 or 3 pieces to match the old piece size,  it is not the same.
B0017I8UME	A2NH6XPAZG881D	MarkD	2/2	5.0	Sweet with a nice kick!	Being a fan of Newman's Pineapple salsa for quite a while, I was looking for a comparable salsa.  This is one of the best tasting salsas I've ever had.  My daughters love it too.  They don't like super chunky salsa and the Berry Mango has a nice smooth texture with small mango pieces.  The salsa is not too sweet, just sweet enough and although it's mild, it has a nice little kick to it.  At this price, it's a steal!
B0017I8UME	AKX0RW482WAFD	Barbie	2/2	2.0	BROKEN BOTTLE BOTTOMS!	The SALSA smelled delicious, as I think it probably was - but, unfortunately, the person, at AMAZON, that is a packer (there is probably several) had very little "stuffing" to work with, especially on the bottoms.  Therefore, the bottoms were broken on all three bottles. As I reached for my computer, I was told NO RETURNS (cause it's a food item).  I then looked for a CUSTOMER SERVICE tag, and I found "none" on their NEW FACE LIFT.  THEY SEEM TO BE PROUD OF THEIR NEW FACE LIFT BUT...THEY SHOULD AT LEAST HAVE A PLACE TO CONTACT THEM IN EMERGENCIES!  LIKE: I BUY A LOT OF "STUFF" AND IT ALL COMES IN STYROFOAM BOXES.  NEVER WOULD I SHIP THINGS<br />ESPECIALLY SALSA - IN A CARDBOARD BOX WITH JUST A STRIPE OF LARGE BUBBLE WRAP ON IT.  NO MATTER HOW MUCH THE CARRIER (FED EX) IS CAREFUL, IT'S GOING TO BREAK SOMEWHERE ALONG THE LINE.  ESPECIALLY IN AN ALL GLASS CONTAINER!  BARBARA L. S.
B0017I8UME	ATBE88PKKQTRA	Matthew R Lehmkuhler	0/0	5.0	Love the salsa!!	This is one of the best salsas that I have found in a long time but stay away from the variety pack. The other two that come with it are not worth your money.
B0064KU9HO	AJFIH0DZYJF7T	Lisa Barton	0/0	3.0	Ehhh...	These remind me of dog treats I made once using pumpkin and cinnamon. They're kind of bland and not my favorite Back To Nature product. But my finace really loves them so that's where the three stars come from.
B0037ZFEW4	ABTKZKAWOK4DC	huntersgun	3/3	5.0	awesome cornmeal	This is the best cornmeal. I made regular cornbread and hot water cornbread with this meal and both were outstanding. Also fried some oysters with this meal, it gave them a great texture and flovor.
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 3, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
5	contenttypes	contenttype
6	sessions	session
8	recom	uprefi
9	recom	iprefi
11	recom	userprofile
12	recom	dataset1
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-09-26 12:35:04.29625+05:30
2	auth	0001_initial	2015-09-26 12:35:05.218138+05:30
3	admin	0001_initial	2015-09-26 12:35:05.436917+05:30
4	contenttypes	0002_remove_content_type_name	2015-09-26 12:35:05.515032+05:30
5	auth	0002_alter_permission_name_max_length	2015-09-26 12:35:05.561916+05:30
6	auth	0003_alter_user_email_max_length	2015-09-26 12:35:05.577517+05:30
7	auth	0004_alter_user_username_opts	2015-09-26 12:35:05.577517+05:30
8	auth	0005_alter_user_last_login_null	2015-09-26 12:35:05.608781+05:30
9	auth	0006_require_contenttypes_0002	2015-09-26 12:35:05.608781+05:30
10	sessions	0001_initial	2015-09-26 12:35:05.780699+05:30
11	recom	0001_initial	2015-09-28 21:52:08.084417+05:30
12	recom	0002_auto_20150930_1029	2015-09-30 19:12:25.11208+05:30
13	recom	0003_auto_20150930_1656	2015-09-30 19:12:25.11208+05:30
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 13, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
hneekr0jp97xb15zubt2a2c53yh60gvg	MzBlMWY5NjA1YzMxYzI1NmMwNjU2ZjgwZDQ2YjM3ODkxNzgyMmFmNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InJlY29tLmJhY2tlbmQuVXNlckF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==	2015-11-11 12:21:43.265899+05:30
7nnvf2xso9o5et2vfblaf7f1mnmxh25z	NzQ0YWE3YzRlYThhNzc0MjMwN2ZhMTI2MDEwNTEyMDMyN2NiNDBiMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwidXNlcmlkIjoidmludTkzZnJpZW5kNTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJyZWNvbS5iYWNrZW5kLlVzZXJBdXRoQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IiJ9	2015-10-21 01:54:50.578852+05:30
j2i6a9snipsnghx4va19ivnreta2i22w	ODIzMDcxZGZjYTY5MGFlYTQ0MTMzZTNjNWNiZTY4MTZhNDk5NDM0NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwidXNlcmlkIjoidmludTkzZnJpZW5kNTciLCJfYXV0aF91c2VyX2hhc2giOiIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJyZWNvbS5iYWNrZW5kLlVzZXJBdXRoQmFja2VuZCIsInVuYW1lIjoidmludSJ9	2015-10-24 18:12:51.607943+05:30
s85i3hsg28uyp8he8shf8dun5yqfovfw	MDRlMGY2N2JiZjM0YzFlNWMxMzdkODEyNjBhNzk4ODJlZDJlM2U2OTp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoicmVjb20uYmFja2VuZC5Vc2VyQXV0aEJhY2tlbmQifQ==	2015-10-20 16:05:29.543998+05:30
3l00g94hwge0f28yi44t8pxzqh96a7yh	MzBlMWY5NjA1YzMxYzI1NmMwNjU2ZjgwZDQ2YjM3ODkxNzgyMmFmNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InJlY29tLmJhY2tlbmQuVXNlckF1dGhCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==	2015-10-20 16:20:54.144195+05:30
\.


--
-- Data for Name: recom_iprefi; Type: TABLE DATA; Schema: public; Owner: pfd
--

COPY recom_iprefi (id, userid, itemp, scorep) FROM stdin;
1	vinu93friend57 	B0019CW0HE 	3.0 
2	vinu93friend57 	B0019CW0HE 	5.0 
3	vinu93friend57 	B0019CW0HE 	1.0 
\.


--
-- Name: recom_iprefi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pfd
--

SELECT pg_catalog.setval('recom_iprefi_id_seq', 3, true);


--
-- Data for Name: recom_uprefi; Type: TABLE DATA; Schema: public; Owner: pfd
--

COPY recom_uprefi (id, userid, userp) FROM stdin;
\.


--
-- Name: recom_uprefi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pfd
--

SELECT pg_catalog.setval('recom_uprefi_id_seq', 1, false);


--
-- Data for Name: recom_userprofile; Type: TABLE DATA; Schema: public; Owner: pfd
--

COPY recom_userprofile (id, username, password, userid, scoreop, last_login, date_joined) FROM stdin;
1	vinu	vinu	vinu93friend57	2	2015-10-28	2015-10-06
3	vinu123	vinu123	95331D8C905746	0	2015-10-07	2015-10-07
\.


--
-- Name: recom_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pfd
--

SELECT pg_catalog.setval('recom_userprofile_id_seq', 3, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_457b546_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_457b546_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: recom_iprefi_pkey; Type: CONSTRAINT; Schema: public; Owner: pfd; Tablespace: 
--

ALTER TABLE ONLY recom_iprefi
    ADD CONSTRAINT recom_iprefi_pkey PRIMARY KEY (id);


--
-- Name: recom_uprefi_pkey; Type: CONSTRAINT; Schema: public; Owner: pfd; Tablespace: 
--

ALTER TABLE ONLY recom_uprefi
    ADD CONSTRAINT recom_uprefi_pkey PRIMARY KEY (id);


--
-- Name: recom_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: pfd; Tablespace: 
--

ALTER TABLE ONLY recom_userprofile
    ADD CONSTRAINT recom_userprofile_pkey PRIMARY KEY (id);


--
-- Name: recom_userprofile_username_key; Type: CONSTRAINT; Schema: public; Owner: pfd; Tablespace: 
--

ALTER TABLE ONLY recom_userprofile
    ADD CONSTRAINT recom_userprofile_username_key UNIQUE (username);


--
-- Name: auth_group_name_78af2073_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_78af2073_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_33d35d73_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_33d35d73_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_60f26e09_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_60f26e09_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: recom_userprofile_username_51ca405_like; Type: INDEX; Schema: public; Owner: pfd; Tablespace: 
--

CREATE INDEX recom_userprofile_username_51ca405_like ON recom_userprofile USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permiss_permission_id_5ce7f091_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_5ce7f091_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_40d867bd_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_40d867bd_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_195b3ce1_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_195b3ce1_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_31d97da8_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_31d97da8_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_792dc666_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_792dc666_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_27978fde_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_27978fde_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_d5de852_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_d5de852_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_6b396780_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_6b396780_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_22c9a486_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_22c9a486_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

