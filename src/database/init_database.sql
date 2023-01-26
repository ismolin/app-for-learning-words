--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1

-- Started on 2023-01-26 18:36:35 UTC

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
-- TOC entry 214 (class 1259 OID 16388)
-- Name: five_thousands_most_used_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.five_thousands_most_used_words (
    id character varying(255),
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.five_thousands_most_used_words OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16393)
-- Name: ilya_smolin_days_words_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ilya_smolin_days_words_list (
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.ilya_smolin_days_words_list OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16398)
-- Name: ilya_smolin_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ilya_smolin_info (
    categories character varying(255),
    total_quantity_of_words character varying(255)
);


ALTER TABLE public.ilya_smolin_info OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16403)
-- Name: ilya_smolin_repetition_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ilya_smolin_repetition_list (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer
);


ALTER TABLE public.ilya_smolin_repetition_list OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16408)
-- Name: ilya_smolin_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ilya_smolin_words (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer,
    last_repetition_time timestamp without time zone
);


ALTER TABLE public.ilya_smolin_words OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16413)
-- Name: matvata_days_words_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matvata_days_words_list (
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.matvata_days_words_list OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16418)
-- Name: matvata_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matvata_info (
    categories character varying(255),
    total_quantity_of_words character varying(255)
);


ALTER TABLE public.matvata_info OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16423)
-- Name: matvata_repetition_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matvata_repetition_list (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer
);


ALTER TABLE public.matvata_repetition_list OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16428)
-- Name: matvata_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matvata_words (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer,
    last_repetition_time timestamp without time zone
);


ALTER TABLE public.matvata_words OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16433)
-- Name: most_used_it_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.most_used_it_words (
    id character varying(255),
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.most_used_it_words OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16438)
-- Name: none_days_words_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.none_days_words_list (
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.none_days_words_list OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16443)
-- Name: none_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.none_info (
    categories character varying(255),
    total_quantity_of_words character varying(255)
);


ALTER TABLE public.none_info OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16448)
-- Name: none_repetition_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.none_repetition_list (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer
);


ALTER TABLE public.none_repetition_list OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16453)
-- Name: none_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.none_words (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer,
    last_repetition_time timestamp without time zone
);


ALTER TABLE public.none_words OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16458)
-- Name: okkruglov_days_words_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.okkruglov_days_words_list (
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.okkruglov_days_words_list OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16463)
-- Name: okkruglov_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.okkruglov_info (
    categories character varying(255),
    total_quantity_of_words character varying(255)
);


ALTER TABLE public.okkruglov_info OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16468)
-- Name: okkruglov_repetition_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.okkruglov_repetition_list (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer
);


ALTER TABLE public.okkruglov_repetition_list OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16473)
-- Name: okkruglov_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.okkruglov_words (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer,
    last_repetition_time timestamp without time zone
);


ALTER TABLE public.okkruglov_words OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16478)
-- Name: polina_dorohova_days_words_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polina_dorohova_days_words_list (
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.polina_dorohova_days_words_list OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16483)
-- Name: polina_dorohova_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polina_dorohova_info (
    categories character varying(255),
    total_quantity_of_words character varying(255)
);


ALTER TABLE public.polina_dorohova_info OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16488)
-- Name: polina_dorohova_repetition_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polina_dorohova_repetition_list (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer
);


ALTER TABLE public.polina_dorohova_repetition_list OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16493)
-- Name: polina_dorohova_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polina_dorohova_words (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer,
    last_repetition_time timestamp without time zone
);


ALTER TABLE public.polina_dorohova_words OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16498)
-- Name: shevchenyaa_days_words_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shevchenyaa_days_words_list (
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.shevchenyaa_days_words_list OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16503)
-- Name: shevchenyaa_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shevchenyaa_info (
    categories character varying(255),
    total_quantity_of_words character varying(255)
);


ALTER TABLE public.shevchenyaa_info OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16508)
-- Name: shevchenyaa_repetition_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shevchenyaa_repetition_list (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer
);


ALTER TABLE public.shevchenyaa_repetition_list OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16513)
-- Name: shevchenyaa_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shevchenyaa_words (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer,
    last_repetition_time timestamp without time zone
);


ALTER TABLE public.shevchenyaa_words OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16518)
-- Name: tebaatusasulax_days_words_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tebaatusasulax_days_words_list (
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.tebaatusasulax_days_words_list OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16523)
-- Name: tebaatusasulax_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tebaatusasulax_info (
    categories character varying(255),
    total_quantity_of_words character varying(255)
);


ALTER TABLE public.tebaatusasulax_info OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16528)
-- Name: tebaatusasulax_repetition_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tebaatusasulax_repetition_list (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer
);


ALTER TABLE public.tebaatusasulax_repetition_list OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16533)
-- Name: tebaatusasulax_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tebaatusasulax_words (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer,
    last_repetition_time timestamp without time zone
);


ALTER TABLE public.tebaatusasulax_words OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16538)
-- Name: thousand_most_used_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thousand_most_used_words (
    id character varying(255),
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.thousand_most_used_words OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16543)
-- Name: tofannapvp_days_words_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tofannapvp_days_words_list (
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.tofannapvp_days_words_list OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 16548)
-- Name: tofannapvp_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tofannapvp_info (
    categories character varying(255),
    total_quantity_of_words character varying(255)
);


ALTER TABLE public.tofannapvp_info OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 16553)
-- Name: tofannapvp_repetition_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tofannapvp_repetition_list (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer
);


ALTER TABLE public.tofannapvp_repetition_list OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 16558)
-- Name: tofannapvp_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tofannapvp_words (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer,
    last_repetition_time timestamp without time zone
);


ALTER TABLE public.tofannapvp_words OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 16563)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id character varying(255),
    time_of_repetition character varying(255),
    date_of_registration character varying(255),
    state character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 16568)
-- Name: valeriaaleksan_days_words_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.valeriaaleksan_days_words_list (
    words_eng character varying(255),
    words_rus character varying(255)
);


ALTER TABLE public.valeriaaleksan_days_words_list OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 16573)
-- Name: valeriaaleksan_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.valeriaaleksan_info (
    categories character varying(255),
    total_quantity_of_words character varying(255)
);


ALTER TABLE public.valeriaaleksan_info OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 16578)
-- Name: valeriaaleksan_repetition_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.valeriaaleksan_repetition_list (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer
);


ALTER TABLE public.valeriaaleksan_repetition_list OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16583)
-- Name: valeriaaleksan_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.valeriaaleksan_words (
    words_eng character varying(255),
    words_rus character varying(255),
    words_count integer,
    last_repetition_time timestamp without time zone
);


ALTER TABLE public.valeriaaleksan_words OWNER TO postgres;

--
-- TOC entry 3473 (class 0 OID 16388)
-- Dependencies: 214
-- Data for Name: five_thousands_most_used_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.five_thousands_most_used_words (id, words_eng, words_rus) FROM stdin;
1	abandon	оставить, забросить
2	abate	уменьшаться, ослабевать
3	abduct	похищать
4	abide	смириться, выносить
5	able	способный, могущий
6	abnormal	ненормальный, аномальный
7	aboard	на борту
8	abolish	упразднять
9	abort	прерывать
10	abound	изобиловать
11	about	примерно
12	abroad	за границу
13	abrupt	крутой, резкий
14	absent	отсутствующий
15	absorb	впитывать, поглощать
16	abundant	обильный
17	abuse	оскорблять, бранить, брань
18	abuse	злоупотреблять
19	abuse	насилие, домогательство
20	accelerate	ускорять
21	accept	принять
22	access	доступ
23	accessory	принадлежность, аксессуар
24	accident	случайность
25	accident	происшествие, напр.  ДТП
26	acclaim	приветствовать, аплодировать
27	accommodate	размещать, вмещать
28	accompany	сопровождать
29	accomplish	выполнить, завершить
30	accord	согласие
31	according to	в соответствии
32	account	счёт (в банке)
33	account	отчёт
34	account for	объяснить (произошедшее)
35	accurate	точный
36	accuse	обвинять
37	accustom	приучить
38	ache	боль, болеть
39	achieve	достигать
40	acid	кислота
41	acknowledge	признавать, подтверждать
42	acquaint	знакомить
43	acquire	обретать
44	acquit	оправдать (в суде)
45	across	за, через
46	act	действовать
47	act on	действовать в соответствии
48	acute	острый
49	adamant	непреклонный
50	add to	увеличивать
51	add up	сходиться (об информации)
52	addict	наркоман, привыкать
53	addition	добавление, сложение
54	adhere	придерживаться
55	adjacent	смежный, прилегающий
56	adjective	прилагательное
57	adjust	настраивать, поправлять и т.д.
58	admire	восхищаться
59	admit	признавать, допускать
60	adolescent	подросток, подростковый
61	adopt	принимать, перенимать
62	adopt	усыновить или взять (животное)
63	adore	обожать
64	adorn	украшать
65	adult	взрослый
66	adultery	прелюбодеяние, неверность
67	advance	продвигаться, продвижение
68	advantage	преимущество
69	adventure	приключение
70	adverb	наречие
71	adversary	противник, соперник
72	adverse	неблагоприятный
73	advertise	рекламировать
74	advice	совет (неисчисл!)
75	advise	советовать
76	advocate	защищать, отстаивать
77	aerial	воздушный
78	aerial	антенна
79	affair	дело, занятие
80	affair	роман, любовная история
81	affect	воздействовать
82	affection	привязанность, влечение
83	affiliate	филиал, отделение, мл. партнёр
84	affirm	утверждать, подтверждать
85	afflict	поражать, вредить
86	affluent	обеспеченный, состоятельный
87	afford	позволить себе
88	afraid	напуганный
89	after all	всё-таки, в конце концов
90	aftermath	последствие, результат
91	age	век, эпоха
92	age	возраст
93	agenda	повестка дня
94	aggravate	обострять
95	aggregate	совокупный
96	agile	проворный, гибкий
97	agitate	волновать
98	agree	соглашаться
99	agreement	соглашение, договор
100	agriculture	сельское хозяйство
101	ahead	вперёд, впереди
102	aid	помощь, помогать
103	ailment	недомогание, болезнь
104	aim	цель
105	air	вид, впечатление
106	airborne	находящийся в воздухе
107	aircraft	самолёт, авиация
108	airline	авиалиния
109	aisle	проход
110	akin	похожий
111	alarm	тревога, сигнализация
112	alas	увы
113	albeit	хотя
114	alert	тревога, бдительный
115	alien	чужак, пришелец, иммигрант
116	alienate	отчуждать, отдалять, отвергать
117	align	выравнивать, выстраивать
118	alike	подобно
119	alive	живой
120	all along	всё время
121	allege	утверждать, приписывать
122	allegiance	верность
123	allocate	распределять (ресурсы)
124	allot	выделять, отводить
125	allow	разрешать
126	allow for	выделять, рассчитывать
127	allowance	выплата, пособие
128	allude	намекать, указывать
129	allure	очарование, очаровывать
130	ally	союзник
131	almost	почти
132	alone	в одиночестве
133	alongside	рядом
134	aloud	вслух
135	alter	изменять
136	alternate	чередовать, чередующийся
137	although	хотя и
138	altitude	высота
139	altogether	в целом
140	amateur	любитель, любительский
141	amaze	поражать, изумлять
142	ambassador	посол
143	amber	янтарь
144	ambiguous	двусмысленный, неоднозначный
145	ambulance	скорая помощь
146	ambush	засада
147	amend	исправить, улучшить
148	amenity	удобство, обустройство
149	amid (amidst)	среди
150	ammunition	боеприпасы
151	amount	количество (неисчисл.)
152	ample	обильный, широкий
153	amplify	усиливать
154	amuse	развлечь, порадовать
155	ancestor	предок
156	anchor	якорь, закреплять
157	ancient	древний
158	anew	заново
159	anger	гнев
160	angle	угол, угловой
161	angry	злой
162	anguish	мука, страдание
163	animate	живой, одушевлённый, оживлять
164	ankle	лодыжка, щиколотка
165	anniversary	годовщина
166	announce	объявлять
167	annoy	раздражать, надоедать
168	annual	ежегодный
169	ant	муравей
170	anthem	гимн
171	anticipate	ожидать
172	antique	старинный
173	anxiety	беспокойство, тревога
174	anxious	озабоченный, встревоженный
175	anymore	больше не
176	anytime	в любой момент
177	anyway	в любом случае
178	anywhere	где угодно, куда угодно
179	apart	отдельно, врозь
180	apart from	помимо
181	apartment	квартира
182	ape	обезьяна (крупная)
183	apiece	каждый, за штуку
184	apology	извинение(я)
185	appal	потрясать, ужасать
186	apparent	явный, видимый
187	appeal	обращаться, взывать
188	appear	появиться
189	appear	казаться
190	applause	аплодисменты
191	appliance	прибор, приспособление
192	apply	применять, применяться
193	apply	обращаться (с заявлением)
194	appoint	назначать, утверждать
195	appraise	оценивать
196	appreciate	ценить
197	apprentice	ученик, стажёр
198	approach	приближаться, подходить
199	appropriate	присвоить
200	appropriate	подходящий, присущий
201	approve	утвердить, одобрить (офиц.)
202	approve of	одобрять (субъективно)
203	approximate	приблизительный
204	apron	фартук, передник
205	apt	склонный, способный
206	aquatic	водный
207	arbitrary	произвольный
208	arc	дуга
209	arch	арка, изгибать
210	archive	архив
211	area	область, участок
212	argue	спорить, доказывать
213	arise (arose, arisen)	возникать, происходить
214	arm	рука
215	armor (armour)	броня, доспехи
216	arms	оружие
217	arouse	вызывать, пробуждать
218	arrange	организовать, уладить и т.д.
219	array	ряд, порядок, строй
220	arrest	задерживать, тормозить
221	arrive	прибывать
222	arrogant	высокомерный
223	arrow	стрела, стрелка
224	arson	поджог
225	article	статья
226	article	вещь, изделие
227	artificial	искусственный
228	as though	как будто
229	as well	также
230	as well as	так же как и
231	ascend	восходить
232	ascertain	выяснить, установить
233	ash	пепел, зола
234	ashamed	пристыженный
235	ashtray	пепельница
236	aside	в стороне, в сторону
237	aside from	кроме
238	ask around	поспрашивать
239	ask out	пригласить сходить
240	asleep	спящий
241	aspire	стремиться
242	ass	жопа
243	assassin	убийца
244	assault	нападение, нападать
245	assemble	собирать
246	assert	утверждать, отстаивать
247	assess	оценить
248	asset	актив, имущество
249	assign	назначать, присваивать
250	assimilate	усваивать
251	assist	помогать
252	associate	общаться, связываться
253	assume	принимать на себя
254	assume	предпогалать
255	assure	уверять
256	astonish	изумлять
257	astound	изумлять
258	asylum	убежище
259	at all	совсем
260	at first	сначала
261	at last	наконец
262	at least	по крайней мере
263	at odds with	в противоречии, в конфликте
264	at once	сразу
265	at the moment	сейчас
266	atop	наверху
267	atrocity	зверство, злодеяние
268	attach	прикрепить, привязать
269	attack	нападать, нападение
270	attain	достигать
271	attempt	попытка, пытаться
272	attend	уделить внимание, посетить
273	attic	чердак
274	attitude	отношение
275	attorney	адвокат, прокурор, поверенный
276	attract	привлекать, притягивать
277	attribute	приписывать, относить
278	audible	слышимый
279	audience	аудитория (люди)
280	augment	увеличить, нарастить
281	aunt	тётя
282	authorities	органы власти
283	authority	власть
284	authorize	дать полномочия, поручение
285	available	доступный, в наличии
286	avalanche	лавина
287	average	средний
288	avert	предотвращать, отводить
289	avid	заядлый, рьяный, алчный
290	avoid	избегать
291	await	ожидать
292	awake	проснуться, бодрствующий
293	award	награда, премия, присуждать
294	aware	осведомлённый
295	awe	трепет, благоговение
296	awesome	здорово, классно
297	awful	ужасный
298	awhile	какое-то время
299	awkward	неуклюжий
300	axe (ax)	топор
301	axis	ось
302	bachelor	бакалавр
303	bachelor	холостяк
304	back down	отступить, отказаться
305	back then	тогда
306	back up	поддержать, прикрыть
307	backbone	хребет
308	backdrop	фон
309	background	происхождение, предыстория и т.д.
310	background	фон
311	backpack	рюкзак
312	badge	значок
313	baffled	в неодумении, в тупике
314	bag	сумка, мешок
315	bail	залог
316	bait	приманка
317	bake	печь (выпекать)
318	bald	лысый, плешивый
319	bale	тюк
320	balloon	воздушный шар
321	ballot	госолование, бюллетень
322	ban	запрещать
323	band	ансамбль
324	bandage	повязка
325	bang	удар, взрыв
326	banish	отгонять
327	bank	берег (реки, озера)
328	bank on	надеяться, полагаться
329	bankrupt	банкрот, неплатежеспособный
330	banner	знамя, транспарант
331	baptize	крестить
332	bar	пластина, брусок, прут и т. д.
333	bar	загораживать
334	barb	шип, зазубрина
335	barber	парикмахер
336	bare	голый
337	barefoot	босиком
338	barely	едва, лишь только
339	bargain	сделка, торговаться
340	bark	кора
341	bark	лаять
342	barn	сарай
343	barrel	бочка
344	barren	бесплодный
345	bartender	бармен
346	base	основа, основывать
347	basement	подвал
348	bash	колотить
349	basket	корзина
350	bastard	ублюдок
351	bat	бита
352	bat	летучая мышь
353	batch	партия, серия, группа
354	bath	ванна
355	bathe	купаться, купать
356	batter	паста, тесто, взбивать
357	battle	битва
358	bay	залив
359	be after	иметь целью
360	be back	возвращаться
361	be in	участвовать
362	be into	любить, увлекаться
363	be keen to	желать, стремиться
364	be late	опоздать
365	be off	отсутствовать
366	be on fire	гореть
367	be over	закончиться
368	be up to	замышлять что-то
369	bead	шарик, бусинка
370	beak	клюв
371	beam	балка, перекладина
372	beam	луч
373	bean	боб
374	bear (bore, born)	рожать
375	bear (bore, born)	нести, втч перен.
376	beard	борода
377	beast	зверь, животное, скот
378	beat (beat, beaten)	победить
379	beat (beat, beaten)	бить
380	beat up	побить
381	beauty	красота или красавица
382	beaver	бобр
383	beckon	манить
384	become of	случиться с к-л впоследствии
385	beef	говядина
386	beep	гудок, гудеть, пищать
387	beetle	жук
388	beforehand	заранее
389	beg	просить
390	behave	вести себя
391	behavior	поведение
392	behold	созерцать, видеть
393	beige	бежевый
394	belief	убеждение, вера
395	bell	колокол, колокольчик
396	bellow	реветь, рёв
397	belly	живот
398	belong to	принадлежать
399	beloved	любимый
400	below	ниже, под
401	belt	пояс
402	bench	скамейка
403	bend (bent, bent)	изгибать, изгиб
404	bend down	наклониться
405	beneath	ниже, под
406	benefit	польза, создавать пользу
407	benevolent	благожелательный
408	berry	ягода
409	berth	койка, место, полка в поезде
410	beside	рядом
411	besides	кроме
412	bestow	даровать
413	bet	ставка, пари, держать пари
414	betray	предавать
415	beverage	напиток
416	beware	остерегаться
417	bewilder	смущать, сбивать с толку
418	beyond	вне, свыше
419	bias	склонность, предвзятость
420	bicycle	велосипед
421	bid	заявка, предложение цены
422	bigot	фанатик
423	bill	счёт (к оплате)
424	bill	банкнота
425	billboard	рекламный щит
426	billion	миллиард
427	bin	ящик, ведро, ларь
428	bind (bound, bound)	связывать
429	binge	кутёж, загул, пьянка
430	birth	рождение
431	bishop	епископ
432	bitch	сука
433	bite (bit, bitten)	кусать, укус
434	bitter	горький
435	bizarre	странный, причудливый
436	black out	обесточить
437	blackmail	шантажировать
438	blade	лезвие
439	blame	винить
440	bland	пресный, мягкий
441	blank	пустой, чистый
442	blanket	одеяло, покрывало
443	blast	дуновение, порыв
444	blast	взрыв, взрывать
445	blatant	явный, вопиющий
446	blaze	полыхать, пламя
447	bleach	отбелить, обесцветить
448	bleak	мрачный
449	bleed (bled, bled)	кровоточить
450	blend	смешивать
451	bless	благословлять
452	blind	слепой
453	blink	мерцать, мигать
454	bliss	блаженство
455	blizzard	метель, буран
456	bloat	раздуваться
457	block	кусок, глыба и т. д.
458	block	квартал
459	block out	блокировать, не пускать
460	block up	забиться (о канале)
461	blonde	блондинка
462	bloom	расцвет, расцветать
463	blossom	цвести, цвет
464	blouse	блузка
465	blow (blew blown)	дуть
466	blow (blew blown)	удар
467	blow out	задуть (свечу)
468	blow over	пройти, утихнуть
469	blow up	взорвать
470	blow up	накачивать, надувать
471	bluff	блеф
472	blunt	тупой, притуплять
473	blur	размывать, смазывать
474	blush	румянец, краснеть
475	board	совет, коллегия
476	board	доска
477	board	борт, подниматься на борт
478	boast	хвастать, хвастовство
479	boat	лодка, судно
480	bog	болото, трясина
481	boil	кипеть, кипятить, варить
482	bold	смелый, дерзкий, безрассудный
483	bolster	укреплять, поддерживать
484	bond	связь, узы, соединение
485	bond	обязательство, облигация
486	bone	кость
487	bonfire	костер
488	boobs	титьки
489	book	купить, забронировать
490	boom	заграждение, пояс
491	boost	повышать, усиливать
492	boot	сапог, ботинок
493	booth	будка, кабина
494	booze	выпивка
495	border	граница, край
496	bore	надоедать
497	borough	район, место
498	borrow	брать взаймы
499	both	оба
500	bother	беспокоить
501	bottom	дно
502	boulder	валун
503	bounce	отскакивать, прыгать
504	bound	обязан
505	boundary	граница, черта
506	bounds	границы, рамки (перен.)
507	bounty	вознаграждение
508	bout	всплеск, приступ
509	bout	бой, поединок
510	bow	бант, бабочка
511	bow	лук
512	bow	поклон, наклоняться
513	bow out	откланяться, уйти
514	bowel	кишка
515	bowl	миска
516	brace	скоба, распорка, скрепа
517	bracket	скобка
518	brag	хвастаться, кичиться
519	braid	коса или оплётка
520	brake	тормоз
521	branch	ветвь
522	branch	филиал, ответвление
523	brass	латунь
524	brassiere (bra)	бюстгальтер
525	brave	храбрый
526	brawl	шумная драка, скандал
527	brazen	наглый
528	breach	брешь, прорывать, пробивать
529	breadth	ширина, широта
530	break	перерыв, перемена
531	break (broke, broken)	нарушать
532	break away	отделяться
533	break down	ломаться
534	break into (break in)	проникнуть, вломиться
535	break out	вспыхнуть, разразиться
536	break out	сбежать, вырваться
537	break up	разорвать отношения
538	breakthrough	прорыв, достижение
539	breast	грудь
540	breath	дыхание, вздох
541	breathe	дышать
542	breed	порода, поколение и т д.
543	breed (bred, bred)	разводить, выращивать
544	brew	заваривать, варить напиток
545	bribe	взятка
546	brick	кирпич
547	bride	невеста
548	bridge	мост
549	brief	краткий
550	briefcase	портфель
551	bright	яркий
552	brilliant	блестящий
553	brim	край сосуда
554	bring (brought, brought)	принести
555	bring along	взять с собой
556	bring around	убедить
557	bring back	вернуть
558	bring down	сбрасывать, свергать
559	bring in	привлечь
560	bring out	выпустить (новинку и т.д.)
561	bring up	поднять тему
562	bring up	воспитывать
563	brink	грань, край
564	brisk	энергичный, оживлённый
565	bristle	щетина
566	brittle	ломкий
567	broad	широкий
568	broadcast	транслировать, трансляция
569	broom	метла, веник
570	broth	бульон, отвар
571	bruise	синяк, ушиб
572	brush	кисть, щётка, чистить
573	brute	животное, зверь, грубый
574	bubble	пузырь
575	buck	самец, обычно рогатых
576	bucket	ведро, бадья
577	buckle	пряжка
578	buckle up	пристегнуться
579	bud	бутон или почка растения
580	buddy	дружище, парень
581	budge	сдвинуть
582	buffalo	буйвол или бизон
583	bug	жук
584	build on	нарастить, развить
585	built-in	встроенный
586	bulb	лампа, колба
587	bulge	бугор, выпуклость
588	bulk	основная масса
589	bullet	пуля
590	bullshit	ерунда, чушь
591	bully	задира, задирать
592	bum	бомж или бездельник
593	bump	шишка, выпуклость
594	bump	удар, ударять
595	bun	булочка
596	bunch	связка, пучок, группа
597	bundle	связка, пучок, пачка
598	bunk	койка, спальное место
599	bunny	кролик (разг, детск.)
600	burden	бремя, нагружать
601	burglar	вор взломщик
602	burn	жечь
603	burn down	сгореть, сжечь (полностью)
604	burn out	выгореть, перегореть
605	burrow	нора, зарываться
606	burst	взрыв, всплеск и т. д.
607	bury	хоронить
608	bush	куст
609	bustle	суета, суматоха
610	busy	занятый
611	butcher	мясник
612	butt	торец, зад
613	butt	задница
614	butt in	встревать, вмешиваться
615	butter	масло сливочное
616	butterfly	бабочка
617	button	пуговица, застёгивать
618	buy	верить, соглашаться (разг.)
619	buy up	скупить
620	buzz	жужжать
621	by chance	случайно
622	by far	безусловно
623	by heart	наизусть
624	by oneself	один, сам
625	by the way	кстати
626	bypass	обходить, обход
627	cab	такси
628	cabbage	капуста
629	cabin	хижина
630	cable	канат, кабель, трос и т.д.
631	cage	клетка
632	calf (pl:calves)	теленок
633	call back	перезвонить
634	call for	требовать, взывать
635	call off	отменить
636	call on	обратиться, попросить
637	calm	спокойный, успокоить
638	calm down	успокоиться
639	camp	лагерь
640	can	банка
641	cancel	отменять
642	cancer	рак (болезнь)
643	candid	честный, беспристрастный
644	candle	свеча
645	candy	конфеты
646	cane	трость
647	cannon	пушка
648	canopy	навес, тент, полог
649	canvas	холст
650	cap	кепка, шляпа, колпачок
651	capable	способный к ч-л.
652	capacity	ёмкость, вместимость
653	capacity	способность, возможность
654	cape	мыс
655	capital	главный, большой, высший
656	captive	пленник
657	capture	захватить
658	carbohydrate	углевод
659	carbon	углерод, уголь, графит
660	carcass	туша
661	cardboard	картон
662	care	забота, уход
663	care	переживать, интересоваться
664	career	карьера
665	caress	ласкать, гладить
666	cargo	груз, грузовой
667	carpenter	плотник
668	carpet	ковер
669	carriage	каретка
670	carrot	морковь
671	carry	носить
672	carry out	выполнить
673	cart	телега
674	cartoon	мультфильм
675	carve	вырезать (напр. из дерева)
676	case	случай, дело
677	case	ящик, футляр, чехол
678	cash	наличка, обналичить
679	casket	шкатулка или гроб (амер.)
680	cast (cast, cast)	бросать, метать
681	cast (cast, cast)	отливать
682	casual	случайный
683	casualty	жертва, потери
684	catch	расслышать, уловить
685	catch (caught, caught)	ловить
686	catch on	становиться популярным
687	catch on	внезапно понять
688	catch up on	следить быть в курсе
689	catch up with	догнать
690	cater	обслуживать, угождать
691	catering	общественное питание
692	cathedral	собор
693	cattle	крупный рогатый скот
694	cause	причина, быть причиной
695	caution	предосторожность, предостережение
696	cave	пещера, полость
697	caviar	икра
698	cavity	полость, впадина
699	cease	прекращать
700	cedar	кедр
701	ceiling	потолок, перекрытие
702	celebrate	праздновать
703	celebrity	знаменитость
704	celestial	астрономический, небесный
705	cell	ячейка, клетка
706	cellar	подвал
707	cellular	сотовый
708	cemetery	кладбище
709	censorship	цензура
710	census	перепись
711	century	век
712	cereal	злак, каша, хлопья
713	certain	определённый, уверенный
714	chain	цепь
715	chair	стул
716	chairman	председатель
717	chalk	мел
718	challenge	вызов, необычная задача
719	chamber	кабинет, зал, палата, камера
720	chancellor	канцлер
721	change	сдача, мелочь
722	chant	петь, скандировать, песнопение
723	chaos	хаос
724	chap	парень
725	chapel	часовня
726	chapter	глава
727	character	персонаж
728	charge	заряжать, нагружать
729	charge	обвинять
730	charge	плата
731	charity	благотворительность
732	charm	обаяние, очаровывать
733	chart	схема, график, таблица
734	chase	погоня, гнаться
735	chat	болтать
736	chatter	болтать, болтовня
737	cheat	жульничать
738	cheat on	изменять
739	check	проверить
740	check in	вселиться (в отель)
741	check into	лечь (в больницу)
742	check on	проверить, что всё норм
743	check out	посмотреть, заценить
744	check out	освободить номер
745	checkup	медосмотр
746	cheek	щека
747	cheer	аплодировать, радостно встречать
748	cheer on	болеть (за спорт)
749	cheer up	взбодриться
750	cheerful	весёлый, неунывающий
751	chef	шеф-повар
752	chemistry	химия
753	cherish	лелеять, хранить
754	chess	шахматы
755	chest	грудь (грудная клетка)
756	chest	сундук
757	chestnut	каштан
758	chew	жевать
759	chief	вождь, начальник, главный
760	childhood	детство
761	chill	холод, охлаждать
762	chill out	расслабиться
763	chimney	дымовая труба
764	chin	подбородок
765	chip	щепка, стружка
766	choice	выбор
767	choir	хор
768	choke	задыхаться,  давиться
769	chop	рубить
770	chop down	срубить (дерево)
771	chop up	порезать (на кусочки)
772	chord	аккорд
773	chore	скучная неприятная работа
774	chorus	припев
775	Christmas	рождество
776	chuck	бросать (небрежно)
777	chuckle	посмеиваться
778	chunk	кусок
779	church	церковь
780	cinema	кино, кинотеатр
781	cinnamon	корица
782	circle	круг, окружность
783	circuit	схема, цепь, контур
784	circumstance	обстоятельство
785	circus	цирк
786	cite	упоминать, цитировать
787	citizen	гражданин
788	civic	гражданский
789	civil	гражданский
790	civilian	гражданский
791	claim	требовать, претендовать
792	claim	утверждать, претендовать
793	clam	моллюск
794	clamour	шум, ропот, протесты
795	clamp	зажимать, зажим
796	clap	хлопать в ладоши
797	clarify	прояснять
798	clash	столкновение
799	clasp	застёжка, застёгивать
800	clause	пункт, статья документа
801	claw	коготь, клешня
802	clay	глина
803	clean up	убрать (мусор)
804	cleanse	очищать
805	clear	ясный, чистый (пр. и перен.)
806	clear off	убраться вон
807	clear out	убирать, забирать
808	clear up	прояснить(ся)
809	cleave	раскалывать
810	clench	стиснуть, сжать
811	clergy	духовенство
812	clerical	канцелярский, административный
813	clever	умный
814	click	щёлкать, щелчок
815	cliff	утес
816	climax	кульминация, разгар
817	climb	взбираться
818	cling (clung, clung)	цепляться
819	clip	отсекать, обрезать
820	clip	зажим, зажимать
821	cloak	плащ, мантия, покров
822	clockwise	по часовой стрелке
823	clog	загромождать
824	close down	закрыться (насовсем)
825	close in on	приближаться
826	closet	стенной шкаф
827	closure	закрытие, завершение
828	cloth	ткань, тряпка
829	clothe	одевать, покрывать
830	cloud	облако
831	clout	влияние, влиятельность
832	clove	гвоздика
833	clue	ключ, нить, улика
834	clump	комок, кучка, клок
835	clumsy	неловкий, неуклюжий
836	clutch	сцеплять, сцепление
837	clutter	беспорядок, куча всего
838	coach	автобус, вагон, телега
839	coach	тренер
840	coal	уголь
841	coarse	грубый, крупный, шероховатый
842	coast	побережье
843	coaster	подставка
844	coat	покрывать
845	coat	пальто
846	coax	убедить, соблазнить сделать
847	coconut	кокос
848	coerce	принуждать
849	coffin	гроб
850	coherent	согласованный, связный
851	cohesion	единство, согласие
852	coil	катушка, моток, наматывать
853	coincide	совпасть
854	coincidence	совпадение
855	cold	простуда
856	collaborate	сотрудничать
857	collapse	обрушиться, сложиться
858	collar	воротник или ошейник
859	collect	собирать
860	collide	сталкиваться
861	colon	двоеточие
862	colonel	полковник
863	column	столб, колонна
864	comb	расческа, причёсывать
865	combat	бой
866	combine	соединять(ся)
867	come about	произойти
868	come across	встретить (случайно)
869	come along	идти вместе
870	come along	продвигаться (о работе)
871	come by	найти, заполучить
872	come by	зайти
873	come down	сводиться
874	come from	быть из
875	come into	унаследовать
876	come off	выйти, получиться
877	come off	отвалиться
878	come on	включаться
879	come out	выступить, заявить
880	come out	выходить (напр. об альбоме)
881	come over	заходить (в гости)
882	come through	пережить, перенести
883	come to	очнуться
884	come to	доходить до
885	come to life	оживать, приходить в себя
886	come true	сбываться
887	come under	подвегрнуться
888	come up	произойти или появиться
889	come up	приближаться (о событии)
890	come up to	подойти к кому-л.
891	come up with	придумать
892	come with	прилагаться
893	comedian	комик
894	comfort	утешать, утешение
895	commemorate	отметить, почтить
896	commence	начинать
897	commend	высоко оценивать
898	commercial	реклама (на ТВ)
899	commission	поручение, полномочие
900	commit	совершить (напр. ошибку)
901	commitment	приверженность
902	commitment	обязательство
903	commodity	товар, сырьё
904	common	общий
905	common	обычный, распространённый
906	commonplace	обычное дело, банальность
907	commonwealth	содружество
908	communicate	общаться
909	community	община, сообщество
910	commute	ходить, курсировать
911	compact	договор
912	compare	сравнить
913	comparison	сравнение
914	compartment	отсек, отделение, купе
915	compassion	сочуствие, сострадание
916	compatible	совместимый
917	compel	вынуждать, заставлять
918	compete	соперничать
919	complain	жаловаться
920	complement	допонять, дополнение
921	complement	набор, состав, комплект
922	complete	завершить, выполнить
923	complex	сложный
924	complicate	усложнять
925	comply	соблюдать, соответствовать
926	compose	составлять, сочинять
927	compound	состав, составной
928	comprehend	понять, вникнуть
929	comprehensive	исчерпывающий, всесторонний
930	compress	сжимать, прессовать
931	comprise	состоять из, охватывать
932	compulsory	принудительный, обязательный
933	comrade	товарищ
934	conceal	скрывать
935	concede	уступить
936	conceive	помыслить, представить
937	concept	понятие, идея
938	concern	забота, тревожить
939	conclude	заключать, завершать
940	concrete	бетон, бетонировать
941	concur	соглашаться
942	condemn	осуждать
943	condition	состояние
944	condition	условие
945	conduct	вести, поведение
946	cone	конус
947	confer	дать, принести, присудить
948	confer	совещаться
949	confess	признаваться
950	confide	доверить, вверить
951	confident	уверенный
952	confine	ограничить (ся)
953	confirm	подтвердить
954	conform	соответствовать
955	confront	противостоять, сталкиваться
956	confuse	путать
957	congestion	загруженность, запор
958	congratulate	поздравлять
959	conjunction	соединение, связь
960	connect	соединять
961	conquer	завоевать
962	conquest	завоевание
963	conscience	совесть, сознательность
964	conscious	сознательный, сознающий
965	consecutive	последующий по времени
966	consent	согласие, разрешение
967	consequence	последствие
968	consequent	последующий, вытекающий
969	conserve	беречь, экономить
970	consider	рассматривать, учитывать
971	consider	считать чем-либо
972	considerable	крупный, значительный
973	consist of	состоять (из)
974	consistent	последовательный
975	console	утешать
976	conspicuous	заметный
977	conspire	сговариваться
978	constant	постоянный
979	constellation	созвездие
980	constitute	составлять, образовывать
981	constrain	ограничивать (препятствием)
982	construct	соорудить
983	construction (site)	стройка
984	consult	советоваться
985	consume	потреблять
986	contain	содержать
987	contaminate	загрязнять
988	contemplate	созерцать или размышлять
989	contemporary	современный, современник
990	contempt	презрение, презирать
991	contend	бороться, соперничать
992	content	содержимое
993	content with	довольный, довольство
994	contest	соревнование, конкурс
995	contingency	непредвиденные обстоятельства
996	continue	продолжить
997	contract	сокращаться
998	contradict	противоречить
999	contrary	противоположный, вопреки
1000	contribute	способствовать, вносить вклад
1001	controversy	спор, разногласие, дискуссия
1002	convene	созывать, собирать
1003	convenient	удобный
1004	conventional	стандартный, общепринятый
1005	converge	сходиться, сближаться
1006	converse	разговаривать
1007	convert	преобразовывать
1008	convey	перевозить, передавать
1009	convict	осуждённый, осуждать
1010	conviction	убеждение, убеждённость
1011	convince	убеждать
1012	cookie	печенье
1013	cool	прохладный, свежий
1014	cool down	остыть
1015	cooperate	сотрудничать
1016	cope with	совладать, справиться
1017	copper	медь
1018	cord	верёвка, шнур
1019	core	ядро, сердцевина, сущность
1020	cork	пробка
1021	corn	кукуруза, зерно
1022	corner	угол
1023	corps	корпус
1024	corpse	труп
1025	correct	правильный, исправлять
1026	correlate	соотносить
1027	correspond	соответствовать
1028	corrupt	развращать, разлагать
1029	cost (cost, cost)	стоить, стоимость
1030	cotton	хлопок
1031	couch	диван
1032	cough	кашель
1033	council	совет (орган)
1034	counsel	совет, консультация
1035	count	считаться, иметь значение
1036	count	считать
1037	count on	рассчитывать на
1038	counter	противостоять, противоположный
1039	counter	стойка, прилавок
1040	counterfeit	подделка, фальшивый
1041	counterpart	аналог, коллега, и т. д.
1042	countryside	сельская местность
1043	county	графство, округ
1044	coup	переворот
1045	couple	пара
1046	courage	мужество
1047	court	суд
1048	court	двор (королевский)
1049	court	игровая площадка
1050	courtesy	учтивость, этикет
1051	courtyard	внутренний двор
1052	cover	накрывать, покрывать
1053	coverage	освещение
1054	covet	желать, вожделеть
1055	coward	трус
1056	co-worker	сотрудник
1057	cozy	уютный
1058	crack	трескаться, трещина
1059	crackle	потрескивание
1060	cradle	колыбель
1061	craft	ремесло, мастерство
1062	cram	втискивать, впихивать
1063	cramp	судорога
1064	crane	подъёмный кран
1065	crank	чудак, фрик
1066	crap	дерьмо
1067	crash	горохот, крушение, разбивать и т. д.
1068	crate	ящик
1069	crave	желать, жаждать, требовать
1070	crawl	ползать
1071	crayon	цветной карандаш, мелок
1072	creak	скрипеть
1073	cream	крем, сливки
1074	crease	складка, сминать
1075	create	создавать
1076	creature	существо
1077	credential	удостоверение, аккредитация
1078	credible	заслуживающий доверия
1079	creed	вероисповедание, убеждение
1080	creek	ручей
1081	creep	гад, урод (разг)
1082	creep (crept, crept)	ползти, красться
1083	creepy	жуткий
1084	crest	гребень
1085	crew	команда, экипаж
1086	crib	раскладушка или дет. кроватка
1087	crime	преступление
1088	criminal	преступник
1089	crimson	малиновый, багряный
1090	cringe	съёживаться
1091	cripple	калека, калечить
1092	crisp	хрустящий
1093	crook	сгибать, искривлять
1094	crop	урожай
1095	cross	пересекать, пересечение, крест
1096	cross out	вычеркнуть
1097	crossroads	перекрёсток, перепутье
1098	crouch	присесть, припасть к земле
1099	crow	ворона
1100	crowd	толпа
1101	crown	корона, короновать
1102	crucial	решающий, критический
1103	crude	сырой, грубый, необработанный
1104	cruel	жестокий
1105	crumb	крошка, крупица
1106	crumble	крошить, рушиться
1107	crumple	смять
1108	crunch	хрустеть
1109	crusade	крестовый поход
1110	crush	раздавливать, дробить
1111	crust	кора, корка
1112	cry out	закричать (от страха, боли)
1113	cub	детеныш
1114	cubicle 	отсек, кабинка
1115	cucumber	огурец
1116	cuddle	обнимать, прижимать
1117	cue	сигнал, намёк
1118	cuisine	кухня
1119	cup	чашка, кружка, кубок
1120	cupboard	шкаф, буфет
1121	curb	узда, обуздать, сдержать
1122	curb	бордюр или обочина
1123	cure	лечить
1124	curious	любопытный
1125	curl	скручивать, клубиться, завиток
1126	currency	валюта
1127	current	текущий, актуальный
1128	current	ток, поток, течение
1129	curriculum vitae	резюме, биография
1130	curse	проклятие
1131	curtain	занавеска, занавес
1132	curve	изгибать, кривая
1133	cushion	подушка (маленькая)
1134	custody	охрана, стража или опека
1135	custom	заказной, индивидуальный
1136	custom	обычай, привычка
1137	customer	клиент
1138	customs	таможня
1139	cut across	пересечь, срезать путь
1140	cut down	урезать, уменьшить
1141	cut off	отрезать, отключить
1142	cute	привлекательный, милый
1143	dagger	кинжал
1144	daily	ежедневно
1145	dairy	молочные продукты
1146	dam	плотина
1147	damage	вред, повреждать
1148	damn	проклятый, проклинать
1149	damp	сырой, сырость
1150	dangle	мотаться
1151	dare	осмелиться
1152	darling	дорогой/ая (устар.) 
1153	darn	штопать
1154	dash	тире, чёрточка
1155	dash	бросать, бросаться
1156	dash	разрушить (перен.)
1157	data	данные
1158	database	база данных
1159	date	свидание, встречаться
1160	daunt	пугать, обескураживать
1161	dawn	рассвет
1162	dawn on	осенить
1163	day off	выходной
1164	daze	ошеломить
1165	dazzle	ослепить
1166	dead end	тупик
1167	deaf	глухой
1168	deal	сделка
1169	deal in	заниматься (напр. торговать)
1170	deal with	иметь дело с
1171	debate	обсуждать, спорить
1172	debris	мусор, обломки, завалы
1173	debt	долг
1174	decade	десятилетие или десяток
1175	decay	распад, упадок, разлагаться
1176	deceased	покойный, усопший
1177	deceive	обманывать
1178	decent	приличный, достойный
1179	deception	обман
1180	decide	решить
1181	decisive	решающий, решительный
1182	deck	палуба, крышка, настил
1183	declare	объявлять
1184	decline	отказаться, отклонить
1185	decline	снижаться, снижение
1186	decorate	украшать
1187	decrease	уменьшать(ся), уменьшение
1188	decree	постановление, декрет, указ
1189	dedicate	посвящать
1190	deduct	вычитать (об. про деньги)
1191	deed	дело, поступок
1192	deem	считать (чем-либо)
1193	deep	глубокий
1194	deer (pl:deer)	олень
1195	defeat	поражение, наносить поражение
1196	defence (defense)	защита, защитный
1197	defend	защитить
1198	deficient	недостаточный, неполный
1199	define	определять
1200	definite	определённый
1201	deflect	отклонять, преломлять
1202	deft	ловкий, проворный
1203	defy	пренебрегать, отрицать
1204	degree	степень (во всех значениях)
1205	degree	градус
1206	deity	божество
1207	delay	задерживать(ся)
1208	deliberate	обдуманный, преднамеренный
1209	delicate	тонкий, нежный, хрупкий
1210	delicious	восхитительный (о еде)
1211	delight	восторг
1212	delinquent	правонарушитель
1213	deliver	доставлять
1214	deliver	рожать
1215	delusion	наваждение, заблуждение
1216	demand	требовать
1217	demand	спрос
1218	demise	кончина, конец
1219	demolish	сносить
1220	den	логово, берлога
1221	denote	обозначать
1222	denounce	осуждать, разоблачать
1223	dense	густой
1224	dent	вмятина
1225	dental	зубной, стоматологический
1226	deny	отрицать
1227	depart	отправляться, отходить
1228	department	отдел
1229	depend	зависеть
1230	dependent	зависимый
1231	depict	изображать, описывать
1232	deplete	истощать
1233	deploy	развёртывать
1234	depot	хранилище, база, склад
1235	depress	угнетать, подавлять
1236	deprive	лишать
1237	depth	глубина
1238	deputy	депутат, представитель
1239	derive	выводить, извлекать
1240	descend	спускаться
1241	descend from	происходить от
1242	describe	описать
1243	desert	пустыня
1244	desert	бросать, оставлять
1245	deserve	заслуживать
1246	designate	обозначать, называть
1247	desire	желание, желать
1248	desk	письменный стол
1249	desktop	настольный
1250	desolate	пустынный, безлюдный
1251	despair	отчаяние, безнадёжность
1252	desperate	отчаянный, безвыходный
1253	despise	презирать
1254	despite	несмотря на
1255	destination	место назначения
1256	destiny	судьба, предназначение
1257	destroy	разрушать
1258	detach	отделить, оторвать
1259	detain	задерживать
1260	detect	обнаружить, выявить
1261	detention	задержание, арест
1262	deter	удерживать (от действия)
1263	deteriorate	ухудшать
1264	determine	определить
1265	determined	решителен
1266	detriment	ущерб, вред
1267	devastate	опустошать, разорять
1268	develop	развивать, разрабатывать
1269	deviate	отклоняться
1270	devise	придумывать, изобретать
1271	devoid	лишенный
1272	devote	посвятить, уделить
1273	devour	пожирать
1274	dial	набирать номер
1275	diamond	бриллиант обычно алмаз
1276	diary	дневник
1277	dice (pl: dice)	кубик (игральный)
1278	dictionary	словарь
1279	die down	утихнуть
1280	die out	вымереть
1281	differ	отличаться
1282	different	разный, отличающийся
1283	difficulty	трудность
1284	diffuse	рассеивать, распылять
1285	dig (dug, dug)	копать
1286	dig up	откопать
1287	digest	переваривать
1288	digit	цифра
1289	dignity	достоинство
1290	diligent	усердный, старательный
1291	dilute	разбавлять, разводить
1292	dim	тусклый
1293	dimension	измерение, размер
1294	diminish	уменьшаться
1295	dine	ужинать
1296	dip	окунать, погружать
1297	dire	страшный, тяжёлый
1298	direct	прямой (обычн. перен.знач.)
1299	direct	направлять
1300	directory	справочник
1301	disable	отключить, нейтрализовать
1302	disabled	инвалид (прил.)
1303	disappoint	разочаровывать
1304	disaster	бедствие
1305	discard	отбросить, отказаться
1306	discern	различить, распознать
1307	disciple	ученик, последователь
1308	disclose	раскрывать, обнаруживать
1309	discount	скидка
1310	discourage	отговорить, демотивировать
1311	discourse	речь, рассуждение
1312	discover	открыть (новое)
1313	discreet	сдержанный
1314	discrepancy	несоответствие, расхождение
1315	discrete	отдельный, разрозненный
1316	discretion	благоразумие, усмотрение
1317	discriminate	различать, разделять
1318	discuss	обсуждать
1319	disdain	пренебрегать, презирать
1320	disease	болезнь
1321	disgrace	бесчестие, позор
1322	disguise	маскировать, маскировка
1323	disgust	отвращение
1324	dish	тарелка или миска
1325	dish	блюдо
1326	disillusion	разочаровывать
1327	dislocate	вывихнуть, сместить
1328	dismantle	разобрать, демонтировать
1329	dismay	испуг, тревога, потрясение
1330	dismiss	прогонять, посылать, увольнять
1331	dismiss	отклонить, отбросить
1332	disorder	беспорядок
1333	disparity	неравенство
1334	dispatch	отправлять, отправка
1335	dispel	развеяться, исчезнуть
1336	dispense	распределять, раздавать
1337	dispense with	обойтись без, избавиться
1338	disperse	рассеиваться
1339	displace	вытеснять, смещать
1340	display	показ(ывать), демонстрировать
1341	dispose of	располагать, распоряжаться
1342	dispose of	избавиться
1343	dispute	спор, спорить
1344	disrupt	нарушить, сорвать
1345	dissent	несогласие, не соглашаться
1346	dissipate	рассеивать
1347	dissolve	растворять, растворяться
1348	distant	отдалённый
1349	distinct	чёткий, различимый
1350	distinguish	выделять, отличать
1351	distort	искажать
1352	distract	отвлекать
1353	distress	несчастье, страдание
1354	distribute	распределять
1355	district	район, округ и т. п.
1356	disturb	тревожить
1357	ditch	ров
1358	dive	нырять
1359	diverge	расходиться
1360	diverse	разнообразный
1361	divert	отвлечь, развлечь
1362	divide	делить
1363	divine	божественный
1364	divorce	развод, разводиться
1365	dizzy	головокружительный
1366	do about	сделать (с чем-то)
1367	do away with	покончить, избавиться
1368	do up	привести в порядок
1369	do without	обойтись без
1370	dock	причал, док
1371	dodge	уворачиваться, уклоняться, уловка
1372	dole	пособие по безработице
1373	doll	кукла
1374	domain	область, сфера, владение
1375	dome	купол, свод
1376	domestic	домашний
1377	domestic	внутренний (о политике)
1378	donate	жертвовать, скидываться
1379	donkey	осел
1380	doom	гибель, рок, обречённость и т. д.
1381	doorway	дверной проем
1382	dope	наркотик, дурман
1383	dormitory	общежитие
1384	dot	точка
1385	double	удваивать, двойной
1386	doubt	сомневаться, сомнение
1387	dough	тесто
1388	doughnut	пончик
1389	downtown	центр города
1390	downturn	спад
1391	dozen	дюжина
1392	draft	тяга, сквозняк
1393	draft	проект, черновик, набросок
1394	drag	тащить, волочить
1395	drag on	тянуться долго
1396	drain	слив, водосток
1397	drastic	радикальный, резкий
1398	draw (drew, drawn)	тянуть, влечь
1399	draw up	составить (документ)
1400	drawback	недостаток
1401	drawer	выдвижной ящик
1402	dread	страх, бояться
1403	dream	сон (видение)
1404	dream up	придумать (в деталях)
1405	dress	одеваться
1406	dress up	нарядиться
1407	drift	дрейфовать или дрифтовать
1408	drill	сверло, сверлить
1409	drills	тренировка, учение
1410	drip	капля, капать
1411	drive (drove, driven)	водить машину
1412	drive (drove, driven)	двигать, гнать
1413	drive out	выгнать
1414	drizzle	моросить, морось
1415	drop	падать, ронять
1416	drop	капля
1417	drop by	зайти (по пути)
1418	drop off	завезти, высадить
1419	drop out of	бросить (учёбу)
1420	drought	засуха
1421	drown	тонуть
1422	drug	лекарство или наркотик
1423	drum	барабан, барабанить
1424	dry	сухой, сушить, засуха
1425	dry up	пересохнуть, иссякнуть
1426	dual	парный, двоякий
1427	dub	дублировать
1428	dubious	сомнительный
1429	duckling	утёнок
1430	dude	чувак
1431	due	должный, положенный
1432	due to	из-за, в связи
1433	duke	герцог
1434	dull	скучный, унылый
1435	dumb	немой
1436	dumb	тупой
1437	dummy	манекен, чучело
1438	dump	сваливать, сбрасывать свалка
1439	dump	бросать (парня/девушку)
1440	duo	дуэт
1441	duplicate	дублировать, дубликат
1442	durable	прочный, долговечный
1443	duration	продолжительность
1444	during	во время
1445	dusk	смеркаться
1446	dust	пыль
1447	duty	обязанность, служба
1448	dwarf	карлик, гном
1449	dwell	обитать, проживать
1450	dwell on	остановиться (подробно)
1451	dwindle	постепенно уменьшаться
1452	dye	краска, краситель
1453	eager	сильно желающий
1454	early	рано, ранний
1455	earn	зарабатывать
1456	earnest	серьёзный, ревностный
1457	earring	серьга
1458	earth	Земля
1459	earthquake (quake)	землетрясение
1460	ease	лёгкость, облегчать
1461	east	восток
1462	Easter	Пасха
1463	eat out	есть не дома
1464	eat up	съесть полностью
1465	echo	эхо, отголосок, отражаться
1466	eclipse	затмение
1467	edge	край
1468	edible	съедобный
1469	edit	редактировать, монтировать
1470	educate	воспитывать, обучать
1471	efficacy	результативность
1472	efficient	оптимальный, эффективный
1473	effort	усилие, старание
1474	either	либо
1475	either	тоже (не)
1476	either	любой из двух
1477	eject	выталкивать
1478	elaborate	разработать, хорошо проработанный
1479	elbow	локоть
1480	elder	старший
1481	elect	избирать
1482	elevate	поднимать, повышать
1483	elicit	добиться, извлечь
1484	eligible	имеющий право
1485	eliminate	устранять, ликвидировать
1486	elk	лось
1487	eloquent	красноречивый, выразительный
1488	elude	ускользнуть, увернуться
1489	embark on	начать (что-то серьёзное)
1490	embarrass	смущать, стеснять
1491	embassy	посольство
1492	embed	встроить, вставить
1493	embody	олицетворять
1494	embrace	обхватить, обнять, обхват
1495	emerge	появляться
1496	emergency	чрезвычайная ситуация
1497	eminent	видный, уважаемый
1498	emit	испускать, издавать
1499	emperor	император
1500	emphasis	акцент, внимание, ударение
1501	empire	империя
1502	employ	использовать
1503	employ	нанимать на работу
1504	empower	давать возможность, право
1505	empty	пустой, опустошать
1506	enable	давать возможность
1507	enact	вводить (напр. закон)
1508	enchant	околдовать, очаровать
1509	enclose	окружать, заключать
1510	encompass	охватывать, заключать
1511	encounter	встретиться, столкнуться
1512	encourage	поддерживать, поощрять
1513	end up	заканчивать чем-либо
1514	endanger	подвергать опасности
1515	endeavor (endeavour)	стремиться, стараться, попытка
1516	endorse	одобрять, поддерживать
1517	endow	наделять, даровать
1518	endure	выдерживать
1519	enforce	внедрить, навязать
1520	engage in	заниматься, вступать, вовлекать
1521	engaged	помолвленный (-ая)
1522	engender	зарождать, порождать
1523	engine	двигатель или машина
1524	enhance	повысить, усилить, расширить
1525	enlarge	увеличить, расширить
1526	enlighten	просветить
1527	enlist	привлечь (к делу)
1528	enormous	огромный
1529	enrich	обогащать
1530	enrol (enroll)	записать (в члены), набрать
1531	ensemble	ансамбль
1532	ensue	следовать, вытекать
1533	ensure	обеспечить, гарантировать
1534	entail	влечь за собой, подразумевать
1535	enter	войти
1536	enterprise	предприятие, предпринимательство
1537	entertain	развлекать
1538	entice	соблазнять
1539	entire	весь, целый
1540	entitle	давать название
1541	entitle	давать право (по заслугам)
1542	entity	сущность
1543	entrepreneur	предприниматель
1544	envelope	конверт
1545	environment	среда, окружение
1546	envision	воображать
1547	envy	зависть
1548	equal	равный, равняться
1549	equation	уравнение
1550	equip	оснащать, снаряжать
1551	equity	равноправие, справедливость
1552	eradicate	уничтожить, искоренить
1553	erase	стирать
1554	erect	воздвигнуть, соорудить
1555	erode	размывать, выветривать
1556	errand	поручение
1557	error	ошибка
1558	erupt	извергаться
1559	escape	избежать, спастись
1560	essence	сущность
1561	essential	необходимый
1562	establish	установить, учредить
1563	esteem	уважать, почитать, почтение
1564	estimate	примерно оценивать
1565	eternal	вечный
1566	evade	уклоняться
1567	evaluate	дать оценку
1568	evaporate	испаряться
1569	eve	канун
1570	even	ровный
1571	event	событие
1572	eventual	конечный, возможный
1573	ever	когда-либо
1574	evidence	доказательство (неисчисл.)
1575	evident	очевидный
1576	evil	злой, зло
1577	evoke	вызывать
1578	evolve	развиваться, эволюционировать
1579	exact	точный
1580	exaggerate	преувеличивать
1581	examine	осмотреть, изучить
1582	example	пример
1583	excavate	рыть, выкапывать
1584	exceed	превышать
1585	excel	преуспеть
1586	excellent	превосходный
1587	except	кроме, исключая
1588	excerpt	выдержка, отрывок
1589	excess	избыток, чрезмерный
1590	exchange	обмен
1591	excite	волновать, возбуждать
1592	exclaim	восклицать
1593	exclude	исключать
1594	excuse	оправдание, отмазка
1595	execute	исполнить
1596	execute	казнить
1597	exempt	освободить (от), освобождение
1598	exercise	упражнение, тренироваться
1599	exert	приложить, оказать
1600	exhale	выдыхать
1601	exhaust	исчерпывать, истощать
1602	exhaust	выхлопные газы
1603	exhibit	выставлять, показывать
1604	exile	ссылка, изгнание
1605	exist	существовать
1606	exit	выход, выходить
1607	expand	расширять, распространять
1608	expanse	пространство, простор
1609	expect	ожидать (события)
1610	expel	высылать, изгонять
1611	expenditure	расходы
1612	expense	расходы
1613	experience	опыт
1614	expertise	опыт, компетенция
1615	expire	истекать
1616	explain	объяснять
1617	explicit	явный, откровенный
1618	explode	взрываться
1619	exploit	использовать, эксплуатировать
1620	explore	изучать
1621	expose	выставлять, обнажать
1622	express	выражать
1623	exquisite	утончённый, изысканный
1624	extend	расширять, удлиннять
1625	extent	степень, мера
1626	exterior	внешний, внешняя сторона
1627	external	внешний
1628	extinct	вымерший
1629	extinguish	погасить
1630	extort	вымогать
1631	extra	дополнительный
1632	extract	извлекать
1633	extreme	крайний
1634	exuberant	буйный, энергичный
1635	eyebrow	бровь
1636	eyelid	веко
1637	fable	басня
1638	fabric	ткань, материал
1639	fabulous	невероятный, легендарный
1640	face	столкнуться (перен)
1641	face up to	принять (обстоятельства)
1642	facet	грань, в т. ч. перен. (аспект)
1643	facial	лицевой
1644	facilitate	облегчать, способствовать
1645	facility	сооружение, объект
1646	facility	лёгкость, удобство
1647	faction	группировка, фракция
1648	factory	фабрика, завод
1649	faculty	дар, способность
1650	fade	увядать, блекнуть
1651	fail	потерпеть неудачу
1652	failure	неудача, провал
1653	faint	слабый, неуловимый
1654	faint	обморок, падать в обморок
1655	fair	светлый
1656	fair	справедливый, честный
1657	fairly	довольно, вполне
1658	fairy	фея
1659	faith	вера
1660	fall	осень (амер.)
1661	fall apart	разваливаться
1662	fall asleep	уснуть
1663	fall back on	опереться, прибегнуть
1664	fall behind	отставать
1665	fall for	вестись
1666	fall for	влюбляться
1667	fall in love with	влюбиться
1668	fall out	ссориться
1669	fall over	упасть, перевернуться
1670	fall through	провалиться
1671	false	ложный, неверный
1672	falter	колебаться, дрогнуть
1673	fame	известность, слава
1674	familiar	знакомый
1675	famine	голод
1676	famous	знаменитый
1677	fan	вентилятор
1678	fancy	необычный, причудливый, модный
1679	fancy	представлять, полагать
1680	faraway	далёкий
1681	fare	плата за проезд
1682	farewell	прощальный, прощание
1683	farm	ферма
1684	fascinate	очаровывать
1685	fashion	мода
1686	fashion	стиль, образ, манер
1687	fasten	закрепить
1688	fat	жир, жирный
1689	fate	судьба, участь
1690	fatigue	усталость, утомление
1691	faucet	кран
1692	fault	недостаток, неисправность
1693	fault	вина, ошибка
1694	favor	благоприятствовать
1695	favor (favour)	услуга
1696	fear	страх, бояться
1697	feasible	выполнимый, осуществимый
1698	feast	праздник, пир
1699	feat	подвиг, свершение
1700	feather	перо
1701	feature	черта, особенность
1702	fee	плата
1703	feeble	слабый, немощный
1704	feed (fed, fed)	кормить
1705	feed on	питаться
1706	feedback	обратная связь
1707	feel (felt, felt)	трогать, щупать
1708	feel for	сочувствовать
1709	feel like	хотеть
1710	fellow	парень, человек
1711	fellow	товарищ по чему-либо
1712	felon	преступник, уголовник
1713	female	женский
1714	feminine	женский
1715	fence	забор, огораживать
1716	fend for (oneself)	позаботиться о (себе)
1717	fend off	защищаться
1718	ferocious	свирепый
1719	ferry	переправа, паром
1720	fertile	плодородный
1721	fetch	сходить принести
1722	fetus	плод, эмбрион
1723	fever	лихорадка, жар
1724	fibre	волокно
1725	fiction	вымысел, худ.литература
1726	fiddle	скрипка
1727	fidelity	верность
1728	field	поле, область
1729	fierce	свирепый
1730	fight back	отбиваться
1731	fight off	отбить
1732	figure	полагать, думать
1733	figure out	понять, придумать
1734	fill in	заполнить
1735	fill in on	посвятить (в подробности)
1736	fill up	наполнить целиком
1737	film	снимать кино
1738	filth	грязь, гадость
1739	fin	плавник
1740	find out	выяснить
1741	fine	штраф
1742	fine	тонкий
1743	fine	хороший
1744	fingertip	кончик пальца
1745	fir	ель
1746	firefighter	пожарник
1747	fireplace	камин
1748	firework	фейерверк, петарда
1749	firm	твёрдый
1750	fisherman	рыбак
1751	fishing	рыбалка
1752	fist	кулак
1753	fit	приступ, припадок
1754	fit (fit, fit)	подходить, помещаться
1755	fit in with	вписаться (в коллектив)
1756	fix	исправить, наладить
1757	fixture	крепление, стойка и т.д.
1758	flair	чутьё, талант
1759	flake	слоиться, крошиться
1760	flakes	хлопья
1761	flame	пламя, пылать
1762	flank	бок, фланг
1763	flap	створка, клапан, хлопать
1764	flare	вспышка, вспыхивать
1765	flash	вспышка, вспыхнуть
1766	flashlight	фонарик
1767	flat	плоский, ровный
1768	flat	квартира
1769	flatter	льстить
1770	flavor	вкус, приправлять
1771	flaw	изъян
1772	flea	блоха
1773	flee (fled, fled)	спасаться бегством
1774	fleet	флот
1775	fleeting	мимолётный, скоротечный
1776	flesh	плоть, мясо
1777	flex	сгибать
1778	flick	короткое резкое движение
1779	flick	фильм (разг.)
1780	flick through	просмотреть, пролистать
1781	flicker	мерцать
1782	flight	полёт, рейс
1783	flight	бегство
1784	flight attendant	бортпроводник
1785	flinch	дёрнуться, дрогнуть
1786	fling (flung, flung)	швырнуть
1787	flip	переворачивать, перевёрнутый
1788	float	плыть
1789	flock	стадо, стая
1790	flood	потоп, наводнение, наводнять
1791	flood in	наплыть, валить потоком
1792	floor	пол
1793	floor	этаж
1794	flop	провал, неудача
1795	flour	мука
1796	flourish	процветать
1797	flow	поток, течь
1798	flu	грипп
1799	fluctuate	колебаться
1800	fluent	беглый
1801	fluffy	пушистый
1802	fluid	жидкий, текучий
1803	flurry	поток, шквал
1804	flush	промывать, смывать
1805	flush	румянец, порозоветь
1806	flute	флейта
1807	flutter	трепетать, развеваться, порхать
1808	fly	муха
1809	foam	пена
1810	focus	сосредоточить (ся)
1811	foe	недруг
1812	fog	туман
1813	foil	расстаривать, разрушать
1814	foil	фольга
1815	fold	сворачивать, складывать
1816	folder	папка
1817	foliage	листва
1818	folk	люди, народ
1819	follow	следовать, следить
1820	folly	глупость, безумие
1821	fond of	любящий
1822	fool	дурак, дурачить
1823	fool around	придуриваться
1824	footage	запись, кадры видео
1825	footing	опора, основа
1826	footprint	след
1827	for real	правда, серьёзно
1828	for sure	наверняка, точно
1829	for the sake of	ради
1830	forbid (forbade, forbidden)	запрещать
1831	forcible	насильственный
1832	forecast	прогноз
1833	forehead	лоб
1834	foreign	иностранный
1835	foreman	мастер, бригадир
1836	foremost	передовой, первоочередной
1837	foresee	предвидеть
1838	forge	ковать
1839	forge	подделывать
1840	forgive (forgave, forgiven)	простить
1841	fork	развилка, раздваиваться
1842	former	бывший
1843	former	первый (из названных)
1844	formidable	внушительный, грозный
1845	forth	дальше, вперёд
1846	forthcoming	предстоящий
1847	fortify	укреплять, поддерживать
1848	fortunate	удачный
1849	fortune	состояние (деньги)
1850	fortune	счастье, удача, судьба
1851	fossil	ископаемое
1852	foster	приёмный (ребёнок)
1853	foster	способствовать, питать и т.д.
1854	foul	гадкий, скверный, грязный
1855	found	основать, учредить
1856	foundation	фундамент
1857	fountain	фонтан
1858	foyer	фойе
1859	fraction	доля, часть, дробь
1860	fracture	перелом, разрушение
1861	fragile	хрупкий
1862	fragrant	душистый, ароматный
1863	frail	хилый
1864	frame	рамка, каркас и т.п.
1865	framework	каркас, основа, рамки
1866	frank	откровенный
1867	frantic	неистовый, бешеный
1868	fraud	обман, мошенничество
1869	fray	драка, бой, соревнование
1870	frayed	потрёпанный
1871	freak	урод
1872	freak out	пугать или бесить
1873	free	свободный или бесплатный
1874	free up	высвободить
1875	freeway	автострада
1876	freeze (froze, frozen)	замораживать
1877	freight	грузовой
1878	frenzy	неистовство, безумие
1879	frequent	частый
1880	freshen up	освежить(ся)
1881	fret	волновать (ся)
1882	friction	трение
1883	friendly	дружелюбный
1884	fright	испуг
1885	frighten off	отпугивать
1886	fringe	край, крайний
1887	frog	лягушка
1888	front	перед, передний
1889	frontier	граница
1890	frost	мороз
1891	frown	хмуриться
1892	fruitless	бесплодный
1893	frustrate	расстраивать (план, схему)
1894	fry	жарить
1895	fuck with	дразнить, шутить, злить
1896	fuel	топливо, заправлять
1897	fugitive	беглец
1898	fulfil	исполнить
1899	fumble	щупать, лапать, мять и т. д.
1900	fume	дым, испарение
1901	fund	фонд, финансировать
1902	funeral	похороны, похоронный
1903	fungus	гриб, грибок
1904	funnel	воронка
1905	fur	мех
1906	furnace	печь
1907	furnish	предоставлять
1908	furnish	обставлять, меблировать
1909	furniture	мебель
1910	further	дальнейший, далее
1911	fury	ярость, бешенство
1912	fuse	плавиться, сливаться
1913	fuss	суетиться
1914	futile	тщетный, напрасный
1915	future	будущий, будущее
1916	fuzzy	пушистый, ворсистый
1917	gain	получать, выигрывать
1918	gait	походка
1919	gala	праздник, торжество
1920	gamble	азартная игра, играть
1921	gang	банда, шайка
1922	gap	разрыв, пробел
1923	garbage	мусор (особ. пищевой)
1924	garden	сад
1925	garlic	чеснок
1926	garment	предмет одежды
1927	garnish	гарнир, украшение
1928	gas	бензин
1929	gasp	задыхаться, ловить воздух
1930	gates	ворота
1931	gather	собирать (ся)
1932	gauge	измерить, изм. прибор
1933	gaze	пристально глядеть
1934	gear	механизм, привод, передача
1935	geared to	направлен на
1936	gem	(полу)драгоценный камень
1937	gender	пол
1938	gene	ген
1939	general	общий
1940	generation	поколение
1941	generous	великодушный, щедрый
1942	gentle	мягкий, тихий, нежный и т. д.
1943	genuine	подлинный, настоящий
1944	germ	микроб или зародыш
1945	gesture	жест, жестикулировать
1946	get	становиться
1947	get about	передвигаться (на чём-то)
1948	get ahead	преуспевать, продвигаться
1949	get ahead of	обогнать
1950	get along	ладить
1951	get at	клонить, намекать
1952	get away with	безнаказанно сделать
1953	get back at	отомстить
1954	get by	обойтись, протянуть
1955	get down	приступить
1956	get in	прибывать (о транспорте)
1957	get lost	пропасть
1958	get off	выходить (из транспорта)
1959	get off with	отделаться чем-либо
1960	get on	быть, делать
1961	get out of	избежать, отмазаться
1962	get over	пережить, принять
1963	get rid of	избавиться от
1964	get stuck	застрять
1965	get through	дозвониться
1966	get together	собираться
1967	get used to	привыкнуть
1968	ghost	привидение
1969	giant	гигантский
1970	gift	подарок
1971	giggle	хихикать, хихиканье
1972	give a ride	подвезти
1973	give away	раздавать, дарить
1974	give away	выдать (раскрыть)
1975	give birth to	родить
1976	give off	издавать, испускать
1977	give out	раздать, выдать
1978	give up	отказаться, сдаться
1979	give up	бросить (привычку)
1980	glacier	ледник
1981	glamour	очарование, привлекательность
1982	glance	взгляд
1983	glare	яркий свет, ослеплять
1984	glass	стекло или стакан
1985	glasses	очки
1986	glaze	глазурь, глянец
1987	gleam	блеск, отблеск
1988	glide	скользить, планировать
1989	glimpse	вид (мельком или уголком)
1990	glint	вспыхнуть, сверкнуть (слегка)
1991	glitter	блеск, блестеть, сверкать
1992	globe	мир, земной шар
1993	gloom	сумрак, уныние
1994	glory	слава, сияние
1995	gloss	глянец, лоск
1996	glove	перчатка
1997	glow	сияние, свечение
1998	glue	клей, клеить
1999	gnaw on	грызть, обгладывать
2000	go about	заниматься (делами)
2001	go against	противоречить
2002	go ahead	взять (и сделать)
2003	go along	поддерживать, соглашаться
2004	go bad	испортиться
2005	go down	быть принятым
2006	go for	быть проданным за
2007	go for	выбирать, предпочитать
2008	go into	вдаваться
2009	go off	сработать
2010	go off	отключиться
2011	go on	происходить
2012	go on	продолжаться
2013	go out	погаснуть
2014	go over	просмотреть, изучить
2015	go through	просмотреть, перебрать
2016	go together	сочетаться
2017	go under	разориться
2018	goal	цель
2019	goat	козел, коза
2020	goddess	богиня
2021	goods	товары
2022	goof	балбес, придурок (амер.)
2023	gorgeous	шикарный
2024	gospel	евангелие
2025	gossip	слухи
2026	govern	управлять
2027	gown	платье
2028	grab	схватить, нахапать и т.д.
2029	grace	благодать, милость
2030	grade	оценка
2031	grade	класс, уровень
2032	gradual	постепенный
2033	graduate	выпускник, выпускаться
2034	grain	зерно, крупица
2035	grand	большой, великий
2036	grant	давать, дарить
2037	grape	виноград (ягода)
2038	graph	график
2039	grapple	сцепиться, бороться
2040	grasp	схватывать
2041	grate	решетка
2042	grateful	благодарный
2043	gratify	удовлетворять, радовать
2044	gratitude	благодарность
2045	grave	могила
2046	grave	серьёзный
2047	gravel	гравий
2048	gravy	подливка, соус
2049	graze	пасти(сь)
2050	grease	смазка, жир
2051	greed	жадность
2052	greenhouse	теплица, оранжерея
2053	greet	приветствовать
2054	grid	сетка, решётка
2055	grief	горе
2056	grievance	обида
2057	grieve	горевать
2058	grim	мрачный, зловещий
2059	grin	ухмыляться, ухмылка, оскал
2060	grind (ground, groud)	молоть, измельчать
2061	grip	хватать, захват, хватка
2062	grit	крошка, песок, гравий
2063	grit	твёрдость, стойкость
2064	groan	стон, стонать
2065	grocery	продуктовый
2066	groom	жених
2067	groove	канавка, желоб
2068	grope	щупать, искать вслепую
2069	gross	валовой, грязный
2070	gross	грубый (во всех смыслах)
2071	grove	лесок
2072	grow (grew, grown)	становиться
2073	grow (grew, grown)	расти или выращивать
2074	grow up	вырастать
2075	growl	рычать
2076	grudge	обида, злоба
2077	grumble	ворчать, жаловаться
2078	grunt	хрюкать
2079	guard	сторожить, стража
2080	guess	угадывать, догадываться
2081	guest	гость
2082	guide	вести, направлять
2083	guideline	общее правило, принцип
2084	guilt	вина
2085	guise	облик, личина
2086	gulf	разрыв, пропасть
2087	gulf	залив
2088	gulp	большой глоток, заглатывать
2089	gum	жвачка
2090	gun	огнестрельное оружие
2091	gust	порыв
2092	gut	кишка
2093	gutter	желоб, сток
2094	gym	спортзал
2095	Gypsy	цыган, цыганский
2096	habit	привычка, обычай
2097	habitat	среда, место обитания
2098	hack	рубить, кромсать
2099	hail	град
2100	hail	окликнуть, привлечь внимание
2101	hail	приветствовать
2102	haircut	стрижка, причёска
2103	hall	зал, вестибюль
2104	hallmark	характерная черта
2105	halt	останавливаться
2106	halve	делить пополам
2107	ham	ветчина
2108	hammer	молоток
2109	hamper	затруднять, ограничивать
2110	hand down	передать (по наследству)
2111	hand in	сдать
2112	hand over	передать
2113	handbook	руководство, справочник
2114	handcuffs	наручники
2115	handful	горсть
2116	handicap	помеха, недостаток
2117	handkerchief	носовой платок
2118	handle	рукоятка
2119	handle	управляться, обращаться
2120	handsome	красивый (обычно о мужчинах)
2121	handwriting	почерк
2122	handy	удобный
2123	hang (hung, hung)	висеть, вешать
2124	hang around	зависать, слоняться
2125	hang out	тусоваться где-то
2126	hangover	похмелье
2127	happen	случиться, происходить
2128	harass	тревожить, изводить
2129	harbor (harbour)	гавань, порт
2130	hardly	едва
2131	hardware	аппаратные средства
2132	hardy	выносливый
2133	harm	вред, вредить
2134	harness	запрягать, обуздывать
2135	harp	арфа
2136	harsh	резкий, суровый, грубый
2137	harvest	урожай, собирать урожай
2138	hassle	трудность, неудобство
2139	haste	спешка
2140	hat	шляпа
2141	hatch	люк
2142	hatred	ненависть
2143	haul	тащить, тянуть, буксировать
2144	haunt	являться, преследовать (перен.)
2145	hawk	ястреб
2146	hay	сено
2147	hazard	опасность, риск, угроза
2148	haze	дымка, туман
2149	head for	направляться
2150	head off	выйти, отправиться
2151	headlight	передняя фара
2152	headline	заголовок
2153	headquarters	штаб-квартира
2154	heal	лечить, заживать
2155	health	здоровье
2156	healthcare	здравоохранение
2157	heap	куча
2158	heat	тепло, нагревать
2159	heat up	разогреть
2160	heave	вздыматься
2161	heaven	небеса
2162	hebrew	еврейский
2163	hectic 	беспокойный, напряжённый
2164	hedge	живая изгородь
2165	heed	прислушиваться, учитывать
2166	heel	каблук, пятка
2167	hefty	большой и тяжёлый
2168	height	высота, рост
2169	heir	наследник
2170	helicopter	вертолёт
2171	helm	руль, штурвал
2172	helmet (helm)	шлем
2173	help out	выручить
2174	helpful	полезный
2175	helpless	беспомощный
2176	hemisphere	полушарие
2177	hen	курица
2178	hence	отсюда (следует, происходит)
2179	herald	возвестить, вестник
2180	herb	трава
2181	herd	стадо, пасти
2182	heritage	наследие
2183	hero	герой
2184	hesitate	колебаться, медлить
2185	hide (hid, hidden)	скрывать
2186	hideous	отвратительный, ужасный
2187	hierarchy	иерархия
2188	high-end	высококлассный, лидирующий
2189	highlight	выделить, подсветить
2190	highway	шоссе
2191	hijack	угонять
2192	hike	поход, ходить в поход
2193	hilarious	веселый, забавный, смешной
2194	hill	холм
2195	hinder	мешать, затруднять
2196	hinge	петля, шарнир
2197	hint	намёк, намекать
2198	hip	таз, поясница
2199	hire	нанимать
2200	hiss	шипеть
2201	hit (hit, hit)	ударить, удар
2202	hit (hit, hit)	попасть, достичь
2203	hit back	отыграться, отбиться
2204	hit on	клеить, подкатывать
2205	hitch	заминка, помеха
2206	hoard	копить, накопление, клад
2207	hobble	прихрамывать
2208	hog	большой свин, боров
2209	hoist	поднимать
2210	hold back	сдерживать
2211	hold on	оставаться на линии
2212	hold on	держаться
2213	hold up	задержать, затормозить
2214	hole	дыра
2215	holler	крикнуть, окликнуть
2216	hollow	полый
2217	holy	святой, священный
2218	homeland	родина
2219	homicide	убийство
2220	honest	честный
2221	honey	мёд
2222	honor (honour)	честь, чтить
2223	hood	капот, кожух
2224	hood	капюшон
2225	hoof	копыто
2226	hook	крюк, зацеплять
2227	hook up	потрахаться
2228	hook up	подключить, смонтировать
2229	hoop	обруч, обод
2230	hop	прыгать, скакать
2231	hopeful	внушающий надежды
2232	horizon	горизонт, кругозор
2233	horn	рог
2234	horrible	ужасный, отвратительный
2235	horrify	ужасать
2236	horseback	верхом
2237	hose	шланг
2238	hospitality	гостеприимство
2239	host	хозяин, быть хозяином
2240	host	множество
2241	hostage	заложник
2242	hostile	враждебный, неприязненный
2243	hound	охотничья собака, об. гончая
2244	household	домашний, домохозяйство
2245	housewife	домохозяйка
2246	hover	зависнуть, парить
2247	however	однако
2248	howl	выть
2249	huddle	столпиться, скучиться
2250	hue	цвет, оттенок
2251	hug	объятие, обнимать
2252	huge	огромный
2253	hull	корпус, оболочка
2254	hum	гудеть, жужжать
2255	human	человек, человеческий
2256	humble	скромный, смиренный
2257	humid	влажный
2258	humiliate	унижать
2259	hump	горб
2260	hunch	горб, горбиться
2261	hunch	догадка, предчуствие
2262	hunger	голод
2263	hunk	ломоть, лакомый кусок
2264	hurdle	препятствие
2265	hurl	метать, бросать с силой
2266	hurricane	ураган
2267	hurry	спешить, торопиться
2268	hurt (hurt, hurt)	причинять боль или болеть
2269	hush	молчать
2270	hustle	толкаться, торопиться
2271	hustle	нечестно добыть (амер.)
2272	hut	хижина, лачуга, барак
2273	hydrogen	водород
2274	hypocrite	лицемер
2275	ID	удостоверение личности
2276	idle	праздный, бездействующий
2277	ignite	воспламеняться
2278	ignorant	невежественный
2279	ill	больной
2280	ill	дурной, нехороший
2281	illicit	незаконный, запрещённый
2282	illuminate	освещать
2283	image	изображение, образ
2284	imagine	вообразить
2391	intern	стажёр
2285	immediate	немедленный, непосредственный
2286	immense	огромный
2287	immerse	погружаться (в т. ч. перен)
2288	imminent	неизбежный
2289	impact	воздействие, удар
2290	impair	ухудшать, ослаблять и т.д.
2291	impede	затруднять
2292	impending	предстоящий, грозящий
2293	imperative	обязательный, необходимый
2294	implement	осуществлять
2295	implicate	указать на причастность
2296	implicit	подразумеваемый, неявный
2297	imply	подразумевать
2298	importance	важность
2299	impose	навязывать, налагать
2300	imposing	внушительный, импозантный
2301	impress	впечатлить
2302	imprint	отпечаток, отпечатывать
2303	improve	улучшить
2304	in a row	подряд
2305	in advance	заранее
2306	in charge	во главе
2307	in spite of	несмотря на
2308	incentive	стимул, мотив
2309	inch	дюйм
2310	incidence	частотность, распространённость
2311	incline	наклонять, склонять (втч. перен)
2312	include	включать, содержать в себе
2313	income	доход
2314	incoming	входящий
2315	incorporate	вобрать, соединить
2316	increase	увеличивать(ся), увеличение
2317	incredible	невероятный
2318	incumbent	возложенный
2319	incur	навлечь, повлечь
2320	indeed	в самом деле
2321	indicate	указывать, означать
2322	indifferent	безразличный
2323	indigenous	коренной, местный
2324	induce	вызывать, побуждать
2325	indulge	баловать, потворствовать
2326	industry	отрасль
2327	inevitable	неизбежный
2328	inexplicable	необъяснимый
2329	infamous	печально известный, постыдный
2330	infant	ребёнок
2331	infantry	пехота
2332	infect	заражать
2333	infer	делать вывод
2334	inferior	низший
2335	infinite	бесконечный
2336	inflame	разжигать (в осн. перен.)
2337	inflate	надувать
2338	inflict	причинять, наносить
2339	influence	влиять, влияние
2340	infuse	вливать, настаивать
2341	ingenious	изобретательный
2342	inhabit	населять, обитать в
2343	inhale	вдыхать
2344	inherent	свойственный, присущий
2345	inherit	унаследовать, перенять
2346	inhibit	препятствовать, затруднять
2347	initial	первоначальный
2348	inject	впрыскивать, вкачивать
2349	injure	ранить, наносить ущерб
2350	ink	чернила
2351	inland	внутренний, вглубь страны
2352	inmate	обитатель
2353	inn	гостиница
2354	inner	внутренний
2355	innocent	невинный, невиновный
2356	input	вход, ввод
2357	inquire	узнавать, интересоваться
2358	insect	насекомое
2359	insert	вставить
2360	inside	внутри
2361	inside out	наизнанку
2362	insight	понимание, догадка
2363	insist	настаивать
2364	inspect	проверять, осматривать
2365	inspire	вдохновить, внушить
2366	install	устанавливать
2367	instance	пример, случай
2368	instant	мгновенние, мгновенный
2369	instead	вместо
2370	insulate	изолировать, оградить
2371	insult	оскорбление, оскорблять
2372	insure	страховать, гарантировать
2373	insurgent	повстанец, мятежник
2374	intact	неповрежденный
2375	intake	потребление, приём
2376	integral	составной, неотъемлемый
2377	integrity	честность, порядочность
2378	integrity	целостность
2379	intelligence	разведка
2380	intelligent	умный
2381	intelligible	вразумительный, понятный
2382	intend	намереваться
2383	intended	предназначенный
2384	interact	взаимодействовать
2385	intercept	перехватить, перехватить
2386	intercourse	отношения или пол. сношение
2387	interfere	вмешиваться, мешать
2388	interim	промежуточный, временный
2389	interior	внутренность, внутренний
2390	intermediate	промежуточный
2392	internal	внутренний
2393	interpret	истолковывать
2394	interpreter	переводчик
2395	interrogate	допрашивать
2396	interrupt	прерывать, перебивать
2397	intersect	пересекаться
2398	intervene	вмешиваться
2399	intestine	кишечник
2400	intimate	близкий
2401	intimidate	запугивать
2402	intricate	сложный, запутанный
2403	intrinsic	присущий, внутренний
2404	introduce	представить, познакомить
2405	introduce	ввести (в употребление)
2406	intrude on	вторгаться, вмешиваться
2407	invade	вторгаться
2408	invent	изобретать
2409	inventory	опись, учёт
2410	invert	переворачивать, опрокидывать
2411	investigate	расследовать
2412	invite	приглашать
2413	invoke	взывать, призывать
2414	involve	вовлекать, увлекать
2415	involve	содержать в себе (процесс)
2416	inward	внутрь
2417	iron	утюг, гладить
2418	iron	железо, железный
2419	irritate	раздражать
2420	island	остров
2421	issue	издать, выпустить, выпуск
2422	issue	вопрос, проблема
2423	itch	зуд
2424	item	пункт, номер, предмет
2425	ivory	слоновая кость
2426	ivy	плющ
2427	jab	ударять, пихать
2428	jacket	куртка, пиджак
2429	jail	тюрьма
2430	janitor	дворник, уборщик
2431	jar	банка, кувшин и т. д.
2432	jaw	челюсть
2433	jealous	ревнивый
2434	jelly	желе
2435	jeopardy	опасность (серьёзная)
2436	jerk	дёргать, резкое движение
2437	jerk	придурок
2438	jet	струя
2439	jet	реактивный двигатель/самолёт
2440	Jew	еврей
2441	jewel	драгоценности
2442	jingle	звенеть, звон
2443	jog	бегать трусцой
2444	join	присоединить (ся)
2445	joint	сустав, шарнир, стык и т. д.
2446	joint	совместный, объединённый
2447	jolly	веселый
2448	jolt	толчок, встряска
2449	journalism	журналистика
2450	journey	путешествие
2451	joy	радость
2452	judge	судья, судить (втч. перен)
2453	judicial	судебная
2454	jug	кувшин
2455	jumble	перемешивать
2456	jump at	ухватиться (за возможность)
2457	jump in	вмешаться
2458	jumper	джемпер
2459	junction	стык, узел, пересечение
2460	junior	младший
2461	junk	барахло, хлам
2462	junkie	наркоман
2463	jury	жюри или присяжные
2464	just	справедливый, беспристрастный
2465	justice	правосудие, справедливость
2466	justify	оправдывать, обосновывать
2467	jut	выступать, выдаваться
2468	keen	острый (часто перен.)
2469	keep away	держать (ся) подальше
2470	keep off	избегать, не трогать
2471	keep on	продолжать делать
2472	keep out of	не влезать
2473	keep up	успевать за чем-л.
2474	kernel	ядро
2475	kettle	чайник
2476	kick	пинать
2477	kick around	обсудить (разг.)
2478	kick back	расслабиться
2479	kid	шутить, разыгрывать
2480	kid	ребёнок
2481	kidnap	похищать
2482	kidney	почка
2483	kin (pl:kin)	родственник
2484	kind	добрый
2485	kind	тип, вид
2486	kindergarten	детский сад
2487	kit	комплект, набор
2488	kite	коршун или воздушный змей
2489	kitten	котенок
2490	knack	умение, сноровка
2491	knee	колено
2492	kneel	стать на колени (колено)
2493	knight	рыцарь
2494	knit	вязать
2495	knob	ручка (круглая)
2496	knock	стучать
2497	knock down	снести, сбить
2498	knock out	вырубить (ударом)
2499	knock together	слепить, соорудить
2500	knot	узел
2501	knowledge	знания
2502	label	метка, ярлык, метить
2503	labour	труд, трудиться
2504	lace	шнурок, шнуровать
2505	lack	недостаток, нуждаться
2506	lad	парень
2507	ladder	лестница
2508	laden	груженный
2509	lag	запаздывание
2510	lamb	ягненок
2511	lame	хромой
2512	lament	оплакивать, сожалеть
2513	land	приземляться, высаживаться
2514	landlord	арендодатель, домовладелец
2515	landmark	ориентир
2516	landscape	пейзаж
2517	lane	полоса дороги
2518	lantern	фонарь
2519	lap	колени
2520	lapse	упущение, оплошность
2521	lapse	промежуток времени
2522	laptop	ноутбук
2523	large	большой, широкий
2524	lash (eyelash)	ресница
2525	lash out	нападать, ругаться
2526	last	длиться
2527	latch	защёлка, засов
2528	late	поздний
2529	late	покойный
2530	lateral	боковой
2531	latter	последний (из названных)
2532	laugh	смеяться
2533	laughter	смех
2534	launch	начать, запустить, запуск
2535	laundry	прачечная
2536	lavish	щедрый, роскошный
2537	law	закон
2538	lawn	газон
2539	lawsuit	тяжба, судебное дело
2540	lay (laid, laid)	класть, укладывать
2541	lay down	установить (правило, норму)
2542	lay off	уволить, сократить
2543	lay out	выложить, разложить
2544	layer	слой
2545	layout	макет, расположение
2546	lazy	ленивый
2547	lead	вести
2548	lead up to	предшествовать
2549	leaf (pl: leaves)	лист
2550	leak	утечка, просачиваться, протекать
2551	lean	худой
2552	lean against	опереться, прислонить
2553	lean over	наклониться над, через
2554	leap	прыгать, прыжок
2555	lease	сдавать в аренду
2556	leash	привязь, поводок
2557	leather	кожаный, кожа
2558	leave (left, left)	уйти, покинуть
2559	leave behind	оставить, забыть
2560	ledge	уступ
2561	leek	лук-порей
2562	leftover	остаток
2563	leg	нога
2564	legacy	наследие, наследство
2565	legal	законный, правовой
2566	legislation	законодательство
2567	legitimate	законный, обоснованный
2568	leisure	досуг, отдых
2569	lend (lent, lent)	давать в долг
2570	length	длина
2571	lens	линза, объектив
2572	lessen	уменьшать(ся)
2573	lest	чтобы не, иначе
2574	let in on	посвящать (в секрет, план)
2575	let off	отпустить, дать отделаться
2576	let smb down	подвести
2577	let smb in	впустить
2578	let up	прекратиться, стихнуть
2579	letter	письмо
2580	lettuce	салат (латук)
2581	level	уровень
2582	lever	рычаг, ручка
2583	liable	подлежащий
2584	liaison	связь
2585	liberate	освобождать
2586	liberty	свобода
2587	library	библиотека
2588	licence (license)	разрешение
2589	lick	лизать
2590	lid	крышка
2591	lie	лгать, ложь
2592	lie (lay, lain)	лежать
2593	lifelong	пожизненный
2594	lift	поднимать
2595	light (lit, lit)	зажигать
2596	light up	осветить или загореться
2597	lightning	молния
2598	like	как
2599	like that	так
2600	likely	вероятно
2601	likewise	также
2602	limb	конечность
2603	limit	ограничивать, ограничение
2604	limp	хромать
2605	line	строка
2606	line	линия, ряд
2607	line up	встать в очередь
2608	lineage	родословная
2609	linen	бельё
2610	linen	льняная ткань
2611	lineup	расстановка, расположение
2612	linger	задерживаться, медлить
2613	link	связь, звено, ссылка
2614	lip	губа
2615	lipstick	губная помада
2616	liquid	жидкость, жидкий
2617	list	список, перечислять
2618	listen in on	подслушивать
2619	literal	буквальный
2620	literary	литературный, книжный
2621	literate	грамотность
2622	litter	мусор (на улице)
2623	live up to	соответствовать, дотягивать
2624	livelihood	средства к существованию
2625	liven up	оживить, взбодрить
2626	liver	печень
2627	livestock	скот
2628	lizard	ящерица
2629	load	грузить, груз
2630	loaf	буханка, булка
2631	loan	заём, ссуда
2632	loathe	ненавидеть, питать отвращение
2633	lobby	вестибюль, фойе, прихожая
2634	lobster	омар
2635	local	местный
2636	locate	определить местоположение
2637	lock	замок, запирать
2638	lock up	посадить в тюрьму или дурку
2639	locker	ящик, шкаф (закрывающийся)
2640	locus	местоположение
2641	lodge	домик, поселиться, остановиться
2642	lodge	подавать (документ)
2643	loft	чердак, верхний нежилой этаж
2644	log	бревно
2645	lone	одинокий
2646	long ago	давно
2647	long for	желать или скучать
2648	longevity	долговечность, долголетие
2649	look	выглядеть
2650	look after	присматривать
2651	look around	посмотреть, оглядеть
2652	look at	рассмотреть, обдумать
2653	look for	искать
2654	look forward	ожидать, предвкушать
2655	look into	посмотреть, изучить
2656	look out	смотреть (опасность!)
2657	look smb up	найти (в списке и т. п.)
2658	look up	улучшаться, налаживаться
2659	look up to	уважать, восхищаться
2660	loom	маячить, виднеться
2661	loop	петля
2662	loose	свободный, болтающийся
2663	loot	грабить, добыча
2664	lord	господин, господь (бог)
2665	loss	потеря
2666	lot	жребий, судьба
2667	loud	громкий
2668	lounge	гостиная, холл, комната отдыха
2669	lounge	расслабляться, бездельничать
2670	lousy	паршивый
2671	lovely	чудесный, милый
2672	lower	нижний
2673	loyal	верный, преданный
2674	lucrative	прибыльный, выгодный
2675	ludicrous	нелепый, смехотворный
2676	luggage	багаж
2677	lumber	пиломатериалы
2678	lump	кусок, глыба, ком
2679	lunar	лунный
2680	luncheon	завтрак
2681	lung	легкое
2682	lurch	крениться, шататься
2683	lure	приманка, манить
2684	lurk	таиться
2685	lush	пышный
2686	lust	вожделение, страсть
2687	luxury	роскошь
2688	lyrics	текст песни
2689	magazine	журнал
2690	magician	волшебник, фокусник
2691	magnificent	великолепный, величественный
2692	magnify	увеличивать
2693	magnitude	величина, сила
2694	maid	служанка, горничная
2695	maiden	дева, девственница
2696	mainland	материк или большой остров
2697	maintain	поддерживать, сохранять
2698	majesty	величие, величество
2699	major	главный, большой
2700	make fun of	смеяться, издеваться
2701	make into	переделать в
2702	make of	извлечь, получить
2703	make out	разобрать, понять
2704	make out	целоваться
2705	make sure	убедиться
2706	make up	выдумать
2707	make up	помириться
2708	make up for	компенсировать, наверстать
2709	makeup	макияж
2710	male	мужской
2711	mall	торговый центр
2712	mammal	млекопитающее
2713	mammoth	мамонт
2714	manage	справляться, управлять
2715	mandatory	обязательный
2716	manifest	проявить, явный
2717	mankind	человечество
2718	mansion	особняк, здание
2719	mantle	мантия
2720	manual	руководство, учебник
2721	manual	ручной
2722	manufacture	производить, производство
2723	manure	навоз
2724	map out	запланировать, расписать
2725	maple	клён
2726	marble	мрамор
2727	margin	край, граница
2728	margin	маржа, накрутка
2729	marine	морской
2730	marital	супружеский
2731	maritime	морской
2732	mark	метка, отмечать
2733	mark down	снижать ценник
2734	marry	жениться, выйти замуж
2735	marsh	болото
2736	martial	боевой, военный
2737	martyr	мученик
2738	marvel	диво, удивляться
2739	mash	разминать, месиво
2740	massacre	резня
2741	master	хозяин
2742	master	овладеть (напр. искусством)
2743	masterpiece	шедевр
2744	mat	коврик, циновка
2745	match	соответствие, нечто соответствующее
2746	match	спичка
2747	mate	товарищ, компаньон
2748	maternal	материнский
2749	matter	вещество, материя
2750	matter	дело, вопрос
2751	matter	иметь значение
2752	mature	зрелый, зреть
2753	may	пусть
2754	mayor	мэр
2755	maze	лабиринт
2756	meadow	луг
2757	meager	скудный, недостаточный
2758	meal	еда
2759	mean	неважный, посредственный
2760	mean (meant, meant)	иметь в виду
2761	mean (meant, meant)	означать
2762	mean (meant, meant)	предназначать
2763	means	средство
2764	meantime	тем временем
2765	meanwhile	тем временем
2766	measure	мера, мероприятие
2767	measure	измерять, измерение
2768	mediate	посредничать
2769	medicine	лекарство
2770	medieval	средневековый
2771	mediocre	посредственный
2772	meditate	обдумывать или созерцать
2773	medium	средство, способ
2774	meet (met, met)	встретить или познакомиться
2775	melon	дыня
2776	melt	таять, плавить(ся)
2777	member	член
2778	memoirs	мемуары
2779	memories	воспоминания
2780	memory	память
2781	menace	угроза, угрожать
2782	mend	чинить, поправлять
2783	mental	умственный
2784	mention	упоминать
2785	mentor	наставник
2786	merchandise	товар
2787	merchant	торговец, купец
2788	mercury	ртуть
2789	mercy	милость, милосердие
2790	mere	всего лишь
2791	merge	соединять, сливать
2792	merit	заслуга, заслуживать
2793	merry	веселый
2794	mesh	сетка
2795	mess	беспорядок, путаница
2796	mess up	испортить, накосячить
2797	mess with	возиться, связываться и т.д.
2798	metropolitan	столичный
2799	mid	середина, полу-
2800	middle	середина, средний
2801	midnight	полночь
2802	midst	середина, среда
2803	midwife	акушерка
2804	might	мощь
2805	mild	мягкий
2806	mileage	пробег
2807	military	военный
2808	mill	мельница или фабрика
2809	millennium	тысячелетие
2810	mimic	передразнивать, копировать
2811	mince	фарш, крошить, рубить
2812	mind	возражать
2813	mindful	внимательный, помнящий
2814	mine	мина
2815	mine	шахта, рудник
2816	mingle	смешиваться
2817	minor	второстепенный, незначительный
2818	minor	несовершеннолетний
2819	mint	мята
2820	miracle	чудо
2821	mischief	вред, безобразие
2822	miserable	несчастный, жалкий
2823	misery	нищета
2824	misery	несчастье, страдание
2825	miss	скучать
2826	miss	пропускать, упустить
2827	missile	ракета
2828	missing	пропавший, отсутствующий
2829	mist	туман
2830	mistake	ошибка
2831	mistake for	принимать за
2832	mistress	госпожа, хозяйка
2833	mistress	любовница
2834	mitigate	смягчить, сгладить
2835	mix up	перепутать
2836	mixture	смесь
2837	moan	стонать
2838	mob	толпа (неуправляемая)
2839	mock	издеваться, насмехаться
2840	mode	режим, способ, вид
2841	moderate	умеренный, средний
2842	modest	скромный, умеренный
2843	modify	видоизменять
2844	moist	влажный
2845	mold (mould)	плесень
2846	mold (mould)	форма, формировать
2847	mole	крот
2848	mole	родинка
2849	molest	приставать, досаждать
2850	monastery	монастырь
2851	monetary	валютный, денежный
2852	monk	монах
2853	mood	настроение
2854	moose	лось
2855	mop	швабра, мыть пол
2856	moreover	более того
2857	moron	дебил
2858	mortal	смертельный, смертный
2859	mortgage	ипотека
2860	mosque	мечеть
2861	mosquito	комар
2862	moss	мох
2863	mostly	в основном
2864	moth	мотылёк или моль
2865	motion	движение
2866	motto	девиз
2867	mound	насыпь, бугор
2868	mount	монтировать, устанавливать
2869	mount	подниматься, забираться
2870	mount	гора
2871	mountain	гора, горный
2872	mourn	скорбеть, носить траур
2873	move	переезжать
2874	move out	съехать, выселиться
2875	move over	подвинуться
2876	movie	кино
2877	mow	косить
2878	muck	грязь, мусор, навоз
2879	mud	грязь
2880	mug	кружка
2881	multiple	множественный, неединичный
2882	multiply	умножать или размножаться
2883	multitude	множество
2884	mumble	бормотать, бубнить
2885	mural	стенная роспись, фреска
2886	murder	убийство, убивать
2887	murky	мутный, тёмный
2888	murmur	шум, ропот, журчание
2889	muscle	мышца
2890	mushroom	гриб
2891	Muslim	мусульманин, мусульманский
2892	mustache (moustache)	усы
2893	mustard	горчица
2894	muster	собрать, согнать, мобилизовать
2895	mute	беззвучный, не говорящий
2896	mutter	бормотать, бурчать
2897	mutual	взаимный
2898	muzzle	морда или намордник
2899	mystery	тайна
2900	nail	гвоздь, прибивать
2901	nail	ноготь
2902	naked	голый
2903	name after	назвать в честь
2904	nanny	няня
2905	nap	вздремнуть, дремота
2906	napkin	салфетка
2907	narrate	повествовать, рассказывать
2908	narrow	узкий
2909	nasty	противный
2910	native	родной
2911	native	местный, туземный
2912	natural	естественный
2913	naughty	непослушный
2914	nausea	тошнота
2915	navigate	ориентироваться, ходить по курсу
2916	navy	военно-морской флот
2917	neat	аккуратный, опрятный
2918	necessary	необходимый
2919	neck	шея
2920	necklace	ожерелье
2921	needle	игла
2922	neglect	пренебрегать, не следить
2923	negligent	небрежный, халатный
2924	negotiate	вести переговоры
2925	neighbour	сосед
2926	neither	ни один из двух
2927	neither	тоже не
2928	neither...nor	ни
2929	nephew	племянник
2930	nerd	ботан, задрот
2931	nerve	смелость
2932	nest	гнездо, гнездиться
2933	net	чистый, конечный, без вычетов
2934	network	сеть
2935	never	так и не
2936	nevertheless	тем не менее
2937	newcomer	новичок
2938	newspaper	газета
2939	nibble on	покусывать, обгрызать
2940	niche	ниша
2941	niece	племянница
2942	nightmare	кошмар
2943	nipple	сосок
2944	nitrogen	азот
2945	no matter	неважно
2946	noble	благородный
2947	nod	кивать, склонять
2948	noise	шум
2949	nominate	выдвигать, номинировать
2950	none	никакой, ни один
2951	nonetheless	тем не менее
2952	noodles	лапша
2953	noon	полдень
2954	north	север, северный
2955	nose around	рыскать, вынюхивать
2956	nostril	ноздря
2957	notch	выемка
2958	note	заметка, запись
2959	notice	заметить
2960	notify	известить
2961	notion	понятие, представление
2962	notorious	известный, пресловутый
2963	notwithstanding	несмотря на
2964	noun	существительное
2965	nourish	питать, кормить, удобрять
2966	novel	роман
2967	novelty	новинка
2968	nuclear	ядерный
2969	nude	обнаженный
2970	nudge	подталкивать
2971	nuisance	неприятность, неудобство
2972	numb	онемелый, окоченевший
2973	numeric (numerical)	числовой, цифровой
2974	numerous	многочисленные
2975	nun	монахиня
2976	nurse	медсестра, нянька
2977	nurture	растить, питать
2978	nut	орех
2979	nutrient	питательный, пит. вещество
2980	nutrition	питание
2981	nuts	чокнутый
2982	oak	дуб
2983	oath	клятва, присяга
2984	oats	овес, овсянка
2985	obedience	покорность
2986	obese	страдающий ожирением
2987	obey	подчиняться, слушаться
2988	object	возражать
2989	objective	цель
2990	oblige	обязывать
2991	oblique	косой, наклонный
2992	obscene	непристойный
2993	obscure	неясный, тёмный
2994	observe	наблюдать
2995	obsess	овладеть (разумом)
2996	obsolete	устарелый
2997	obstacle	препятствие
2998	obstruct	препятствовать, загромождать
2999	obtain	получить, обрести
3000	obvious	очевидный
3001	occasion	случай, событие
3002	occupation	профессия, род деятельности
3003	occupy	занимать
3004	occur	случиться
3005	occur to	прийти в голову
3006	odd	необычный, неправильный
3007	odds	шансы
3008	odor (odour)	запах
3009	offence	обида
3010	offence (offense)	преступление, нарушение
3011	offend	обидеть, оскорбить
3012	offer	предлагать, предложение
3013	officer	служащий, должностное лицо
3014	offset	смещение
3015	offspring	отпрыск или всё потомство
3016	oil	масло
3017	oil	нефть
3018	ominous	зловещий
3019	omit	пропускать
3020	on account of	в связи
3021	on behalf of	от имени
3022	on foot	пешком
3023	on purpose	нарочно
3024	on the contrary	наоборот
3025	once	однажды, когда-либо
3026	ongoing	происходящий, продолжающий
3027	onion	лук, луковица
3028	onset	начало, наступление
3029	onward (onwards)	далее
3030	opaque	непрозрачный
3031	opening	отверстие
3032	operate	управлять, работать с
3033	opinion	мнение
3034	opportunity	возможность
3035	oppose	противостоять
3036	opposite	противоположный
3037	oppress	угнетать, притеснять
3038	opt for	выбирать из вариантов
3039	option	выбор, вариант
3040	oral	устный, ротовой
3041	orchard	фруктовый сад
3042	order	порядок, упорядочивать
3043	order	заказ, заказывать
3044	order	приказ
3045	ordinary	обычный
3046	oriental	восточный, азиатский
3047	origin	происхождение, начало
3048	original	первоначальный, первоисточник
3049	orphan	сирота
3050	ostensibly	по видимости, якобы
3051	otherwise	иначе, иным образом
3052	ought	должен, обязан
3053	ounce	унция
3054	out loud	вслух
3055	outcome	результат, исход
3056	outdated	устаревший
3057	outdoor (outdoors)	на улице
3058	outer	внешний
3059	outfit	наряд, комплект, набор
3060	outgoing	уходящий
3061	outing	прогулка, пикник и т. д.
3062	outlaw	преступник (особ. на свободе)
3063	outlet	выход  (отверстие)
3064	outline	контур, очертание, очертить
3065	outlook	перспектива, вид,  кругозор
3066	outnumber	превосходить численно
3067	output	выпуск, выход
3068	outrage	произвол, насилие, поругание
3069	outright	прямой, откровенный
3070	outset	начало
3071	outskirts	окраина, окрестности
3072	outstanding	выдающийся
3073	outstanding	неоплаченный, нерешённый
3074	outweigh	перевешивать
3075	oven	печь, духовка
3076	over	заново
3077	overall	общий, целый
3078	overcome	преодолеть, побороть
3079	overflow	переполняться, разлиться
3080	overhead	над головой
3081	overhear	подслушать, нечаянно услышать
3082	overlap	перекрываться
3083	overlook	не заметить
3084	overnight	ночной, с ночёвкой
3085	override	перекрывать, отменять
3086	overseas	за рубежом, особ. за морем
3087	oversee	контролировать, надзирать
3088	oversight	надзор
3089	overt	явный, открытый
3090	overtake	обгонять
3091	overthrow	свергнуть
3092	overtime	сверхурочная работа
3093	overturn	опрокинуть (ся)
3094	overview	обзор
3095	overwhelm	завалить, подавить
3096	owe	задолжать
3097	owe	быть обязанным чем-л.
3098	owl	сова
3099	own	владеть
3100	oxygen	кислород
3101	oyster	устрица
3102	pace	шаг, шагать
3103	pack	пачка, связка, колода, и т. д.
3104	pack	упаковывать, собирать
3105	pad	подушечка пальца, лапы
3106	pad	блокнот
3107	pad	панель, клавиатура
3108	paddle	грести, весло
3109	pagan	язычник
3110	pain	боль
3111	pair	пара
3112	pal	приятель
3113	palace	дворец
3114	pale	бледный
3115	palm	ладонь
3116	pan	сковорода
3117	pancake	блин, оладья
3118	pant	пыхтеть, задыхаться
3119	pants	штаны
3120	paper	бумага, документ
3121	paperwork	оформление бумаг
3122	paragraph	абзац, пункт
3123	parcel	посылка
3124	pardon	извинять, извинение
3125	parlor	приёмная, салон
3126	parrot	попугай
3127	parsley	петрушка
3128	part	роль
3129	part	часть, разделять(ся)
3130	participate	участвовать
3131	particle	частица
3132	particular	частный, конкретный
3133	partisan	сторонник
3134	partition	раздел
3135	part-time	неполная занятость
3136	pass	пройти
3137	pass away	умереть
3138	pass by	проходить мимо
3139	pass off as	сойти, прокатить за
3140	pass out	вырубиться
3141	pass smth on	отдать (другому)
3142	pass up	не воспользоваться шансом
3143	passage	проход, коридор
3144	passenger	пассажир
3145	passion	страсть
3146	past	мимо
3147	past	прошлый, прошедший
3148	pastime	времяпрепровождение
3149	pastry	выпечка, тесто
3150	pasture	пастбище
3151	pat	похлопать, потрепать
3152	patch	заплатка, накладка, латать
3153	path	путь
3154	pathetic	жалкий
3155	patient	терпеливый
3156	patio	внутренний дворик
3157	patrol	патруль
3158	patron	покровитель
3159	pattern	шаблон, образец
3160	pause	приостанавливать
3161	pave	вымостить
3162	paw	лапа
3163	pay back	вернуть деньги
3164	pay off	расплатиться (с долгом)
3165	pay out	выплатить (крупную сумму)
3166	payment	оплата
3167	pea	горошина
3168	peaceful	мирный
3169	peacekeeper	миротворец
3170	peach	персик
3171	peanut	арахис
3172	pear	груша
3173	pearl	жемчуг, жемчужина
3174	peasant	крестьянин
3175	pebble	морской камень
3176	peck	клевать
3177	peculiar	своеобразный, особый
3178	peddle	торговать вразнос, по мелочи
3179	pedestrian	пешеход
3180	pee	писать
3181	peek	вгзлянуть, подсмотреть
3182	peel	кожура, очищать
3183	peer	ровня, ровесник
3184	peer	вглядываться
3185	peg	колышек, фиксатор
3186	penalty	наказание
3187	pending	в ожидании, на рассмотрении
3188	penetrate	проникать
3189	peninsula	полуостров
3190	pepper	перец
3191	per	(кол-во) на (единицу)
3192	perceive	воспринимать, ощущать
3193	perception	восприятие
3194	perennial	многолетний, вечный
3195	perfect	совершенный
3196	perform	выполнить, исполнить
3197	perhaps	возможно
3198	peril	опасность, угроза
3199	period	точка (в предложении)
3200	perish	погибать
3201	perk	привилегия, преимущество
3202	perk up	воспрянуть, оживиться
3203	permanent	постоянный
3204	permit	разрешать
3205	perpetual	вечный, постоянный
3206	perplex	смутить, озадачить
3207	persecute	преследовать, травить
3208	persist	сохраниться
3209	persist	упорствовать
3210	personnel	персонал, личный состав
3211	persuade	убеждать
3212	pervasive	расширяющийся, всепроникающий
3213	pervert	извращать, извращенец
3214	pest	паразит, вредитель
3215	pet	домашний питомец
3216	petal	лепесток
3217	petroleum	нефть
3218	petty	мелкий, мелочный
3219	phony	фальшивый
3220	physician	врач
3221	pick	подбирать, собирать
3222	pick on	дразнить, докучать
3223	pick out	выбрать или выделить из
3224	pick up	прибрать
3225	pick up	подобрать
3226	pickle	мариновать, солить
3227	pie	пирог
3228	piece	предмет, часть, кусок
3229	pier	пристань, пирс
3230	pierce	проколоть
3231	pigeon	голубь
3232	pile	куча, стопка
3233	pile up	сложить, навалить
3234	pill	пилюля
3235	pillar	столб, опора, колонна
3236	pillow	подушка
3237	pin	булавка, штырь, прикалывать
3238	pinch	зажать, ущипнуть
3239	pine	сосна
3240	pineapple	ананас
3241	pipe	трубка
3242	pipe	труба
3243	piss	писать, моча
3244	piss about	страдать хернёй
3245	piss off	бесить
3246	pit	яма
3247	pitch	подавать (мяч)
3248	pitch	ставить (напр. палатку)
3249	pity	жалость
3250	pivot	стержень, ось, точка опоры
3251	placement	размещение
3252	placid	тихий, спокойный
3253	plague	чума
3254	plain	ясный, очевидный
3255	plain	ровный, равнина
3256	plain	простой, незамысловатый
3257	plane	самолёт
3258	plank	доска, планка
3259	plant	растение, сажать
3260	plant	завод, производство
3261	plaque	бляшка, металлический знак
3262	plaster	штукатурка или гипс
3263	plate	плита, пластина
3264	plausible	правдоподобный
3265	playground	детская площадка
3266	plea	просьба, требование, иск
3267	please	радовать
3268	pleasure	удовольствие, наслаждение
3269	pledge	залог, оставлять в залог
3270	pledge	обещание, обязательство
3271	plenty	множество, масса, достаток
3272	plight	тяжёлое положение, участь
3273	plot	план, чертёж
3274	plot	сюжет
3275	plow	пахать, плуг
3276	pluck	сорвать, выдернуть
3277	plug	штепсель, включать
3278	plug in	включать
3279	plum	слива
3280	plumbing	водопровод
3281	plump	пухлый
3282	plunge	окунуться, нырнуть
3283	plural	множественное число
3284	pocket	карман, карманный
3285	point	смысл, суть
3286	point	точка
3287	point	очко
3288	point	острие, кончик
3289	point	пункт
3290	point out	указать
3291	poise	равновесие, самообладание
3292	poison	яд, травить
3293	poke	совать, тыкать
3294	poke out	высовывать
3295	pole	полюс
3296	pole	шест, столб
3297	policy	политика, курс
3298	polish	шлифовать, полировать
3299	polite	вежливый
3300	poll	опрос или голосование
3301	pollute	загрязнять
3302	pond	пруд
3303	ponder	обдумывать
3304	pool	бассейн
3305	poor	бедный
3306	pope	папа римский
3307	population	население
3308	porcelain	фарфор
3309	porch	крыльцо, терраса, веранда
3310	pork	свинина
3311	portable	портативный, переносной
3312	porter	носильщик или порьте
3313	portray	изображать, показывать
3314	possess	обладать
3315	possible	возможный
3316	post	почта, почтовый
3317	postpone	отложить, задержать
3318	posture	поза
3319	pot	горшок, кастрюля
3320	potato	картофель
3321	potent	мощный, могущественный
3322	pouch	сумочка, кошелёк
3323	poultry	домашняя птица
3324	pound	фунт
3325	pound	долбить, толочь
3326	pour	лить
3327	pour in (into)	хлынуть, заполонить
3328	poverty	бедность, нищета
3329	powder	порошок
3330	powerful	мощный, действенный
3331	practice	практика, практиковать
3332	prairie	степь, прерия
3333	praise	хвалить, похвала
3334	pray	молиться
3335	preach	проповедовать
3336	precarious	ненадёжный, шаткий
3337	precaution	предосторожность
3338	precede	предшествовать
3339	precious	драгоценный
3340	precise	точный
3341	preclude	исключить, помешать
3342	predator	хищник
3343	predecessor	предшественник
3344	predict	предсказывать
3345	predominant	преобладающий
3346	prefer	предпочитать
3347	pregnant	беременная
3348	prejudice	предубеждение, предрассудок
3349	preliminary	предварительный
3350	premature	преждевременный
3351	premise	предпосылка
3352	premises	помещение (-я)
3353	preoccupy	занимать внимание
3354	prepare	приготовить
3355	prescribe	предписывать
3356	present	настоящее (время) 
3357	present	присутствующий, в наличии
3358	preserve	сохранять, беречь
3359	preside	председательствовать
3360	press	нажимать
3361	presume	предполагать
3362	pretend	притворяться
3363	pretext 	повод
3364	pretty	довольно-таки
3365	pretty	приятный
3366	prevail	преобладать, возобладать
3367	prevent	предотвращать
3368	prevent smb from	мешать
3369	previous	предшествующий
3370	prey	добыча
3371	prick	колоть
3372	pride	гордость
3373	priest	жрец, священник
3374	primary	первичный, главный
3375	prime	важный, главный, первый
3376	primitive	первобытный
3377	principal	главный, основной
3378	prior	предварительный, предшествующий
3379	prison	тюрьма
3380	pristine	нетронутый, первозданный
3381	privacy	частная жизнь, конфиденциальность
3382	private	частный, личный
3383	probable	вероятный, возможный
3384	probe	исследовать, проверить
3385	probe	датчик, зонд
3386	procedure	процедура
3387	proceed	следовать, продолжать
3388	process	обработать
3389	proclaim	провозглашать
3390	procure	достать, добыть, обеспечить
3391	prod	ткнуть (чтобы сдвинуть)
3392	produce	производить
3393	proficient	опытный, умелый
3394	profit	польза, извлекать пользу
3395	profound	глубокий (перен.)
3396	prohibit	запрещать
3397	prolong	продлить
3398	prominent	выдающийся, видный
3399	promise	обещать, обещание
3400	promote	поощрять, помогать
3401	prompt	побуждать, подстрекать
3402	prompt	быстрый, оперативный
3403	prone	склонный
3404	pronounce	произносить
3405	proof	доказательство (неисч.)
3406	prop	подпирать, подпорка
3407	propagate	размножать, распространять
3408	propel	двигать, толкать
3409	proper	правильный, надлежащий
3410	property	собственность
3411	prophet	пророк
3412	proponent	сторонник, поборник
3413	propose	предлагать
3414	prosecute	вести, осуществлять
3415	prosecute	преследовать (законодательно)
3416	prospect	перспектива, вид будущего
3417	prosper	процветать, преуспевать
3418	protect	защищать
3419	proud	гордый, гордящийся
3420	prove	доказывать
3421	proverb	пословица
3422	provide	обеспечивать, снабжать
3423	provided	при условии
3424	provisional	предварительный, временный
3425	proximity	близость
3426	prudent	разумный, осторожный
3427	pry	любопытствовать, совать нос
3428	publish	публиковать, издавать
3429	puddle	лужа
3430	puff	дуновение, пых, клубы (дыма)
3431	pull back	отступить, отвести войска
3432	pull off	справиться, вытянуть
3433	pull over	притормозить ненадолго
3434	pull through	выжить, выкарабкаться
3435	pump	насос, нагнетать
3436	pumpkin	тыква
3437	punch	удар (кулаком), бить
3438	punish	наказывать
3439	pupil	зрачок
3440	puppet	кукла, марионетка
3441	puppy	щенок
3442	purchase	покупка, покупать
3443	pure	чистый, незагрязнённый
3444	purge	чистка, очищать
3445	purple	пурпурный, фиолетовый
3446	purpose	цель, причина
3447	purse	кошелек, сумочка
3448	pursue	преследовать, гнаться
3449	pursuit	преследование
3450	put aside	отложить
3451	put away	посадить в тюрьму
3452	put in	вложить
3453	put off	отвратить, отвлечь и т. д.
3454	put off	откладывать
3455	put on	надеть
3456	put on	провести (мероприятие)
3457	put out	потушить
3458	put out	обременять, стеснять
3459	put smb down	подавлять, угнетать
3460	put smth down to	объяснить, списать на
3461	put through	подвергнуть
3462	put together	собирать, соединять
3463	put up	устроить (напр. драку)
3464	put up with	принимать, мириться
3465	puzzle	озадачить
3466	quaint	причудливый
3467	quality	качество, качественный
3468	quantity	количество
3469	quarrel	ссора
3470	quarry	карьер
3471	quarter	четверть
3472	queer	странный, чудной
3473	query	запрос
3474	quest	поиск
3475	question	подвергать сомнению
3476	questionnaire	анкета
3477	queue	очередь
3478	quiet	тихий, спокойный, тишина
3479	quilt	одеяло (стёганное)
3480	quit (quit, quit)	бросить, покинуть, перестать
3481	quite	вполне или более-менее
3482	quiz	викторина, тест, опрос
3483	quote	цитировать
3484	rabbit	кролик
3485	race	раса
3486	race	гонка
3487	rack	стеллаж, вешалка, подставка
3488	radiate	излучать
3489	raft	плот
3490	rag	тряпка
3491	rage	ярость
3492	raid	набег
3493	rail	рельс, перила
3494	railway	железная дорога
3495	rainbow	радуга
3496	raise	растить (детей)
3497	raise	поднять, повысить
3498	raisin	изюм
3499	rake	грабли
3500	rally	собраться, созвать (напр. армию)
3501	rally	оживать, приходить в себя
3502	ram	баран
3503	ramble	бродить, блуждать
3504	ramp	скат, съезд
3505	random	выбранный наугад
3506	range	диапазон, пределы
3507	rank	ранг, разряд, звание
3508	ransom	выкуп
3509	rape	насиловать, изнасилование
3510	rapid	быстрый
3511	rare	редкий
3512	rash	опрометчивый, необдуманный
3513	raspberry	малина
3514	rate	курс, тариф, ставка
3515	rate	показатель, уровень
3516	rather	скорее, предпочтительнее
3517	ratio	соотношение, пропорции
3518	rationale	основание, обоснование
3519	rattle	греметь, погремушка
3520	ravage	разорить, сильно повредить
3521	raw	сырой, необработанный
3522	ray	луч
3523	razor	бритва
3524	reach	достичь
3525	reach out	потянуться (рукой)
3526	read out	огласить, зачитать вслух
3527	read up on	изучить вопрос
3528	real estate	недвижимость
3529	realize	понимать
3530	realm	царство или область (перен.) 
3531	reap	пожинать
3532	rear	задний
3533	reason	разум, благоразумие
3534	reason	причина, мотив
3535	rebel	восставать
3536	rebound	отскочить, рикошет
3537	recall	вспоминать
3538	recede	убывать
3539	receipt	квитанция
3540	receipt	получение
3541	receive	получить
3542	recent	недавний, последний
3543	reception	прием, приёмная
3544	recess	перерыв
3545	recess	выемка, впадина
3546	recipe	рецепт
3547	recipient	получатель
3548	reciprocal	взаимный, ответный
3549	recite	декламировать, рассказывать
3550	reckless	опрометчивый, безрассудный
3551	reckon	считать, рассчитывать
3552	recognize	узнавать
3553	recollection	воспоминание
3554	reconcile	примириться
3555	record	запись
3556	recount	пересказать
3557	recover	восстановиться, выздороветь
3558	recreation	отдых и развлечения
3559	recruit	набирать, вербовать
3560	rectangle	прямоугольник
3561	recur	повторяться, возвращаться
3562	recycle	перерабатывать
3563	redeem	выкупить, искупить
3564	reduce	снижать
3565	redundant	избыточный
3566	reed	тростник, камыш
3567	reel	катушка, наматывать
3568	refer	сослаться, отослать
3569	refine	очищать, усовершенствовать и т.д.
3570	reflect	отражать(ся)
3571	refrain	воздерживаться
3572	refresh	обновлять, освежить
3573	refrigerator	холодильник
3574	refuge	убежище, пристанище
3575	refugee	беженец
3576	refund	возврат, возмещение
3577	refuse	отказаться
3578	refute	опровергать
3579	regain	восстановить, вернуть себе
3580	regard	внимание, уважение
3581	regard	считать, рассматривать
3582	regiment	полк
3583	register	касса (магазина)
3584	regret	сожалеть, сожаление
3585	regular	обычный
3586	rehearse	репетировать
3587	reign	царствовать
3588	rein	сдерживать, держать в узде
3589	reinforce	усилить, укрепить
3590	reject	отвергать
3591	rejoice	радоваться
3592	relate	относиться, быть связанным
3593	relative	родственник
3594	relative	относительный
3595	relay	передавать, ретранслировать
3596	release	отпускать, выпускать
3597	relentless	настойчивый, непрекращающийся
3598	relevant	уместный, актуальный
3599	relief	облегчение
3600	relieve	облегчить, освободить
3601	relish	наслаждаться
3602	reluctant	неохотный, нежелающий
3603	rely	полагаться
3604	remain	оставаться
3605	remainder	оставшаяся часть
3606	remains	остатки, останки
3607	remark	замечать, замечание
3608	remedy	средство
3609	remind	напомнить
3610	reminiscent	напоминающий
3611	remnant	остаток
3612	remorse	раскаяние
3613	remote	отдалённый, захолустный
3614	remove	убрать, удалить
3615	render	делать, придавать свойство
3616	render	воздавать, оказывать
3617	renew	возобновлять
3618	renovate	ремонтировать, обновлять
3619	renown	известность, слава
3620	rent	аренда, арендовать, сдавать
3621	repair	ремонт, ремонтировать
3622	repay	отплатить
3623	repeal	отменить (закон)
3624	repel	отталкивать, отражать
3625	replace	заменить
3626	replicate	воспроизвести
3627	reply	ответ, отвечать
3628	report	доклад, отчёт
3629	represent	представлять
3630	repress	подавлять
3631	reproduce	воспроизводить
3632	request	запрос, запрашивать
3633	require	требовать
3634	rescue	спасать, спасение
3635	research	исследование, исследовать
3636	resemble	походить
3637	resent	огорчаться, возмущаться
3638	reserve	запас, запасной, запасать
3639	reserve	бронировать
3640	reserved	скрытный, замкнутый
3641	reside	проживать (где-то)
3642	residue	остаток
3643	resign	отказываться, сдавать, уходить
3644	resilient	стойкий, упругий
3645	resist	сопротивляться
3646	resolute	решительный, твёрдый
3647	resolve	решиться, решимость
3648	resolve	разрешить (ситуацию)
3649	resort	курорт
3650	resort to	прибегать к
3651	respective	соответственный
3652	respond	отвечать
3653	response	ответ, отклик
3654	responsible	ответственный
3655	rest	остаток, остальное
3656	rest	отдых, отдыхать
3657	rest	покоиться
3658	restore	восстанавливать
3659	restrain	ограничивать, удерживать
3660	restrict	ограничивать
3661	result in	привести к
3662	resume	возобновить
3663	resurrect	воскрешать
3664	retail	розничная продажа
3665	retain	сохранять, удерживать
3666	retaliate	отплатить, отомстить
3667	retarded	умственно отсталый
3668	retention	удержание, сохранение
3669	retire	уходить в отставку, на пенсию
3670	retract	втягивать, брать обратно и т.д.
3671	retreat	отступать
3672	retrieve	извлечь, вернуть
3673	retrospect	взгляд в прошлое
3674	return	возвращаться
3675	reveal	раскрыть, выявить
3676	revenge	месть
3677	revenue	доход, выручка
3678	revere	почитать
3679	reverse	обратный, обратить
3680	review	обзор, сделать обзор
3681	revise	пересматривать, проверять
3682	revive	возрождать, оживлять
3683	revolt	восстание, бунт
3684	revolve	вращаться
3685	reward	награда, награждать
3686	rhyme	рифма
3687	rib	ребро
3688	ribbon	лента
3689	rice	рис
3690	rich	богатый
3691	rid	освобождать, избавлять
3692	riddle	загадка
3693	ride	ездить
3694	ridge	хребет, ребро
3695	ridicule	осмеяние
3696	ridiculous	смешной, нелепый
3697	rifle	винтовка
3698	rift	разрыв, трещина
3699	rig	установка, сооружение
3700	right away	немедленно
3701	righteous	праведный
3702	rigid	жесткий
3703	rigorous	строгий, тщательный
3704	rim	край, обод
3705	ring (rang, rung)	звонить, звонок
3706	rinse	полоскать, полоскание
3707	riot	бунт
3708	rip	рвать
3709	rip off	обмануть, ободрать
3710	ripe	созревший
3711	ripple	рябь или пульсация
3712	rise (rose, risen)	подниматься, повышаться
3713	rite	церемония, ритуал
3714	rival	соперничающий, враждебный
3715	rivet	заклёпка, приковывать, клепать
3716	roadside	обочина, придорожный
3717	roadway	проезжая часть
3718	roam	бродить, блуждать
3719	roar	рёв, реветь
3720	roast	жарить
3721	rob	грабить, отнимать
3722	robe	халат, мантия, одеяние
3723	robust	крепкий, надёжный, здоровый
3724	rock	камень, скала
3725	rock	качать, трясти
3726	rod	стержень, прут
3727	rodent	грызун
3728	rogue	жулик, проходимец
3729	roll	рулон, клубок, свиток и т. д.
3730	roll	катиться
3731	roll up	свернуть, скатать
3732	roof	крыша
3733	room	место, пространство
3734	root	корень
3735	root out	искоренить
3736	rope	верёвка
3737	rope in (into)	втянуть в занятие
3738	rot	гнить
3739	rotate	сменять, чередовать
3740	rotate	вращать
3741	rotten	гнилой
3742	rough	грубый, неровный, жёсткий
3743	rough up	грубо обращаться, нападать
3744	round	круг, круглый
3745	round down	округлить (вниз)
3746	rouse	будить
3747	route	маршрут
3748	row	грести
3749	row	ряд
3750	royal	королевский
3751	rub	тереть
3752	rubber	резина, резиновый
3753	rubbish	мусор (в осн. брит.)
3754	rubble	щебень, обломки
3755	rude	грубый, неприличный
3756	ruffle	рябить, взъерошить
3757	rug	коврик
3758	rugged	неровный, грубый
3759	ruin	разрушать, губить
3760	rule	правило
3761	rule	править
3762	ruler	линейка
3763	rumble	грохот, рокот
3764	rumor (rumour)	слух
3765	run	управлять
3766	run after	гнаться за
3767	run away	убежать
3768	run counter	противоречить
3769	run into	случайно встретить
3770	run out of	исчерпать запас
3771	run over	переехать машиной
3772	runaway	беглый, беглец
3773	runway	взлётная полоса
3774	rupture	разрыв
3775	rural	сельский
3776	rush	торопиться, мчаться, броситься
3777	rust	ржавчина
3778	rustic	деревенский, простой, грубый
3779	rustle	шелест
3780	rut	борозда, колея, рутина
3781	ruthless	беспощадный
3782	sack	мешок
3783	sacred	священный
3784	sacrifice	жертва
3785	saddle	седло
3786	safe	надёжный, защищённый
3787	sail	парус, плыть (о судне)
3788	saint	святой
3789	salary	зарплата
3790	sale	продажа, сбыт
3791	salesperson	продавец (в магазине)
3792	salient	выступающий, заметный
3793	saliva	слюна
3794	salmon	лосось
3795	salt	соль
3796	salvage	спасти, уберечь от потери
3797	salvation	спасение
3798	sample	образец, часть
3799	sanctuary	убежище или заповедник
3800	sand	песок
3801	sane	здравый, вменяемый
3802	satellite	спутник
3803	satisfy	удовлетворять
3804	saturated	насыщенный
3805	saucepan	кастрюля или сковорода
3806	saucer	блюдце
3807	sausage	колбаса
3808	savage	дикарь, дикий (в т. ч. перен.)
3809	save up	накопить
3810	savings	сбережения
3811	savior	спаситель
3812	savor	вкус, смаковать
3813	scaffold	помост
3814	scale	чешуя, шелуха
3815	scale	взбираться
3816	scale	масштаб, шкала
3817	scales	весы
3818	scant	скудный
3819	scar	шрам
3820	scarce	редкий, скудный
3821	scare	пугать
3822	scarf	шарф
3823	scarlet	алый
3824	scatter	разбрасывать, рассеивать
3825	scent	нюх или аромат
3826	schedule	график, расписание
3827	scheme	схема
3828	scholar	учёный
3829	scholarship (money)	стипендия
3830	science	наука
3831	scissors	ножницы
3832	scold	ругать
3833	scoop	 совок, ковш, черпать
3834	scope	пределы, район
3835	score	счёт, очко, балл
3836	scorn	презирать, презрение
3837	scour	обыскать, прочесать
3838	scout	разведчик
3839	scowl	насупиться, рассердиться
3840	scramble	драка, схватка
3841	scramble	карабкаться, продираться
3842	scrambled eggs	яичница
3843	scrap	обломок, обрывок
3844	scrape	скрести
3845	scrape through	с трудом пройти
3846	scrape together	наскрести (денег)
3847	scratch	царапать, царапина
3848	scream	кричать, крик, вопль 
3849	screech	визг, скрип, хрип и т. д.
3850	screenplay	сценарий
3851	screw	винт, ввинчивать
3852	screw	к чёрту
3853	screw up	завалить, просрать
3854	scribble	криво написать, нацарапать
3855	scrub	чистить, драить
3856	scrutiny	внимательный осмотр, изучение
3857	scurry	бежать, сновать, суетиться
3858	seal	печать, запечатывать
3859	seal	тюлень
3860	seam	шов
3861	search	поиски, искать
3862	seasoning	приправа
3863	seat	место, сиденье
3864	secular	светский
3865	secure	безопасный, надёжный
3866	sediment	осадок
3867	seduce	соблазнять
3868	see off	провожать (в путь)
3869	see through	довести до конца
3870	see to	заняться, позаботиться
3871	seed	семя, сеять
3872	seek (sought, sought)	искать, стремиться
3873	seem	казаться
3874	seep	просачиваться, проникать
3875	segregate	разделять
3876	seize	схватить
3877	seldom	редко
3878	select	выбирать, отбирать
3879	selfish	эгоистичный
3880	sell out of	распродать (весь товар)
3881	send (sent, sent)	отправить
3882	send out	рассылать
3883	senior	старший
3884	sensation	ощущение
3885	sense	чувство, осознание
3886	sense	смысл, значение
3887	sensible	разумный, имеющий смысл
3888	sensitive	чувствительный
3889	sentence	предложение
3890	sentence	приговор
3891	sentiment	настроение, чувство
3892	separate	отдельный, отделять
3893	sequence	последовательность
3894	serene	безмятежный, безоблачный
3895	series	сериал
3896	sermon	проповедь
3897	serve	служить
3898	serve	сидеть (в тюрьме)
3899	serve	подавать (блюдо)
3900	set	набор, комплект
3901	set (set, set)	установить, наладить
3902	set about	приступить, начать
3903	set down	написать, установить
3904	set out	разъяснять
3905	set out for	отправиться
3906	set smb back	задержать
3907	set smb back	обойтись в (сумму)
3908	set smb up	подставить
3909	set smb up with	устроить, организовать
3910	set smb up with	познакомить, свести
3911	settle	уладить
3912	settle	селиться
3913	settle for	согласиться на
3914	settle in	освоиться
3915	settle on	определиться с
3916	sever	разрывать, разъединять
3917	several	несколько
3918	severe	серьёзный, суровый, жёсткий
3919	sew	шить
3920	sewage	канализация, сточные воды
3921	sex	пол
3922	shabby	облезлый, убогий
3923	shack	лачуга, хибара, будка
3924	shade	тень
3925	shade	оттенок (яркости)
3926	shadow	тень
3927	shaft	вал, ось, стержень
3928	shaft	шахта (напр. лифта)
3929	shake (shook, shaken)	трясти
3930	shake (shook, shaken)	пожать (руки)
3931	shake off	отделаться
3932	shake up	встряхнуть, взбудоражить
3933	shallow	мелкий
3934	shame	стыд, позор
3935	shape	форма, формировать
3936	share	делить, доля
3937	share	разделять (напр. мнение)
3938	shareholder	акционер
3939	shark	акула
3940	sharp	острый
3941	shatter	разрушить, раздробить
3942	shave	брить
3943	shed	сарай, ангар и т.п.
3944	shed (shed, shed)	проливать, терять, сбрасывать
3945	sheep (pl:sheep)	овца
3946	sheer	явный, полный, чистый
3947	sheer	отвесный
3948	sheet	лист
3949	shelf (pl: shelves)	полка, уступ
3950	shell	скорлупа, раковина, гильза
3951	shelter	укрытие, убежище
3952	shepherd	пастух
3953	shield	щит, прикрывать
3954	shift	сменить, сдвинуть
3955	shift	смена (на работе)
3956	shimmer	мерцать, переливаться
3957	shine (shone, shined)	сиять, блестеть, светить
3958	ship	доставлять
3959	shirt	рубашка
3960	shiver	дрожь, дрожать
3961	shoe	туфля, ботинок (низкий)
3962	shoot (shot, shot)	стрелять
3963	shoot (shot, shot)	снимать, фотографировать
3964	shore	берег
3965	shortage	нехватка
3966	shoulder	плечо
3967	shout	кричать
3968	shove	резко толкнуть, пихнуть
3969	shovel	лопата или совок
3970	show around	показать места
3971	show off	показать всем, похвастаться
3972	show up	прийти, появиться
3973	showcase	витрина, демонстрировать
3974	shower	душ
3975	shred	мелко порубить
3976	shrewd	проницательный
3977	shriek	пронзительный крик, вскрикнуть
3978	shrimp	креветка
3979	shrine	святыня
3980	shrink (shrank, shrunk)	сжаться, съёжиться
3981	shroud	пелена, окутывать
3982	shrub	куст
3983	shrug	пожать плечами
3984	shudder	содрогаться, дрожь
3985	shuffle	перемешивать, тасовать
3986	shun	избегать
3987	shut (shut, shut)	закрыть
3988	shut out	не впускать
3989	shut up	заткнуться
3990	shy	застенчивый
3991	siblings	братья и сестры
3992	sick	больной, плохо чувствующий
3993	sideline	что-то вторичное
3994	sidewalk	тротуар
3995	sideways	вбок
3996	siege	осада
3997	sift	просеять
3998	sigh	вздох
3999	sight	вид, поле зрения
4000	sight	достопримечаетльность
4001	sign	знак
4002	sign	подпись, подписывать
4003	sign up	записаться, зарегистрироваться
4004	signature	подпись
4005	significant	значительный
4006	signify	означать
4007	silent	тихий, молчаливый
4008	silk	шелк
4009	sill	подоконник, порог
4010	silly	глупый
4011	similar	похожий
4012	simmer	медленно кипятить
4013	simple	простой, обычный
4014	simulate	моделировать, имитировать
4015	simultaneous	одновременный
4016	sin	грех, грешить
4017	since	поскольку
4018	since	с (какого-то времени)
4019	sincere	искренний
4020	single	один, отдельный, единый
4021	singular	единственный, особый
4022	sinister	зловещий
4023	sink	раковина
4024	sink (sank, sunk)	тонуть, топить
4025	sip	глоток
4026	sit around	просто сидеть
4027	sit back	отсидеться
4028	sit out	высидеть
4029	site	местоположение
4030	situate	располагать
4031	size up	изучить, оценить
4032	skate	конёк, кататься на коньках
4033	sketch	набросок, эскиз
4034	ski	ездить на лыжах
4035	skid	заносить, скользить, буксовать
4036	skill	умение, искусство и т. д.
4037	skillet	сковорода (глубокая)
4038	skim	скользить (легко)
4039	skin	кожа
4040	skinny	тощий
4041	skip	прыгать, перепрыгивать
4042	skirt	юбка
4043	skull	череп
4044	slab	плита, блок
4045	slack	расслабление, поблажка
4046	slam	хлопать, ударять, захлопывать
4047	slant	наклон, скос, наклонять
4048	slap	шлёпать, пощечина
4049	slash	рубить, хлестать, кромсать
4050	slate	шифер или сланец
4051	slaughter	бойня (в т. ч. перен.), забивать
4052	slave	раб
4053	slay (slew, slain)	умертвить
4054	sleek	гладкий, лоснящийся
4055	sleep around	трахаться, блудить
4056	sleeve	рукав
4057	slender	тонкий, стройный, изящный
4058	slice	ломтик, нарезать
4059	slick	скользкий
4060	slide (slid, slid)	скользить
4061	slight	лёгкий, слабый, незначительный
4062	slim	стройный
4063	slime	слизь
4064	slip	скользнуть
4065	slipper	тапок
4066	slippery	скользкий
4067	slit	щель
4068	slope	склон, наклон
4069	sloppy	небрежный, неряшливый
4070	slot	разъём, паз, гнездо
4071	slow down	замедлиться
4072	sludge	осадок, отстой, ил
4073	slum	трущобы
4074	slump	спад, сваливаться
4075	slut	шлюха
4076	sly	лукавый, коварный
4077	smack	шлёпнуть, хлопнуть
4078	smart	умный, хитрый
4079	smash	громить, разбивать
4080	smear	мазать
4081	smell	запах, пахнуть, нюхать
4082	smirk	ухмылка
4083	smooth	гладкий
4084	smother	задушить
4085	smudge	смазать
4086	smuggle	провозить тайно
4087	snack	лёгкая закуска
4088	snag	коряга или загвоздка
4089	snail	улитка
4090	snake	змея
4091	snap	щёлкать, щелчок
4092	snapshot	снимок
4093	snarl	рычать, огрызаться
4094	snatch	схватить, утащить
4095	sneak	красться
4096	sneakers	кеды, кроссовки
4097	sneer	усмешка, насмехаться
4098	sneeze	чихать
4099	sniff	нюхать, сопеть, фы и т. д.
4100	snore	храп, храпеть
4101	snort	фыркнуть, хмыкнуть
4102	snowball	снежок
4103	snug	уютный, тесный
4104	so far	до сих пор
4105	soak	мочить, пропитывать
4106	soap	мыло
4107	soar	парить, взмывать (втч. о ценах)
4108	sob	рыдать, всхлипывать
4109	sober	трезвый
4110	sober up	протрезветь
4111	so-called	так называемый
4112	soccer	футбол
4113	society	общество
4114	sock	носок
4115	socket	разъем, розетка
4116	soften	смягчать
4117	software	программое обеспечение
4118	soil	почва
4119	solar	солнечный
4120	sole	единственный
4121	sole	подошва
4122	solemn	торжественный, серьёзный
4123	solid	сплошной
4124	solid	твёрдый, крепкий
4125	solitary	уединенный
4126	solitude	одиночество
4127	solution	решение, ответ
4128	solution	раствор
4129	solve	решить
4130	someday	когда-нибудь
4131	somewhat	слегка
4132	soon	скоро или рано
4133	soot	сажа
4134	soothe	успокаивать
4135	sophisticated	сложный, изощрённый
4136	sore	больной, рана
4137	sorrow	горе, скорбь
4138	sound	здоровый
4139	sour	кислый
4140	source	источник
4141	south	юг, южный
4142	sovereign	суверенный
4143	sow (sowed, sown)	сеять
4144	space	пространство
4145	space	космос
4146	spade	лопата
4147	span	пролёт, интервал
4148	spare	щадить, избавить
4149	spare	запасной, лишний
4150	spare	выделить, уделить
4151	spark	искра, вспыхивать
4152	sparkle	сверкать, блистать, искриться
4153	sparse	редкий, разреженный
4154	spawn	порождать, порождение и т. д.
4155	speak out	высказать
4156	speak up	говорить громче
4157	spear	копье
4158	special	особенный, специальный
4159	species	вид (биол.)
4160	specific	конкретный
4161	specify	указать, установить, уточнить
4162	specimen	образец, экземпляр
4163	speck	пятнышко, крупинка
4164	spectacle	зрелище
4165	spectator	зритель, наблюдатель
4166	speculate	предполагать, строить догадки
4167	speed up	ускориться
4168	spell	заклинание, чары
4169	spell	произносить (писать) по буквам
4170	spell out	разъяснить
4171	spend (spent, spent)	тратить, проводить (время)
4172	spice	пряность, специя
4173	spike	шип, штырь, острие, клин
4174	spill	проливать, рассыпать
4175	spin	крутить
4176	spine	позвоночник
4177	spirit	дух
4178	spit (spat, spat)	плевать
4179	splash	брызги, всплеск
4180	splendid	великолепный, блестящий
4181	splinter	шепка, осколок, заноза
4182	split (split, split)	расколоться, распасться
4183	split up	разделиться
4184	spoil	портить
4185	spokesman	представитель, прес-секретарь
4186	sponge	губка
4187	spooky	жуткий
4188	spot	место
4189	spot	пятно
4190	spot	заметить, увидеть
4191	spotlight	прожектор, центр внимания
4192	spouse	супруг, супруга
4193	sprawl	растягиваться, расползаться
4194	spread (spread, spread)	распространять(ся)
4195	spring (sprang, sprung)	прыгать
4196	spring (sprang, sprung)	источник, проистекать
4197	sprinkle	побрызгать, посыпать
4198	sprout	росток, прорастать
4199	spur	шпора, побуждать
4200	spy (on)	шпион, шпионить
4201	squad	команда, отряд
4202	square	квадрат, квадратный
4203	square	площадь
4204	squash	раздавливать, расплющивать
4205	squat	приседать, приземистый
4206	squeak	пищать, скрипеть
4207	squeal	визг, визжать
4208	squeeze	сжимать
4209	squid	кальмар
4210	squint	щуриться или коситься
4211	squirm	извиваться, ёрзать
4212	squirrel	белка
4213	squirt	тонкая струя
4214	stab	ударить ножом, зарезать
4215	stable	устойчивый
4216	stack	стопка, куча, складывать
4217	staff	персонал
4218	stage	сцена
4219	stage	стадия, ступень
4220	stagger	шататься, колебаться
4221	stain	пятно, окрашиваться, пачкать
4222	stairs	ступеньки, лестница
4223	stake	стойка, кол, столб
4224	stake	ставка, делать ставку
4225	stale	несвежий
4226	stalk	красться, преследовать
4227	stalk	стебель
4228	stall	задержаться, застопориться
4229	stall	палатка, ларёк
4230	stamp	печать, штамп, марка
4231	stance	поза, положение
4232	stand	терпеть, выносить
4233	stand against	противостоять
4234	stand by	поддерживать, быть наготове
4235	stand for	выступать за
4236	stand for	обозначать (в сокращении)
4237	stand out	выделяться
4238	standpoint	точка зрения
4239	staple	скоба, скрепка
4240	stare	пялиться, пристальный взгляд
4241	stark	чёткий, жёсткий, острый (об. перен.)
4242	start up	основать, установить
4243	startle	испугать (неожиданностью)
4244	starve	голодать
4245	stash	тайник, заначка,  прятать
4246	state	государство
4247	state	состояние
4248	state	заявить, отметить
4249	stature	рост
4250	statutory	установленный законом
4251	stay	оставаться
4252	stay	остановиться пожить
4253	stay up	не ложиться
4254	steady	устойчивый
4255	steal (stole, stolen)	красть
4256	stealth	скрытность, хитрость
4257	steam	пар
4258	steel	сталь, стальной
4259	steep	крутой
4260	steer	управлять, направлять
4261	stellar	звездный
4262	stem	стебель
4263	step	шаг, ступать, ступенька
4264	step down	уйти в отставку
4265	step in	вмешаться
4266	stern	суровый, строгий
4267	stew	тушить, рагу
4268	stick	палка, тыкать палкой
4269	stick (stuck, stuck)	приклеить
4270	stick at	упорно продолжать
4271	stick out	торчать, выделяться
4272	stick to	придерживаться, соблюдать
4273	stick together	держаться вместе
4274	stiff	жёсткий, негнущийся
4275	stifle	удушать
4276	still	спокойный, неподвижный
4277	sting (stung, stung)	жалить, жало
4278	stink (stank, stunk)	вонять
4279	stir	шевелить(ся), двигать и т.д.
4280	stir up	вызвать, возбудить
4281	stitch	стежок, сшить, зашить
4282	stock	запас
4283	stock	акции
4284	stock up on	запастись
4285	stocking	чулок
4286	stomach	желудок, живот
4287	stomp	топать
4288	stool	табурет
4289	stoop	крыльцо со ступеньками (амер.)
4290	stoop	наклоняться или сутулиться
4291	stop over	заехать, остановиться
4292	store	хранить, хранилище
4293	store	магазин
4294	stout	толстый, плотный, крепкий
4295	stove	плита
4296	straight	прямой, прямо
4297	straightforward	простой, прямой, откровенный
4298	strain	напрягать, напряжение
4299	strait	пролив
4300	strand	застрять, сесть на мель
4301	strand	прядь, нить (об. скрученная)
4302	strangle	придушить
4303	strap	ремень
4304	straw	солома
4305	strawberry	клубника
4306	stray	бродить, бродячий
4307	streak	полоса, след, струя
4308	stream	поток, ручей
4309	strength	сила, мощность, прочность
4310	stress	подчеркнуть, заострить внимание
4311	stretch	тянуть, вытягивать
4312	strew (strewn, strewn)	разбрасывать
4313	strict	строгий, точный
4314	stride (strode, stridden)	шагать, шаг
4315	strike	забастовка
4316	strike (struck, struck)	бить, удар
4317	strike out	потерпеть неудачу
4318	string	струна, тетива, бечева
4319	stringent	строгий
4320	strip	полоса, лента
4321	strip	снимать (обнажать)
4322	stripe	полоса
4431	swoop	кинуться, напасть
4323	strive (strove, striven)	стремиться, добиваться
4324	stroke	гладить
4325	stroll	прогулка, прогуливаться
4326	struggle	бороться, борьба
4327	stubborn	упрямый
4328	stud	шпилька
4329	stuff	вещи, всякая фигня
4330	stuffy	душный
4331	stumble	спотыкаться, запинаться
4332	stump	пень
4333	stun	ошеломить, оглушить
4334	stunt	трюк, выходка
4335	stupid	глупый
4336	sturdy	крепкий
4337	subdue	подавить, укротить
4338	subject	предмет, тема
4339	subject	подверженный, подвергать
4340	sublime	возвышенный, величественный
4341	submerge	погружаться под воду
4342	submit	подавать информацию
4343	submit to	подчиниться
4344	subordinate	подчиненный, подчинять
4345	subscribe	подписываться
4346	subsequent	последующий
4347	subside	утихать, спадать
4348	subsidiary	вспомогательный, дополнительный
4349	subsist	существовать, прокормиться
4350	substance	вещество, материя
4351	substantial	существенный, значительный
4352	substantive	существенный, основной
4353	substitute	заменять, замена
4354	subtitle	субтитры или подзаголовок
4355	subtle	тонкий, неуловимый
4356	subtract	вычитать
4357	suburb	пригород
4358	subvert	подорвать
4359	subway	метро (амер.)
4360	succeed	достичь цели
4361	success	успех
4362	succession	последовательность, преемственность
4363	successor	преемник
4364	succumb	поддаться, не устоять
4365	suck	сосать
4366	sudden	внезапный
4367	sue	предъявить иск
4368	suffer	страдать
4369	suffice	хватать, быть достаточным
4370	sufficient	достаточный
4371	suffocate	задыхаться
4372	suggest	предлагать
4373	suit	костюм, комплект
4374	suit	подходить, соответствовать
4375	suitcase	чемодан
4376	suite	апартаменты, номер люкс
4377	sulfur (sulphur)	сера
4378	sum	сумма, суммировать
4379	sum up	подытожить
4380	summary	сводка, конспект
4381	summit	вершина, верх
4382	summon	вызывать
4383	sunset	закат солнца
4384	superb	превосходный
4385	superficial	поверхностный
4386	superintendent	управляющий, начальник
4387	superior	высший, превосходящий
4388	supervise	надзирать, контролировать
4389	supplement	дополнение, дополнять
4390	supply	поставлять, поставка
4391	supply	предложение
4392	support	поддерживать
4393	suppose	полагать
4394	suppress	подавлять, удерживать
4395	supreme	высший,  верховный
4396	sure	уверенный
4397	surf	прибой
4398	surface	поверхность
4399	surge	волна, всплеск, вздыматься
4400	surgery	хирургия, операция
4401	surpass	превзойти
4402	surplus	избыток, излишек (экон.)
4403	surprise	удивлять, удивление
4404	surrender	сдаваться, капитулировать
4405	surround	окружать
4406	surveillance	наблюдение
4407	survey	обзор, исследование
4408	survive	выжить
4409	susceptible	восприимчивый, подверженный
4410	suspect	подозревать, подозреваемый
4411	suspend	приостановить, подвесить
4412	suspicious	подозрительный
4413	sustain	поддерживать
4414	swallow	проглатывать, глоток
4415	swamp	болото, топь
4416	swan	лебедь
4417	swap	менять, обмен
4418	swarm	рой, роиться, толпиться
4419	sway	раскачивать
4420	swear	клясться
4421	swear	ругаться
4422	sweat	пот, потеть
4423	sweep	размах, охват
4424	sweep (swept, swept)	подметать
4425	sweetheart	возлюбленный (ая), милый
4426	swell (swelled, swollen)	раздуваться, распухать
4427	swift	быстрый, скорый
4428	swing (swung, swung)	качать, махать
4429	swirl	кружить, вихрь, водоворот
4430	switch	переключать, переключатель
4432	sword	меч
4433	syllable	слог
4434	symbol	символ
4435	sympathy	сочуствие
4436	syringe	шприц
4437	table	таблица
4438	tablet	плитка, пластина
4439	tack	канцелярская кнопка, гвоздик
4440	tack	курс, линия поведения
4441	tackle	принадлежности, снаряжение
4442	tackle	взяться за что-л.
4443	tag	этикетка, ярлык
4444	tail	хвост
4445	tailor	портной, кроить
4446	taint	загрязнить, испортить
4447	take	воспринимать
4448	take a look	взглянуть
4449	take a walk	прогуляться
4450	take aback	ошеломить
4451	take advantage of	воспользоваться
4452	take after	быть в (родителей)
4453	take apart	разбирать
4454	take away	отнять
4455	take care	позаботиться, заняться
4456	take down	записать
4457	take in	понять, вникнуть
4458	take off	снять
4459	take off	взлететь
4460	take on	соревноваться, столкнуться
4461	take on	набрать (напр. рабочих)
4462	take over	принять обязанности
4463	take part	принимать участие
4464	take place	происходить, бывать
4465	take up	заняться чем-либо
4466	talk into	уговорить
4467	talk over	обговорить
4468	talk smb out	отговорить
4469	tall	высокий (чел)
4470	tally	подсчитывать, подсчёт, итог
4471	tame	ручной, приручать
4472	tan	загар, загорать
4473	tangible	осязаемый
4474	tangle	запутывать
4475	tank	бак
4476	tap	стучать
4477	tap	кран
4478	tape	лента, записывать на ленту
4479	tar	смола
4480	target	цель, мишень
4481	tart	пирог, обычно фруктовый
4482	task	задание, задача
4483	taste	вкус, иметь вкус
4484	tattered	оборванный
4485	taunt	насмехаться, насмешка
4486	tax	налог
4487	team	команда, бригада
4488	tear	слеза
4489	tear (tore, torn)	рвать
4490	tease	дразнить
4491	tedious	утомительный, нудный
4492	teenage	возраста 1-19
4493	tell apart	различать
4494	tell from	отличить
4495	tell off	ругать
4496	tell on	донести на кого-то
4497	temper	характер
4498	temple	храм
4499	temple	висок
4500	temporary	временный
4501	tempt	искушать
4502	tenant	арендатор
4503	tend	иметь склонность
4504	tend	ухаживать
4505	tender	нежный
4506	tense	напряжённый, напрягать
4507	tent	палатка, шатёр
4508	tentative	пробный, экспериментальный
4509	term	срок, период
4510	term	термин
4511	terminal	конечный, заключительный
4512	terminate	прекратить, завершить (офиц.)
4513	terms	отношения
4514	terms	условия, соглашение
4515	terrain	местность
4516	terrible	ужасный
4517	terrify	устрашать
4518	terror	ужас
4519	testament	завет, завещание
4520	testify	свидетельствовать
4521	testimony	показание, свидетельство
4522	text	писать (сообщение)
4523	thank	благодарить
4524	thaw	оттепель, оттаивать
4525	theater (theatre)	театр
4526	theft	кража
4527	theme	тема
4528	thereafter	впоследствии
4529	thereby	тем самым
4530	therefore	следовательно
4531	thermal	тепловой
4532	thick	толстый
4533	thick	густой
4534	thief (pl: thieves)	вор
4535	thigh	бедро
4536	thin	тонкий, худой
4537	think over	обдумать
4538	thirst	жажда
4539	thorn	шип, колючка
4540	thorough	основательный, полный
4541	though (even though)	хотя
4542	thought	мысль
4543	thread	нить
4544	threat	угроза
4545	threshold	порог
4546	thrift	бережливость
4547	thrill	трепет, дрожь, дрожать
4548	thrive	процветать, преуспевать
4549	throat	горло
4550	throng	толпа, толчея, толпиться
4551	throw (threw, thrown)	бросать
4552	throw away	выбрасывать
4553	throw up	блевануть
4554	thrust	сунуть, пихнуть (быстро)
4555	thud	глухой удар
4556	thug	бандит, головорез
4557	thumb	большой палец
4558	thump	колотить
4559	thunder	гром
4560	thus	таким образом, поэтому
4561	thwart	помешать, сорвать
4562	tick	галочка, поставить галочку
4563	tick	клещ
4564	ticket	билет, талон
4565	tickle	щекотать
4566	tide	волна, поток, прилив
4567	tidy	опрятный, аккуратный
4568	tie	галстук, завязка и т.п.
4569	tie	связывать, завязывать
4570	tied up	занятый
4571	tier	ярус
4572	tight	тугой, тесный
4573	tile	плитка, черепица
4574	tilt	наклонять, наклон
4575	timber	древесина, лесоматериалы
4576	timely	своевременный
4577	timetable	расписание
4578	timid	робкий, пугливый
4579	tin	олово или жесть
4580	tinker with	возиться, пытаться сделать
4581	tint	оттенок
4582	tiny	крошечный
4583	tip	кончик, верхушка
4584	tip	совет, рекомендация
4585	tip (tips)	чаевые
4586	tip smb off	предупредить, секретно сообщить
4587	tire (tyre)	шина
4588	tired	усталый
4589	tissue	ткань
4590	tissue	бумажная салфетка
4591	title	заголовок
4592	toddler	малыш (1- года)
4593	toe	палец (ноги)
4594	toil	тяжело трудиться
4595	token	знак, признак, маркер
4596	tolerate	терпеть
4597	toll	плата, пошлина, тариф
4598	tomb	надгробие, склеп
4599	tongue	язык
4600	tool	инструмент
4601	tooth (pl: teeth)	зуб
4602	topic	тема, предмет обсуждения
4603	topple	опрокинуть(ся)
4604	tops	самое большое
4605	torch	факел, горелка
4606	torment	мучение
4607	torture	пытка, мучить
4608	toss	бросать
4609	total	полный, всеобщий
4610	touch	связь, контакт
4611	touch	касаться, прикосновение
4612	tough	жёсткий, крепкий, тяжёлый
4613	tournament	турнир
4614	tout	рекламировать, нявязывать
4615	tow	буксир или эвакуатор, буксировать
4616	toward (towards)	по направлению к
4617	towel	полотенце
4618	tower	башня, возвышаться
4619	toy with	подумывать о ч-л
4620	trace	след, отслеживать
4621	track	след, выслеживать
4622	track down	разыскать, отследить
4623	trade	торговля, торговый
4624	traffic light	светофор
4625	trail	след, тропа
4626	train	поезд
4627	train	тренировать
4628	trait	черта, характеристика
4629	traitor	изменник
4630	tram	трамвай
4631	tramp	бродяга
4632	tranquil	спокойный
4633	transcend	преодолеть (пределы)
4634	transcript	расшифровка, текст
4635	transfer	перевести, перевод
4636	transition	переход
4637	transmit	передавать, переносить
4638	transparent	прозрачный
4639	trap	ловушка, ловить
4640	trash	мусор
4641	tray	лоток, поднос, поддон
4642	treachery	предательство, вероломство
4643	tread	ступать, шагать
4644	treasure	сокровище
4645	treat	обращаться, иметь дело
4646	treaty	договор (между гос-вами)
4647	trek	поход, переход
4648	tremble	дрожать
4649	tremendous	громадный, страшный
4650	trench	траншея
4651	trial	испытание, пробный
4652	trial	судебный процесс
4653	triangle	треугольник
4654	tribe	племя
4655	tribute	дань
4656	trick	трюк, фокус, уловка
4657	trickle	струйка, капать, сочиться
4658	trigger	спусковой крючок
4659	trim	подстригать, обрезать, ровнять
4660	trip	поездка
4661	triple	тройной
4662	troop	отряд
4663	trophy	трофей, приз
4664	troublesome	хлопотный, беспокойный
4665	trousers	брюки
4666	trout	форель
4667	truck	грузовик
4668	trump	козырь
4669	trumpet	труба
4670	trunk	багажник
4671	trunk	ствол дерева
4672	trunk	чемодан, сундук
4673	trust	доверять
4674	try on	примерить
4675	try out	испытать
4676	tub	ванна, бадья
4677	tube	тюбик
4678	tube	труба
4679	tube	метро (в Лондоне)
4680	tuck	подоткнуть, заправить и т. д.
4681	tug	тянуть, рывок
4682	tuition	обучение, плата за обучение
4683	tumble	перевернуться, кувыркнуться
4684	tumor (tumour)	опухоль
4685	tuna	тунец
4686	tune	мелодия, мотив
4687	tune	настраивать
4688	turkey	индейка, индюк
4689	turmoil	смятение, беспорядок
4690	turn	очередь, смена
4691	turn away	не пустить
4692	turn down	отказаться от предложения
4693	turn into	превращать (ся)
4694	turn off	выключить
4695	turn off	свернуть (с дороги)
4696	turn on	включить
4697	turn on	заводить, возбуждать
4698	turn out	оказаться
4699	turn over	перевернуть
4700	turn up	сделать погромче
4701	turnover	оборот (экон.)
4702	turtle	черепаха
4703	tutor	репетитор, преподаватель
4704	tweak	доделать, настроить (разг.)
4705	twig	прут, веточка
4706	twilight	сумерки
4707	twin	близнец
4708	twinkle	блеск, мерцание
4709	twirl	вертеть
4710	twist	скручивать
4711	twitch	дёргаться
4712	type	печатать, набирать текст
4713	ugly	безобразный, уродливый
4714	ultimate	окончательный, конечный
4715	umbrella	зонтик
4716	unanimous	единогласный
4717	unbelievable	невероятный
4718	uncle	дядя
4719	undergo	пройти через, подвергнуться
4720	underground	подземный
4721	underlie	лежать в основе
4722	underline	подчеркивнуть
4723	undermine	подрывать
4724	underneath	под
4725	underpants	трусы
4726	underscore	нижнее подчеркивание
4727	undertake	предпринимать
4728	underwear	нижнее белье
4729	undo	расстёгнуть, развязать, открыть
4730	union	союз
4731	unique	уникальный
4732	unit	единица, элемент
4733	unite	объединять
4734	universe	вселенная
4735	unless	если не
4736	upcoming	предстоящий, наступающий
4737	update	обновлять, обновление
4738	uphill	в гору
4739	uphold	соблюдать, поддерживать
4740	upper	верхний
4741	upright	вертикальный, стоячий
4742	upright	честный
4743	uprising (rising)	восстание
4744	upset	расстраивать, расстроенный
4745	upside down	вверх ногами
4746	up-to-date	современный, актуальный
4747	upwards (upward)	вверх
4748	urban	городской
4749	urge	побуждать, гнать и т.д.
4750	urgent	срочный
4751	usage	применение
4752	used to	когда-то бывало
4753	useful	полезный
4754	utility	полезность
4755	utilize	использовать
4756	utter	полный, абсолютный
4757	utter	издать, произнести
4758	vacation	отпуск, каникулы
4759	vague	смутный
4760	vain	тщеславный, самолюбивый
4761	vain	напрасный, безрезультатный
4762	valid	действительный
4763	valley	долина
4764	value	ценность, оценивать
4765	valve	задвижка, вентиль
4766	van	фургон
4767	vanish	исчезнуть
4768	vapor	пар
4769	variety	разнообразие, множество
4770	various	разнообразный
4771	varnish	лак, лакировать
4772	vary	меняться, разниться
4773	vase	ваза
4774	vast	просторный, простор
4775	vault	свод, небосвод
4776	vault	хранилище, об. в подвале
4777	veer	резко свернуть
4778	vegetable	овощ
4779	vegetation	растительность
4780	vehicle	транспортное средство
4781	veil	вуаль, закрывать
4782	vein	вена
4783	velocity	быстрота перемещения
4784	velvet	бархат
4785	vendor	продавец, торговец
4786	vengeance	отмщение
4787	vent	выход, отдушина
4788	venture	авантюра, предприятие, решиться
4789	verb	глагол
4790	verge	обочина
4791	verge	грань, предел
4792	verify	проверить
4793	versatile	универсальный, разносторонний
4794	verse	стих
4795	vessel	сосуд
4796	vessel	судно
4797	vest	жилет
4798	via	через
4799	viable	жизнеспособный
4800	vice	порок, недостаток
4801	vice versa	(и) наоборот
4802	vicinity	окрестность, близость
4803	vicious	злобный, жестокий
4804	victim	жертва
4805	view	вид, взгляд
4806	vigil	дежурство, бдение
4807	vigor	сила, энергия, здоровье
4808	village	деревня
4809	villain	негодяй
4810	vine	виноград (растение)
4811	vinegar	уксус
4812	violate	нарушать
4813	violent	яростный, жестокий
4814	violet	фиолетовый
4815	violin	скрипка
4816	virgin	девственница, дева
4817	virtual	действительный, фактический
4818	virtue	достоинство, добродетель
4819	visible	видимый
4820	vision	зрение или видение
4821	visit	посетить, посещение
4822	vital	жизненный, жизненно важный
4823	vivid	яркий
4824	vocabulary	словарный запас
4825	vocation	призвание или профессия
4826	void	недействительный, пустой
4827	volatile	изменчивый, нестабильный
4828	volume	громкость
4829	volume	том, книга
4830	volume	объём
4831	voluntary	добровольный
4832	vomit	рвота, блевать
4833	vote	голосовать
4834	vow	клятва, торжественное обещание
4835	voyage	путешествие, рейс
4836	vulnerable	уязвимый, чувствительный
4837	wad	комок или пачка (денег)
4838	wade	брод, переходить вброд
4839	waffle	вафля, вафельный
4840	wag	махать, вилять
4841	wage	заработок, оплата
4842	wail	вопить, вопль
4843	waist	талия
4844	waiter	официант
4845	waive	отказаться, воздержаться от
4846	wake (up)	просыпаться или будить
4847	wallet	бумажник
4848	wallpaper	обои
4849	walnut	грецкий орех
4850	wander	бродить, блуждать
4851	wane	убывать
4852	ward	палата, отделение, камера
4853	ward	округ, район
4854	ward off	предотвратить, отогнать
4855	warden	смотритель, надзиратель
4856	wardrobe	шкаф, гардероб
4857	warehouse	склад
4858	warfare	военные действия
4859	warmth	тепло
4860	warn	предостерегать
4861	warp	деформироваться
4862	warrant	гарантировать, ручаться
4863	warrior	воин
4864	wary	осторожный, настороженный
4865	wash down	запивать
4866	wash up	умыться
4867	wash up	помыть посуду
4868	waste	отходы, обрезки, потери и т.п.
4869	waste	тратить (впустую)
4870	watch	часы (наручные)
4871	watchful	бдительный
4872	water down	разбавить, ослабить
4873	watercolor	акварель
4874	waterfall	водопад
4875	wave	волна
4876	wave	махать, колебаться
4877	waver	дрогнуть
4878	wax	воск
4879	way	способ
4880	weak	слабый
4881	wealth	богатство
4882	weapon	оружие
4883	wear	надевать, носить
4884	wear off	сойти на нет, выветриться
4885	wear out	измотать, истрепать
4886	weary	утомленный
4887	weave	плести, ткать
4888	wedding	свадьба
4889	wedge	клин, клиновидный
4890	weed	сорняк, пропалывать
4891	weep	рыдать
4892	weigh	весить
4893	weight	вес
4894	weird	нереальный, странный
4895	welcome	желанный, приятный
4896	weld	сварка, сваривать
4897	welfare	пособие, мат. помощь
4898	welfare	благополучие
4899	well	колодец
4900	well-being	благополучие
4901	well-off	обеспеченный
4902	west	запад
4903	wet	мокрый, мочить
4904	whack	удар, сильно бить
4905	whale	кит
4906	whatsoever	совсем (не)
4907	wheat	пшеница
4908	wheel	колесо
4909	whereabouts	местонахождение
4910	whereas	тогда как
4911	whereby	посредством чего
4912	whether	ли
4913	whim	каприз, прихоть
4914	whine	ныть, скулить
4915	whip	кнут, хлестать
4916	whirl	вихрь, кружиться
4917	whisk	сделать быстрое движение
4918	whisper	шептать
4919	whistle	свист, свистеть, свисток
4920	whiz	ловкач, умелец (в области)
4921	whiz	просвистеть, пронестись
4922	whole	весь, целый
4923	wholesale	опт
4924	whore	шлюха
4925	wicked	злобный, безнравственный
4926	wide	широкий, просторный
4927	widespread	распространенный
4928	widow	вдова
4929	width	ширина
4930	wield	владеть, управляться
4931	wiggle	шевелить
4932	wilderness	глушь, дикая местность
4933	wildlife	дикая природа
4934	will	воля, желание
4935	willow	ива
4936	wince	поморщиться, поёжиться
4937	wind (wound, wound)	наматывать, виться, петлять
4938	wind up	заканчивать
4939	windowpane	оконное стекло
4940	wine	вино
4941	wink	подмигивать
4942	wipe	вытирать, салфетка
4943	wipe out	уничтожить
4944	wire	проволока, провод
4945	wise	мудрый
4946	wit	ум, остроумие
4947	witch	ведьма
4948	withdraw	отводить, убирать
4949	wither	увянуть, засохнуть
4950	withhold	утаивать, удерживать
4951	within	в течение
4952	within	в пределах, внутри
4953	withstand	выдерживать
4954	witness	свидетель
4955	wizard	волшебник
4956	wobble	качаться, шататься
4957	woe	горе
4958	wonder	удивление, удивляться
4959	wonder	хотеть знать
4960	woo	ухаживать, добиваться
4961	wood	древесина, лес
4962	wool	шерсть, шерстяной
4963	work out	тренироваться
4964	work out	получиться, сработать
4965	workshop	мастерская, студия
4966	worldwide	всемирный
4967	worm	червь
4968	worry	волновать (ся)
4969	worsen	ухудшать
4970	worship	почитать, поклоняться
4971	worth	стоимость, стоящий
4972	worthwhile	стоящий
4973	wound	рана, ранить
4974	wrap	заворачивать
4975	wrath	ярость
4976	wreath	венок
4977	wreck	разрушать, крушение, развалина
4978	wrench	гаечный ключ
4979	wrestle	бороться
4980	wretched	жалкий, несчастный
4981	wrinkle	морщина, сморщиваться
4982	wrist	запястье
4983	write out	выписать (документ)
4984	wrong	не тот
4985	wrongdoing	проступок, правонарушение
4986	yacht	яхта
4987	yank	дергать
4988	yard	двор
4989	yawn	зевать
4990	yearn	тосковать, жаждать
4991	yell	кричать, вопить
4992	yet	пока ещё (отриц.)
4993	yet	всё же
4994	yield	уступать
4995	yield	приносить (доход)
4996	youngster	юноша, ребёнок
4997	youth	молодёжь, молодость
4998	zeal	рвение, усердие
4999	zipper	молния (застёжка)
5000	zoo	зоопарк
\.


--
-- TOC entry 3474 (class 0 OID 16393)
-- Dependencies: 215
-- Data for Name: ilya_smolin_days_words_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ilya_smolin_days_words_list (words_eng, words_rus) FROM stdin;
field	поле, область
ray	луч
crate	ящик
craft	ремесло, мастерство
constraint	ограничение
\.


--
-- TOC entry 3475 (class 0 OID 16398)
-- Dependencies: 216
-- Data for Name: ilya_smolin_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ilya_smolin_info (categories, total_quantity_of_words) FROM stdin;
\N	5
Слова для IT	\N
5000 самых употребляемых слов	\N
\.


--
-- TOC entry 3476 (class 0 OID 16403)
-- Dependencies: 217
-- Data for Name: ilya_smolin_repetition_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ilya_smolin_repetition_list (words_eng, words_rus, words_count) FROM stdin;
hello	привет 	5
feature	характеристика, особенность, функция	5
check on	проверить, что всё норм	5
wash down	запивать	5
obsolete	устаревший, редко используемый	5
strictly speaking	строго говоря	5
/lera	/ лера 	5
constitute	составлять, образовывать	5
comprehensive	всесторонний	5
inclusive	включительно	5
chief	вождь, начальник, главный	5
response	ответ, реакция	3
worsen	ухудшать	5
entire	весь, целый	5
polymorphism	полиморфизм	5
fleet	флот	1
comprehend	постигать	2
necessary	необходимый	1
get off with	отделаться чем-либо	5
benefit	польза, преимущество	2
flop	провал, неудача	2
привет 	hello	2
привет	hey 	2
хорошо	good 	2
Начать учить это слово	Начать учить это слово	2
Начать учить это слово	Начать учить это слово	2
Начать учить это слово	Начать учить это слово	2
define	определять	2
revert	возвращаться	4
rudimentary	элементарный	5
stress	подчеркнуть, заострить внимание	5
garbage	мусор (особ. пищевой)	5
denote	обозначать	1
envy	зависть	1
forgo	воздерживаться	5
fiddle	играть	1
therefore	поэтому	5
catch on	становиться популярным	4
thought	мысль	2
explanation	объяснение	2
sequentially	последовательно	2
dangle	dangle	2
cumbersome	cumbersome	2
lane	lane	2
loop	loop	2
permission	permission	2
native	native	2
excuse	excuse	2
piece	piece	2
property	property	2
roadside	обочина, придорожный	3
viz.	то есть	1
retrieving	извлечение, восстановление	3
previous	предыдущий	1
explicitly	явно	1
sit out	высидеть	1
ceiling	потолок, перекрытие	1
elicit	добиться, извлечь	1
issue	проблема, выпуск	1
defence	защита	1
настройки	settings 	1
настройки	settings 	1
eradicate	уничтожать	1
embodiment	воплощение	4
главное меню	main menu 	1
preliminary	предварительный	1
excerpt	выборка, извлекать	1
главное меню	main menu 	1
изменить количество слов в день	change the number of words per day 	1
mankind	человечество	1
привет 	hello	1
precise	точный, четкий	1
\.


--
-- TOC entry 3477 (class 0 OID 16408)
-- Dependencies: 218
-- Data for Name: ilya_smolin_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ilya_smolin_words (words_eng, words_rus, words_count, last_repetition_time) FROM stdin;
class	класс	6	2022-12-27 12:32:00
descendant	потомок	6	\N
ensure	гарантировать, убеждаться	6	\N
sparingly	экономно	6	\N
hello	привет 	5	2022-12-14 02:55:00
current	текущий, действующий	6	\N
ludicrous	нелепый, смехотворный	6	\N
thus	следовательно, таким образом	6	\N
quiet	тихий, спокойный, тишина	6	\N
attachment	присоединение	6	\N
performance	производительность, выполнение	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
vulnerability	уязвимость	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
Я уже знаю это слово	Я уже знаю это слово	6	\N
thoroughly	thoroughly	6	\N
dad 	папа	6	2022-12-27 12:32:00
timestamp	метка времени	6	\N
feature	характеристика, особенность, функция	5	2022-12-10 06:16:00
check on	проверить, что всё норм	5	2022-12-11 20:15:00
password	пароль	6	\N
gates	ворота	6	\N
wash down	запивать	5	2022-12-13 23:45:00
obsolete	устаревший, редко используемый	5	2022-12-10 06:16:00
strictly speaking	строго говоря	5	2022-12-10 06:16:00
/lera	/ лера 	5	2022-12-10 06:16:00
constitute	составлять, образовывать	5	2022-12-10 06:16:00
comprehensive	всесторонний	5	2022-12-10 06:16:00
inclusive	включительно	5	2022-12-10 14:11:00
chief	вождь, начальник, главный	5	2022-12-10 06:19:00
response	ответ, реакция	3	2022-12-09 07:55:00
worsen	ухудшать	5	2022-12-10 14:11:00
entire	весь, целый	5	2022-12-10 14:11:00
polymorphism	полиморфизм	5	2022-12-10 14:11:00
malicious	вредоносный	6	2022-12-22 00:48:00
solution	решение	6	\N
closure	закрытие	6	\N
essentially	по сути	6	\N
mandatory	mandatory	6	\N
manage	manage	6	\N
ring (rang, rung)	ring (rang, rung)	6	\N
invocation	invocation	6	\N
anguish	anguish	6	\N
pollute	pollute	6	\N
fortunately	fortunately	6	\N
robust	robust	6	\N
steam	steam	6	\N
layout	layout	6	\N
ambiguity	неоднозначность	6	\N
fleet	флот	1	2022-12-05 06:13:27
comprehend	постигать	2	2022-12-05 07:14:00
free	свободный, бесплатный	6	\N
necessary	необходимый	1	2022-12-05 06:16:03
get off with	отделаться чем-либо	5	2022-12-10 06:16:00
benefit	польза, преимущество	2	2022-12-05 07:16:00
flop	провал, неудача	2	2022-12-05 07:16:00
привет 	hello	2	2022-12-05 07:16:00
привет	hey 	2	2022-12-05 07:16:00
хорошо	good 	2	2022-12-05 07:16:00
Начать учить это слово	Начать учить это слово	2	2022-12-05 07:16:00
Начать учить это слово	Начать учить это слово	2	2022-12-05 07:16:00
Начать учить это слово	Начать учить это слово	2	2022-12-05 07:16:00
define	определять	2	2022-12-05 07:16:00
revert	возвращаться	4	2022-12-06 06:16:00
rudimentary	элементарный	5	2022-12-10 06:16:00
stress	подчеркнуть, заострить внимание	5	2022-12-10 06:16:00
garbage	мусор (особ. пищевой)	5	2022-12-10 06:16:00
denote	обозначать	1	2022-12-05 06:18:55
validation	проверка	6	\N
multiply	умножать или размножаться	6	\N
envy	зависть	1	2022-12-05 06:19:04
forgo	воздерживаться	5	2022-12-10 06:19:00
fiddle	играть	1	2022-12-05 12:45:47
boilerplate	шаблон	6	\N
therefore	поэтому	5	2022-12-10 14:11:00
catch on	становиться популярным	4	2022-12-07 03:52:00
thought	мысль	2	2022-12-06 04:55:00
explanation	объяснение	2	2022-12-06 04:56:00
sequentially	последовательно	2	2022-12-06 04:57:00
dangle	dangle	2	2022-12-06 04:57:00
cumbersome	cumbersome	2	2022-12-06 04:58:00
lane	lane	2	2022-12-06 04:58:00
loop	loop	2	2022-12-06 05:00:00
permission	permission	2	2022-12-06 05:00:00
native	native	2	2022-12-06 05:00:00
excuse	excuse	2	2022-12-06 05:00:00
piece	piece	2	2022-12-06 05:00:00
property	property	2	2022-12-06 05:00:00
roadside	обочина, придорожный	3	2022-12-09 09:13:00
viz.	то есть	1	2022-12-05 14:10:26
terrible	ужасный	6	\N
retrieving	извлечение, восстановление	3	2022-12-05 19:10:00
previous	предыдущий	1	2022-12-05 14:10:42
explicitly	явно	1	2022-12-05 14:10:43
sit out	высидеть	1	2022-12-05 14:10:44
ceiling	потолок, перекрытие	1	2022-12-05 14:10:46
elicit	добиться, извлечь	1	2022-12-05 14:10:47
template	шаблон	6	\N
issue	проблема, выпуск	1	2022-12-05 14:14:06
probably	возможно	6	\N
defence	защита	1	2022-12-06 03:53:40
настройки	settings 	1	2022-12-06 16:36:59
настройки	settings 	1	2022-12-06 16:37:31
eradicate	уничтожать	1	2022-12-06 20:15:06
definition	определение	6	\N
embodiment	воплощение	4	2022-12-07 20:15:00
главное меню	main menu 	1	2022-12-06 20:15:33
indispensable	обязательный	6	\N
preliminary	предварительный	1	2022-12-09 02:54:07
folly	глупость, безумие	6	\N
deploy	развёртывать	6	\N
sale	продажа, сбыт	6	\N
stun	ошеломить, оглушить	6	\N
mention	упоминание	6	\N
excerpt	выборка, извлекать	1	2022-12-09 03:01:28
главное меню	main menu 	1	2022-12-09 03:03:18
изменить количество слов в день	change the number of words per day 	1	2022-12-09 03:20:51
amount	количество	6	\N
restriction	ограничение	6	\N
keep on	продолжать делать	6	\N
mankind	человечество	1	2022-12-09 04:13:47
привет 	hello	1	2022-12-09 04:52:40
introduce	представлять	6	\N
precise	точный, четкий	1	2022-12-12 00:48:55
pros and cons	за и против	6	\N
\.


--
-- TOC entry 3478 (class 0 OID 16413)
-- Dependencies: 219
-- Data for Name: matvata_days_words_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matvata_days_words_list (words_eng, words_rus) FROM stdin;
\.


--
-- TOC entry 3479 (class 0 OID 16418)
-- Dependencies: 220
-- Data for Name: matvata_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matvata_info (categories, total_quantity_of_words) FROM stdin;
\N	5
1000 самых употребляемых слов	\N
\.


--
-- TOC entry 3480 (class 0 OID 16423)
-- Dependencies: 221
-- Data for Name: matvata_repetition_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matvata_repetition_list (words_eng, words_rus, words_count) FROM stdin;
\.


--
-- TOC entry 3481 (class 0 OID 16428)
-- Dependencies: 222
-- Data for Name: matvata_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matvata_words (words_eng, words_rus, words_count, last_repetition_time) FROM stdin;
\.


--
-- TOC entry 3482 (class 0 OID 16433)
-- Dependencies: 223
-- Data for Name: most_used_it_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.most_used_it_words (id, words_eng, words_rus) FROM stdin;
1	class	класс
2	variable	переменная
3	example	пример
4	folder	папка
5	property	свойство
6	versatile	многофункциональный, универсальный
7	maintenance	поддержка
8	explanation	объяснение
9	experience	опыт, случай
10	theme	тема
11	separate	отдельный, разделять
12	bundle	пакет
13	feature	характеристика, особенность, функция
14	response	ответ, реакция
15	in particular	в частности
16	chapter	глава
17	simple	простой
18	precise	точный, четкий
19	current	текущий, действующий
20	useless	бесполезный
21	allow	разрешать, допускать
22	fiddle	играть
23	perform	выполнять
24	explicitly	явно
25	especially	особенно, главным образом
26	previous	предыдущий
27	thoroughly	тщательно, полно
28	scheme	схема, план
29	field	поле, область
30	necessary	необходимый
31	therefore	поэтому
32	string	строка
33	definition	определение
34	implement	реализация, внедрение
35	for simplicity	для простоты
36	thus	следовательно, таким образом
37	strictly speaking	строго говоря
38	blatant	явный
39	assignment	задание, присвоение
40	defence	защита
41	prohibit	запрещать, препятствовать
42	invocation	просьба, вызов
43	revert	возвращаться
44	credentials	учетные данные
45	appropriate	адаптировать, соответствовать
46	fortunately	к счастью
47	persistent	постоянный, стойкий
48	constraint	ограничение
49	comprehensive	всесторонний
50	stuff	материал, наполнять
51	layout	макет, разметка
52	guest	гость
53	rudimentary	элементарный
54	suffice	удовлетворять, быть достаточным
55	anyway	в любом случае
56	introduce	представлять
57	mention	упоминание
58	although	хотя, если бы даже
59	validation	проверка
60	boilerplate	шаблон
61	password	пароль
62	correspond	переписывать, соответствовать
63	conclude	завершать, заканчиваться
64	closure	закрытие
65	cumbersome	тяжелый, громоздкий
66	briefly	в двух словах, кратко
67	probably	возможно
68	forbid	запрещать
69	template	шаблон
70	encapsulation	инкапсуляция
71	inheritance	наследование
72	polymorphism	полиморфизм
73	reference	ссылка
74	exception	исключение
75	namespace	пространство имен
76	performance	производительность, выполнение
77	predefine	предопределять
78	selection	выделение, выбор
79	requirement	требование
80	request	запрос
81	sign up	зарегистрироваться
82	overloading	перегрузка
83	loop	цикл
84	function	функция
85	newbie	новичок
86	bugbear	проблема
87	button	кнопка
88	network	сеть
89	execute	выполнять, запускать
90	benefit	польза, преимущество
91	purpose	цель
92	descendant	потомок
93	denote	обозначать
94	deny	отказывать
95	permission	разрешение, полномочия
96	assumption	предположение
97	afterwards	впоследствии, позже
98	preliminary	предварительный
99	consecutive	подряд, последовательный
100	breakdown	анализ, отказ, крах
101	excerpt	выборка, извлекать
102	elaborate	разрабатывать, конкретизировать
103	column	столбец, колонка
104	hinder	препятствовать
105	concise	лаконичный
106	prerequisite	предпосылка
107	restriction	ограничение
108	relieve	помогать, освобождать
109	solution	решение
110	embodiment	воплощение
111	misleading	вводить в заблуждение
112	clunky	неуклюжий
113	settings	настройки
114	utilize	использовать
115	essentially	по сути
116	bind	связывать
117	reset	сброс
118	single quotes	одинарные кавычки
119	omit	опускать
120	robust	устойчивый
121	ensure	гарантировать, убеждаться
122	setup	устанавливать
123	mandatory	обязательный
124	intervene	вмешиваться
125	sake	польза
126	batch	пакет, комплектовать
127	acquire	приобретать
128	switch	переключать
129	bottleneck	узкое место
130	obsolete	устаревший, редко используемый
131	amount	количество
132	enormous	огромный
133	issue	проблема, выпуск
134	bootstrap	загружать
135	enhancement	улучшение, усиление
136	free	свободный, бесплатный
137	indispensable	обязательный
138	ability	способность, возможность
139	attachment	присоединение
140	pros and cons	за и против
141	vulnerability	уязвимость
142	integer	целое число
143	in alphabetical order	в алфавитном порядке
144	timestamp	метка времени
145	viz.	то есть
146	assemble	собирать
147	as already mentioned	как уже упоминалось
148	truly	истинно
149	tweaking	тонкая настройка
150	sparingly	экономно
151	exhaustive	исчерпывающий
152	middleman	посредник
153	wrapper	обертка, оболочка
154	inclusive	включительно
155	malicious	вредоносный
156	pertain	принадлежать
157	blurring	нечеткость, размытие
158	guess	догадаться
159	hitch	помеха
160	sequentially	последовательно
161	retrieving	извлечение, восстановление
162	clause	условие
163	fetch	выборка, извлекать
164	ambiguity	неоднозначность
165	from the ground up	c нуля
166	comprehend	постигать
167	significant	важный
168	forgo	воздерживаться
169	eradicate	уничтожать
170	desirable	желательный
171	the crucial part	ключевая роль
172	delve into the details	копаться в деталях
173	the goal is to create a database schema	цель - создать схему данных
174	saving you lots of time and energy	значительная экономия ваших сил и времени
\.


--
-- TOC entry 3483 (class 0 OID 16438)
-- Dependencies: 224
-- Data for Name: none_days_words_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.none_days_words_list (words_eng, words_rus) FROM stdin;
brave	смелый
correct	правильный, исправлять
persistent	постоянный, стойкий
tail	хвост
consecutive	подряд, последовательный
hinder	препятствовать
defence	защита
delve into the details	копаться в деталях
single quotes	одинарные кавычки
a guest	гость
\.


--
-- TOC entry 3484 (class 0 OID 16443)
-- Dependencies: 225
-- Data for Name: none_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.none_info (categories, total_quantity_of_words) FROM stdin;
\N	10
1000 самых употребляемых слов	\N
5000 самых употребляемых слов	\N
Слова для IT	\N
\.


--
-- TOC entry 3485 (class 0 OID 16448)
-- Dependencies: 226
-- Data for Name: none_repetition_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.none_repetition_list (words_eng, words_rus, words_count) FROM stdin;
\.


--
-- TOC entry 3486 (class 0 OID 16453)
-- Dependencies: 227
-- Data for Name: none_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.none_words (words_eng, words_rus, words_count, last_repetition_time) FROM stdin;
a husband	муж	6	\N
brave	смелый	1	2022-12-03 01:48:27
his/him	его/ему	6	\N
strike (struck, struck)	бить, удар	6	\N
tail	хвост	1	2022-12-03 01:55:33
adultery	прелюбодеяние, неверность	6	\N
hinder	препятствовать	1	2022-12-03 01:55:39
defence	защита	1	2022-12-03 01:57:42
delve into the details	копаться в деталях	1	2022-12-03 01:57:54
single quotes	одинарные кавычки	1	2022-12-03 01:58:04
a guest	гость	1	2022-12-03 01:58:11
\.


--
-- TOC entry 3487 (class 0 OID 16458)
-- Dependencies: 228
-- Data for Name: okkruglov_days_words_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.okkruglov_days_words_list (words_eng, words_rus) FROM stdin;
hardly	едва
hustle	нечестно добыть (амер.)
slab	плита, блок
bandage	повязка
fortune	счастье, удача, судьба
faraway	далёкий
freshen up	освежить(ся)
wealth	богатство
seal	печать, запечатывать
strew (strewn, strewn)	разбрасывать
hand down	передать (по наследству)
run out of	исчерпать запас
flock	стадо, стая
bachelor	холостяк
testament	завет, завещание
scour	обыскать, прочесать
make of	извлечь, получить
hack	рубить, кромсать
fill in	заполнить
worship	почитать, поклоняться
\.


--
-- TOC entry 3488 (class 0 OID 16463)
-- Dependencies: 229
-- Data for Name: okkruglov_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.okkruglov_info (categories, total_quantity_of_words) FROM stdin;
\N	20
5000 самых употребляемых слов	\N
\.


--
-- TOC entry 3489 (class 0 OID 16468)
-- Dependencies: 230
-- Data for Name: okkruglov_repetition_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.okkruglov_repetition_list (words_eng, words_rus, words_count) FROM stdin;
shudder	содрогаться, дрожь	1
fascinate	очаровывать	1
hack	рубить, кромсать	1
worship	почитать, поклоняться	1
\.


--
-- TOC entry 3490 (class 0 OID 16473)
-- Dependencies: 231
-- Data for Name: okkruglov_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.okkruglov_words (words_eng, words_rus, words_count, last_repetition_time) FROM stdin;
underline	подчеркивнуть	6	\N
grief	горе	2	2022-12-03 00:15:00
adversary	противник, соперник	2	2022-12-03 00:15:00
make up	макияж, мириться 	2	2022-12-03 00:15:00
perpetual	вечный, постоянный	6	\N
shudder	содрогаться, дрожь	1	2022-12-02 23:19:36
spell	заклинание, чары	6	\N
fascinate	очаровывать	1	2022-12-02 23:19:45
catch	расслышать, уловить	6	\N
like that	так	6	\N
hack	рубить, кромсать	1	2022-12-02 23:20:15
obese	страдающий ожирением	6	\N
worship	почитать, поклоняться	1	2022-12-02 23:20:32
modest	скромный, умеренный	2	2022-12-03 00:20:00
\.


--
-- TOC entry 3491 (class 0 OID 16478)
-- Dependencies: 232
-- Data for Name: polina_dorohova_days_words_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polina_dorohova_days_words_list (words_eng, words_rus) FROM stdin;
sorry	извините (просим прощения)
thirteen	тринадцать
двигаться	to pass
положить, класть	to ride (rode – ridden)
a maiden name	девичья фамилия
\.


--
-- TOC entry 3492 (class 0 OID 16483)
-- Dependencies: 233
-- Data for Name: polina_dorohova_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polina_dorohova_info (categories, total_quantity_of_words) FROM stdin;
\N	5
1000 самых употребляемых слов	\N
\.


--
-- TOC entry 3493 (class 0 OID 16488)
-- Dependencies: 234
-- Data for Name: polina_dorohova_repetition_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polina_dorohova_repetition_list (words_eng, words_rus, words_count) FROM stdin;
that/those	тот/те	2
a lot of	много	2
\.


--
-- TOC entry 3494 (class 0 OID 16493)
-- Dependencies: 235
-- Data for Name: polina_dorohova_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.polina_dorohova_words (words_eng, words_rus, words_count, last_repetition_time) FROM stdin;
chicken	курица, цыпленок	6	\N
that/those	тот/те	2	2022-12-04 00:04:00
single	холостой/незамужняя	6	\N
bye	пока	6	\N
a police	полиция	6	\N
a lot of	много	2	2022-12-04 00:04:00
главное меню	main menu 	1	2022-12-06 16:41:34
\.


--
-- TOC entry 3495 (class 0 OID 16498)
-- Dependencies: 236
-- Data for Name: shevchenyaa_days_words_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shevchenyaa_days_words_list (words_eng, words_rus) FROM stdin;
a head	голова
their/them	их/им
salty	соленый
an iron	утюг
a pear	груша
\.


--
-- TOC entry 3496 (class 0 OID 16503)
-- Dependencies: 237
-- Data for Name: shevchenyaa_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shevchenyaa_info (categories, total_quantity_of_words) FROM stdin;
\N	5
1000 самых употребляемых слов	\N
\.


--
-- TOC entry 3497 (class 0 OID 16508)
-- Dependencies: 238
-- Data for Name: shevchenyaa_repetition_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shevchenyaa_repetition_list (words_eng, words_rus, words_count) FROM stdin;
\.


--
-- TOC entry 3498 (class 0 OID 16513)
-- Dependencies: 239
-- Data for Name: shevchenyaa_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shevchenyaa_words (words_eng, words_rus, words_count, last_repetition_time) FROM stdin;
paper	бумага	6	\N
a head	голова	1	2022-12-01 16:11:30
nineteen	девятнадцать	6	\N
salty	соленый	1	2022-12-01 16:12:06
an iron	утюг	1	2022-12-01 16:12:27
a pear	груша	1	2022-12-01 16:12:32
\.


--
-- TOC entry 3499 (class 0 OID 16518)
-- Dependencies: 240
-- Data for Name: tebaatusasulax_days_words_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tebaatusasulax_days_words_list (words_eng, words_rus) FROM stdin;
amount	количество
beautiful	красивый
all	все, весь
fifty	пятьдесят
scissors	ножницы
unite	объединять
explicitly	явно
benefit	польза, преимущество
hitch	помеха
purpose	цель
\.


--
-- TOC entry 3500 (class 0 OID 16523)
-- Dependencies: 241
-- Data for Name: tebaatusasulax_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tebaatusasulax_info (categories, total_quantity_of_words) FROM stdin;
\N	10
5000 самых употребляемых слов	\N
Слова для IT	\N
1000 самых употребляемых слов	\N
\.


--
-- TOC entry 3501 (class 0 OID 16528)
-- Dependencies: 242
-- Data for Name: tebaatusasulax_repetition_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tebaatusasulax_repetition_list (words_eng, words_rus, words_count) FROM stdin;
\.


--
-- TOC entry 3502 (class 0 OID 16533)
-- Dependencies: 243
-- Data for Name: tebaatusasulax_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tebaatusasulax_words (words_eng, words_rus, words_count, last_repetition_time) FROM stdin;
suburb	пригород	6	\N
soar	парить, взмывать (втч. о ценах)	6	\N
approve	утвердить, одобрить (офиц.)	6	\N
issue	проблема, выпуск	6	\N
purpose	цель	1	2022-12-01 02:39:41
\.


--
-- TOC entry 3503 (class 0 OID 16538)
-- Dependencies: 244
-- Data for Name: thousand_most_used_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thousand_most_used_words (id, words_eng, words_rus) FROM stdin;
1	a person (pl. people)	человек, персона
2	a man (pl. men)	мужчина
3	a woman (pl. women)	женщина
4	a child (pl. children)	ребенок
5	a boy	мальчик
6	a girl	девочка
7	a friend	друг
8	a neighbour (AmE: a neighbor)	сосед
9	a name	имя, название
10	a surname (AmE: a last name)	фамилия
11	a maiden name	девичья фамилия
12	an address	адрес
13	single	холостой/незамужняя
14	married	женатый/замужняя
15	age	возраст
16	old	старый
17	young	молодой
18	I	я
19	you	ты, вы
20	we	мы
21	they	они
22	he	он
23	she	она
24	it	оно (о неодушевленном в единственном числе)
25	my/me	мой/мне
26	your/you	твой, ваш / тебе, вам
27	our/us	наш/нам
28	their/them	их/им
29	his/him	его/ему
30	her	ее/ей
31	its/it	его, ее / ему, ей (о неодушевленном)
32	parents	родители
33	a father	отец
34	a mother (AmE: a mom, BrE: a mum)	мать
35	a husband	муж
36	a wife	жена
37	a son	сын
38	a daughter	дочь
39	a brother	брат
40	a sister	сестра
41	a grandfather	дедушка
42	a grandmother	бабушка
43	an uncle	дядя
44	an aunt	тетя
45	a nephew	племянник
46	a niece	племянница
47	a cousin	двоюродный брат/сестра
48	an arm	рука
49	a back	спина
50	a beard	борода
51	a bone	кость
52	buttocks	ягодицы
53	a cheek	щека
54	a chest	грудь
55	a chin	подбородок
56	an ear	ухо
57	an elbow	локоть
58	an eye	глаз
59	an eyebrow	бровь
60	a face	лицо
61	a finger	палец на руке
62	a foot (pl. feet)	ступня
63	a forehead	лоб
64	hair	волосы
65	a hand	кисть руки
66	a head	голова
67	a heart	сердце
68	a heel	пятка
69	a knee	колено
70	a leg	нога
71	lips	губы
72	a mouth	рот
73	a mustache	усы
74	a nail	ноготь
75	a neck	шея
76	a nose	нос
77	an organ	орган
78	a shoulder	плечо
79	skin	кожа
80	a spine	позвоночник
81	a stomach	живот, желудок
82	a throat	горло
83	a toe	палец на ноге
84	a tongue	язык
85	a tooth (pl. teeth)	зуб
86	blood	кровь
87	a bruise	синяк
88	, <td align="left" style="vertical-align: middle;" width="390">dizziness	головокружение
89	fever	жар
90	flu	грипп
91	pain	боль
92	running nose	насморк
93	a spot	пятно, точка
94	a wound	рана
95	to sneeze	чихать
96	to hurt (hurt – hurt)	ранить, повреждать
97	fit	в хорошей форме
98	healthy	здоровый
99	swollen	опухший
100	sick	больной
101	fat	толстый, жирный
102	dead	мертвый
103	positive	положительный
104	amazing	удивительный
105	beautiful	красивый
106	handsome	красивый (о мужчине)
107	brave	смелый
108	calm	спокойный
109	careful	осторожный
110	clever	умный
111	curious	любопытный
112	elegant	элегантный
113	energetic	энергичный
114	fair	справедливый, честный
115	fine	прекрасный, прекрасно
116	friendly	дружелюбный
117	good	хороший, добрый
118	happy	счастливый
119	hard-working	трудолюбивый
120	honest	честный
121	kind	добрый
122	lucky	везучий, счастливый
123	nice	милый, хороший, приятный
124	polite	вежливый
125	talented	талантливый
126	neutral	нейтральный
127	average	средний
128	boring	скучный
129	busy	занятой
130	clumsy	неуклюжий
131	dear	дорогой
132	different	другой, разный
133	difficult	трудный, тяжелый
134	easy	легкий, нетрудный
135	embarrassed	смущенный
136	famous	знаменитый
137	important	важный
138	impossible	невозможный
139	interesting	интересный
140	real	настоящий
141	rich	богатый
142	new	новый
143	modern	современный
144	negative	отрицательный
145	angry	сердитый
146	annoying	раздражающий
147	awful	ужасный, отвратительный
148	bad	плохой
149	crazy	безумный, сумасшедший
150	dangerous	опасный
151	jealous	ревнивый
152	lazy	ленивый
153	nervous	нервный
154	poor	бедный, плохой (язык, знания)
155	rude	грубый
156	an accountant	бухгалтер
157	an actor/actress	актер/актриса
158	an artist	художник
159	a boss	босс
160	a businessman (pl. businessmen)	бизнесмен
161	a chief	руководитель, главный
162	a client	клиент
163	a colleague (AmE: a co-worker)	коллега
164	a doctor	врач
165	a driver	водитель
166	an engineer	инженер
167	a flight attendant	стюардесса, бортпроводник
168	a journalist	журналист
169	a lawyer	адвокат, юрист
170	a lifeguard	спасатель
171	a mechanic	механик
172	a musician	музыкант
173	a nanny	няня
174	a nurse	медсестра
175	a pilot	пилот
176	a plumber	сантехник
177	a policeman (pl. policemen)	полицейский
178	a pupil	школьник
179	a shop assistant	продавец
180	a student	студент
181	a teacher	учитель
182	a waiter/waitress	официант/официантка
183	a worker	рабочий
184	an area	область, сфера, район
185	a case	дело
186	a circumstance	обстоятельство
187	a decision	решение
188	a duty	обязанность
189	a goal	цель
190	, <td align="left" style="vertical-align: middle;" width="390">an opportunity	возможность
191	a problem	проблема
192	a permit	разрешение (на въезд/выезд/проживание)
193	a reason	причина
194	a result	результат
195	success	успех
196	a task	задача, задание
197	a belt	пояс, ремень
198	a blouse	блузка
199	a boot	сапог, ботинок
200	a cap	кепка
201	a cardigan	кардиган, кофта
202	a coat	пальто
203	, <td align="left" style="vertical-align: middle;" width="390">a glove	перчатка
204	a hat	шляпа
205	a hood	капюшон
206	a jacket	жакет, пиджак, куртка
207	a jeans	джинсы
208	pyjamas (AmE: pajamas)	пижама
209	a scarf	шарф
210	a shirt	рубашка
211	shoes	обувь
212	shorts	шорты
213	a skirt	юбка
214	a sock	носок
215	, <td align="left" style="vertical-align: middle;" width="390">a sweater	свитер
216	a tie	галстук
217	tights	колготы
218	trainers (AmE: sneakers)	кроссовки
219	trousers (AmE: pants)	штаны
220	a T-shirt	футболка
221	an underwear	нижнее белье
222	a bracelet	браслет
223	an earring	сережка
224	glasses	очки
225	a necklace	ожерелье
226	a purse	дамская сумка, кошелек
227	a wallet	бумажник
228	red	красный
229	orange	оранжевый
230	yellow	желтый
231	green	зеленый
232	blue	голубой, синий
233	purple	фиолетовый
234	pink	розовый
235	brown	коричневый
236	black	черный
237	grey	серый
238	white	белый
239	bright	яркий
240	colourful	цветной
241	dark	темный
242	light	светлый, легкий
243	a circle	круг
244	round	округлый
245	, <td align="left" style="vertical-align: middle;" width="390">straight	прямой, ровный
246	a wheel	колесо
247	distance	расстояние
248	size	размер
249	speed	скорость
250	strength	сила
251	a lot of	много
252	many	много (с исчисляемыми существительными в отрицаниях и вопросах)
253	much	много (с неисчисляемыми существительными в отрицаниях и вопросах)
254	few	мало (с исчисляемыми существительными)
255	little	мало (с неисчисляемыми существительными)
256	less	меньше, менее
257	more	больше, более
258	some	несколько, некоторое количество (в утверждениях)
259	any	несколько, некоторое количество (в отрицаниях и вопросах), какой-нибудь
260	a pair	пара (вещей, объектов)
261	a part	часть
262	a piece	кусок, часть
263	big	большой
264	far	далекий
265	fast	быстрый, быстро
266	hard	твердый, трудный, жесткий, усердно
267	heavy	тяжелый
268	high	высокий (об объектах)
269	large	большой, просторный
270	long	длинный, долгий
271	loud	громкий
272	low	низкий, низко
273	narrow	узкий
274	near	близкий
275	noisy	шумный
276	powerful	мощный
277	quick	быстрый
278	quiet	тихий
279	short	низкий, короткий
280	again	снова
281	all	все, весь
282	almost	почти
283	each	каждый (по отдельности)
284	enough	достаточно
285	every	каждый
286	only	только
287	than	чем (в сравнениях)
288	together	вместе
289	too	тоже, слишком
290	very	очень
291	zero	ноль
292	one	один
293	two	два
294	three	три
295	four	четыре
296	five	пять
297	six	шесть
298	seven	семь
299	eight	восемь
300	nine	девять
301	ten	десять
302	eleven	одиннадцать
303	twelve	двенадцать
304	thirteen	тринадцать
305	fourteen	четырнадцать
306	fifteen	пятнадцать
307	sixteen	шестнадцать
308	seventeen	семнадцать
309	eighteen	восемнадцать
310	nineteen	девятнадцать
311	twenty	двадцать
312	thirty	тридцать
313	forty	сорок
314	fifty	пятьдесят
315	sixty	шестьдесят
316	seventy	семьдесят
317	eighty	восемьдесят
318	ninety	девяносто
319	hundred	сто
320	thousand	тысяча
321	million	миллион
322	first	первый
323	second	второй
324	third	третий
325	fourth	четвертый
326	fifth	пятый
327	a season	сезон, время года
328	winter	зима
329	spring	весна
330	summer	лето
331	autumn (AmE: fall)	осень
332	a month	месяц
333	January	январь
334	February	февраль
335	March	март
336	April	апрель
337	May	май
338	June	июнь
339	July	июль
340	August	август
341	September	сентябрь
342	October	октябрь
343	November	ноябрь
344	December	декабрь
345	a day	день
346	Monday	понедельник
347	Tuesday	вторник
348	Wednesday	среда
349	Thursday	четверг
350	Friday	пятница
351	Saturday	суббота
352	Sunday	воскресенье
353	yesterday	вчера
354	today	сегодня
355	now	сейчас, теперь
356	morning	утро
357	afternoon	день (после полудня)
358	evening	вечер
359	night	ночь
360	tonight	сегодня вечером, ночью
361	midnight	полночь
362	tomorrow	завтра
363	a second	секунда
364	a minute	минута
365	an hour	час
366	a week	неделя
367	a year	год
368	a century	век
369	ago	назад (например, 2 дня назад)
370	early	ранний, рано
371	last	последний, прошлый
372	late	поздний, поздно, опоздавший
373	next	следующий (год, неделя)
374	after	после
375	before	до
376	during	во время
377	for	для, в течение (времени)
378	since	с (определенного времени)
379	then	затем, потом, тогда
380	always	всегда
381	never	никогда
382	often	часто
383	sometimes	иногда
384	soon	скоро
385	usually	обычно
386	already	уже
387	just	только что, просто
388	yet	еще не
389	probably	вероятно
390	really	действительно
391	will	для образования будущего времени
392	a bill	счет
393	cash	наличка
394	discount	скидка
395	price	цена
396	tip	чаевые
397	cheap	дешевый
398	expensive	дорогой (о цене)
399	free	бесплатный, свободный
400	art	искусство
401	a film (AmE: a movie)	фильм
402	literature	литература
403	music	музыка
404	a photo	фото
405	a picture	картина, фотография
406	a song	песня
407	a story	история, рассказ
408	to act	, <td align="left" style="vertical-align: middle;" width="390">to build (built – built)
409	строить	to create
410	создавать	, <td align="left" style="vertical-align: middle;" width="390">to do (did – done)
411	делать	to draw (drew – drawn)
412	рисовать	to listen
413	слушать	to make (made – made)
414	делать, изготавливать	, <td align="left" style="vertical-align: middle;" width="390">to read (read – read)
415	читать	to sing (sang – sung)
416	петь	to swim (swam – swum)
417	плавать	to teach (taught – taught)
418	учить, преподавать	to write (wrote – written)
419	писать	a backpack
420	рюкзак	a bag
421	сумка	a card
422	открытка, карточка (банковская)	, <td align="left" style="vertical-align: middle;" width="390">a destination
423	пункт назначения	a luggage (AmE: a baggage)
424	багаж	a map
425	карта	a suitcase
426	чемодан	a ticket
427	билет	a bicycle
428	велосипед	a bus
429	автобус	a car
430	автомобиль	a plane
431	самолет	a ship
432	корабль	a taxi (AmE: a cab)
433	такси	a train
434	поезд	a tram (AmE: a trolley)
435	трамвай	insurance
436	страховка	to arrive
437	прибывать	to bring (brought – brought)
438	приносить	to catch (caught – caught)
439	ловить	to come (came – come)
440	приходить	to drive (drove – driven)
441	водить (транспорт)	to drop
442	ронять	to fall (fell – fallen)
443	падать	to finish
444	заканчивать	to fly (flew – flown)
445	летать	to go (went – gone)
446	идти, уезжать	to grow (grew – grown)
447	расти	to happen
448	случаться	to jump
449	прыгать	to land
450	приземляться	to leave (left – left)
451	покидать, оставлять, уходить	to move
452	двигаться	to pass
453	проходить	to pull
454	тянуть	to push
455	толкать	to put (put – put)
456	положить, класть	to ride (rode – ridden)
457	ездить верхом (на лошади, велосипеде)	to run (ran – run)
458	бежать	to stand (stood – stood)
459	стоять	to start
460	начинать	to stay
461	оставаться	to stop
462	останавливаться	to take (took – taken)
463	брать	to throw (threw – thrown)
464	бросать	to travel
465	путешествовать	to turn
466	поворачивать	to walk
467	идти пешком, гулять	to add
468	добавлять	to be (was/were – been)
469	быть	to become (became – become)
470	становиться	to begin (began – begun)
471	начинать	to break (broke – broken)
472	ломать	to buy (bought – bought)
473	покупать	to change
474	менять	to check
475	проверять	to choose (chose – chosen)
476	выбирать	to close
477	закрывать	to continue
478	продолжать	to control
479	контролировать	to cook
480	готовить	to cost (cost – cost)
481	стоить	to cut (cut – cut)
482	резать	to develop
483	развивать	to drink (drank – drunk)
484	пить	to eat (ate – eaten)
485	есть, кушать	to feed (fed – fed)
486	кормить	to find (found – found)
487	находить	to get (got – got)
488	получать, добывать	to give (gave – given)
489	давать	to have (had – had)
490	иметь, обладать	to hold (held – held)
491	держать	to keep (kept – kept)
492	хранить, продолжать	to kill
493	убивать	to live
494	жить	to look
495	выглядеть	to open
496	открывать	to order
497	заказывать	to pay
498	платить	to plan
499	планировать	to put on
500	надевать	to rest
501	отдыхать	to ring (rang – rung)
502	звенеть, звонить	to risk
503	рисковать	to save
504	спасать, сохранять	to sell (sold – sold)
505	продавать	to send (sent – sent)
506	отправлять	to shave
507	бриться	to show (showed – shown)
508	показывать	to sign
509	подписывать	to sit (sat – sat)
510	сидеть	to sleep (slept – slept)
511	спать	to smoke
512	курить	to spend (spent – spent)
513	проводить (время), тратить	to take off
514	, <td align="left" style="vertical-align: middle;" width="390">to try	пытаться
515	to use	использовать
516	to visit	посещать
517	to wait	ждать
518	to wake up (woke – woken)	просыпаться
519	to wash	мыть, стирать
520	to watch	смотреть, наблюдать
521	to wear (wore – worn)	носить (одежду)
522	to work	работать
523	yes	да
524	no	нет
525	not	не
526	hi	привет
527	hello	здравствуйте
528	sorry	извините (просим прощения)
529	excuse me	извините (просим разрешение)
530	please	пожалуйста, прошу
531	thank you	спасибо
532	you are welcome	не за что
533	bye	пока
534	maybe	может быть
535	would like to	хотелось бы (сделать что-то)
536	to agree	соглашаться
537	to answer	отвечать
538	to argue	спорить, ругаться
539	to ask	спрашивать
540	to call	звонить, звать, называть
541	to complain	жаловаться
542	to describe	описывать
543	to discuss	обсуждать
544	to disturb	беспокоить
545	to explain	объяснять
546	to fight (fought – fought)	драться
547	to forgive (forgave – forgiven)	прощать
548	to help	помогать
549	to hit (hit – hit)	ударять
550	to join	присоединяться
551	to joke	шутить
552	to lie	обманывать, врать
553	to meet (met – met)	встречать
554	to offer	предлагать
555	to protect	защищать
556	to say (said – said)	сказать
557	to share	делиться
558	to speak (spoke – spoken)	разговаривать
559	to support	поддерживать
560	to surprise	удивлять
561	to talk	разговаривать
562	to tell (told – told)	рассказывать
563	also	также
564	and	и
565	because	потому что
566	because of	из-за
567	but	но
568	if	если
569	or	или
570	so	итак, таким образом, поэтому
571	what	что, какой
572	who	кто
573	when	когда
574	where	где, куда
575	how	как, каким образом
576	why	почему, зачем
577	fear	страх
578	fun	веселье
579	passion	страсть
580	peace	мир
581	pleasure	удовольствие
582	to cry	плакать, кричать
583	to enjoy	наслаждаться
584	to laugh	смеяться
585	to like	нравиться
586	to love	любить
587	to miss	скучать
588	to need	нуждаться
589	to smile	улыбаться
590	to want	хотеть
591	to worry	беспокоиться
592	to feel (felt – felt)	чувствовать
593	to hear (heard – heard)	слышать
594	to see (saw – seen)	видеть
595	to smell (smelt – smelt)	нюхать, иметь запах
596	to taste	пробовать, иметь вкус
597	behavior	поведение
598	choice	выбор
599	experience	опыт
600	habit	привычка
601	language	язык
602	meaning	значение, смысл
603	memory	память, воспоминание
604	soul	душа
605	to believe	верить
606	to compare	сравнивать
607	to count	считать
608	to decide	принимать решение
609	to dream (dreamt – dreamt)	мечтать, видеть сон
610	to expect	ожидать
611	to forget (forgot – forgotten)	забывать
612	to hope	надеяться
613	to know (knew – known)	знать
614	to learn (learnt – learnt)	учить, изучать
615	to let (let – let)	позволять (сделать что-то)
616	to remember	помнить
617	to solve	решать (проблему, задачу)
618	to think (thought – thought)	думать, считать
619	a book	книга
620	a calendar	календарь
621	a notebook	тетрадь
622	a dictionary	словарь
623	an exercise	упражнение
624	information	информация
625	knowledge	знание
626	a lesson	урок
627	a letter	буква, письмо
628	a mistake	ошибка
629	a note	записка, запись
630	a page	страница
631	paper	бумага
632	a pen	ручка
633	a pencil	карандаш
634	science	наука
635	scissors	ножницы
636	a test	тест
637	a word	слово
638	can	уметь, мочь (сделать что-то)
639	have to	быть вынужденным (сделать что-то)
640	may	иметь разрешение (сделать что-то)
641	must	быть должным, обязанным (сделать что-то)
642	should	должен, следует (сделать что-то)
643	full	сытый, полный
644	hungry	голодный
645	delivery	доставка
646	baked	запеченный
647	boiled	вареный
648	fried	жареный
649	ready	готовый
650	bitter	горький
651	delicious	очень вкусный
652	salty	соленый
653	sour	кислый
654	spicy	острый
655	sweet	сладкий
656	a meal	прием пищи
657	breakfast	завтрак
658	lunch	обед
659	dinner	ужин
660	snack	перекус
661	a dish	блюдо
662	noodles	лапша
663	porridge	каша
664	salad	салат
665	a sandwich	бутерброд
666	soup	суп
667	fruit	фрукты
668	vegetables	овощи
669	an apple	яблоко
670	an apricot	абрикос
671	a banana	банан
672	a berry	ягода
673	a cherry	вишня
674	a cucumber	огурец
675	grapes	виноград
676	a lemon	лимон
677	a mandarin	мандарин
678	a mango	манго
679	a melon	дыня
680	a peach	персик
681	a pear	груша
682	a pineapple	ананас
683	a plum	слива
684	a pumpkin	тыква
685	a raspberry	малина
686	a strawberry	клубника
687	a tomato	помидор
688	a watermelon	арбуз
689	an aubergine (AmE: an eggplant)	баклажан
690	beans	бобы, фасоль
691	a beetroot	свекла
692	a bell pepper	болгарский перец
693	a cabbage	капуста
694	a carrot	морковь
695	corn	кукуруза
696	a courgette (AmE: a zucchini)	кабачок
697	garlic	чеснок
698	an onion	лук
699	a mushroom	гриб
700	potato	картофель
701	dairy	молочные продукты
702	butter	масло
703	cheese	сыр
704	cream	крем, сливки
705	curd	творог
706	milk	молоко
707	yogurt	йогурт
708	a cutlet	котлета
709	meat	мясо
710	beef	говядина
711	chicken	курица, цыпленок
712	fish	рыба
713	duck	утка
714	ham	ветчина
715	lamb	баранина, ягненок
716	pork	свинина
717	sausage	колбаса, сосиска
718	seafood	морепродукты
719	dessert	десерт
720	biscuit (AmE: cookie)	печенье
721	a bun	булочка
722	a cake	торт
723	chocolate	шоколад
724	honey	мед
725	ice cream	мороженое
726	jam	варенье
727	a pie	пирог
728	bread	хлеб
729	an egg	яйцо
730	flour	мука
731	a nut	орех
732	oatmeal	овсянка
733	oil	растительное масло
734	pepper	перец
735	rice	рис
736	salt	соль
737	sauce	соус
738	spices	специи
739	sugar	сахар
740	a drink	напиток
741	coffee	кофе
742	juice	сок
743	soda	газировка
744	tea	чай
745	water	вода
746	wine	вино
747	a bottle	бутылка
748	a glass	стакан, стекло
749	a cup	чашка
750	a kettle	чайник
751	a bowl	глубокая тарелка, миска
752	a plate	тарелка
753	a fork	вилка
754	a knife	нож
755	a spoon	ложка
756	a frying pan	сковородка
757	a pan	кастрюля
758	a napkin	салфетка
759	an animal	животное
760	an ant	муравей
761	a bear	медведь
762	a bee	пчела
763	a bird	птица
764	a cat	кот, кошка
765	a cockroach	таракан
766	a cow	корова
767	a dog	собака
768	a elephant	слон
769	a fox	лиса
770	a frog	лягушка
771	a giraffe	жираф
772	a goose (pl. geese)	гусь
773	a horse	лошадь
774	an insect	насекомое
775	, <td align="left" style="vertical-align: middle;" width="390">a monkey	обезьяна
776	a mouse (pl. mice)	мышь
777	a pig	свинья
778	a rabbit	заяц
779	a rat	крыса
780	a snake	змея
781	a spider	паук
782	a squirrel	белка
783	a plant	растение
784	a bush	куст
785	a flower	цветок
786	grass	трава
787	a leaf	лист
788	a tree	дерево
789	nature	природа
790	a beach	пляж
791	a coast	морское побережье
792	a field	поле
793	fire	огонь, пожар
794	a forest	лес
795	an island	остров
796	a lake	озеро
797	a mountain	гора
798	the ocean	океан
799	a river	река
800	sand	песок
801	the sea	море
802	a stone	камень
803	a world	мир (планета)
804	air	воздух
805	degree	градус
806	moon	луна
807	sky	небо
808	sun	солнце
809	temperature	температура
810	weather	погода
811	clear	ясный
812	cloudy	облачный
813	cold	холодный, холодно
814	cool	прохладный, прохладно
815	foggy	туманный
816	hot	горячий, жаркий, жарко
817	rainy	дождливый, дождливо
818	snowy	снежный, снежно
819	warm	тепло, теплый
820	windy	ветрено
821	a birthday	день рождения
822	Christmas	Рождество
823	death	смерть
824	Easter	Пасха
825	a game	игра
826	a holiday (AmE: a vacation)	праздник, каникулы, отпуск
827	a meeting	встреча, собрание
828	New Year’s Eve	канун Нового года
829	a party	вечеринка
830	a wedding	свадьба
831	a balloon	воздушный шар
832	a box	коробка, боксировать
833	a guest	гость
834	an invitation	приглашение
835	a present	подарок
836	a toy	игрушка
837	a country	страна
838	customs	таможня
839	a city	город
840	a town	небольшой город, городок
841	a village	деревня
842	an airport	аэропорт
843	a bank	банк
844	a bridge	мост
845	a building	здание
846	a café	кафе
847	a centre (AmE: a center)	центр (города)
848	a church	церковь
849	a cinema	кинотеатр
850	a company	компания, фирма
851	entrance	вход
852	exit	выход
853	a factory	фабрика, завод
854	garbage	мусор
855	a hospital	больница
856	a hotel	гостиница
857	an intersection	перекресток, точка пересечения
858	a market	рынок
859	an office	офис
860	a park	парк
861	a pavement (AmE: a sidewalk)	тротуар
862	a pharmacy (AmE: a drug store)	аптека
863	a police	полиция
864	a post office	почта
865	a restaurant	ресторан
866	a road	дорога
867	a school	школа
868	a shop (AmE: a store)	магазин
869	a station	станция, вокзал
870	a street	улица
871	a theatre (AmE: a theater)	театр
872	a university	университет
873	clean	чистый
874	comfortable	удобный, уютный
875	crowded	людный, переполненный
876	dirty	грязный
877	main	основной, главный
878	this/these	этот/эти
879	that/those	тот/те
880	left	левый, налево
881	right	правый, направо
882	here	тут, сюда
883	there	там, туда
884	down	вниз
885	up	вверх
886	about	о, около, примерно
887	above	над
888	against	против
889	behind	сзади, позади
890	between	между
891	from	из
892	in	в
893	in front of	впереди
894	on	на
895	through	через, сквозь
896	to	по направлению к
897	under	под
898	with	с
899	without	без
900	a flat (AmE: an apartment)	квартира
901	a house	дом (помещение)
902	a balcony	балкон
903	a bathroom	ванная
904	a bedroom	спальня
905	a curtain	штора
906	a door	дверь
907	a fence	забор
908	a floor	пол, этаж
909	a hall	коридор
910	a kitchen	кухня
911	a living room	гостиная, зал
912	a roof	крыша
913	a room	комната
914	a shower	душ
915	a sink	раковина
916	a socket	розетка
917	stairs	лестница, ступеньки
918	a toilet	туалет
919	a wall	стена
920	a window	окно
921	a yard	двор
922	furniture	мебель
923	an armchair	кресло
924	a bed	кровать
925	a chair	стул
926	a shelf	полка
927	a sofa	диван
928	a table	стол
929	a wardrobe (AmE: a closet)	шкаф
930	a battery	батарейка, аккумулятор
931	a camera	камера
932	a computer	компьютер
933	a fridge	холодильник
934	an iron	утюг
935	a keyboard	клавиатура
936	a lamp	лампа
937	a laptop	ноутбук
938	a microwave	микроволновка
939	an oven	печь, духовка
940	a phone	телефон
941	a radio	радио
942	a cooker (AmE: a stove)	кухонная плита
943	a TV	телевизор
944	a wire	провод
945	a ball	мяч, шар
946	a blanket	одеяло
947	a carpet	ковер
948	a key	ключ, клавиша
949	a magazine	журнал
950	mail	почта
951	a mirror	зеркало
952	a newspaper	газета
953	a package	упаковка, посылка
954	a pillow	подушка
955	a sheet	простыня
956	a soap	мыло
957	a towel	полотенце
958	a vase	ваза
1	a person (pl. people)	человек, персона
2	a man (pl. men)	мужчина
3	a woman (pl. women)	женщина
4	a child (pl. children)	ребенок
5	a boy	мальчик
6	a girl	девочка
7	a friend	друг
8	a neighbour (AmE: a neighbor)	сосед
9	a name	имя, название
10	a surname (AmE: a last name)	фамилия
11	a maiden name	девичья фамилия
12	an address	адрес
13	single	холостой/незамужняя
14	married	женатый/замужняя
15	age	возраст
16	old	старый
17	young	молодой
18	I	я
19	you	ты, вы
20	we	мы
21	they	они
22	he	он
23	she	она
24	it	оно (о неодушевленном в единственном числе)
25	my/me	мой/мне
26	your/you	твой, ваш / тебе, вам
27	our/us	наш/нам
28	their/them	их/им
29	his/him	его/ему
30	her	ее/ей
31	its/it	его, ее / ему, ей (о неодушевленном)
32	parents	родители
33	a father	отец
34	a mother (AmE: a mom, BrE: a mum)	мать
35	a husband	муж
36	a wife	жена
37	a son	сын
38	a daughter	дочь
39	a brother	брат
40	a sister	сестра
41	a grandfather	дедушка
42	a grandmother	бабушка
43	an uncle	дядя
44	an aunt	тетя
45	a nephew	племянник
46	a niece	племянница
47	a cousin	двоюродный брат/сестра
48	an arm	рука
49	a back	спина
50	a beard	борода
51	a bone	кость
52	buttocks	ягодицы
53	a cheek	щека
54	a chest	грудь
55	a chin	подбородок
56	an ear	ухо
57	an elbow	локоть
58	an eye	глаз
59	an eyebrow	бровь
60	a face	лицо
61	a finger	палец на руке
62	a foot (pl. feet)	ступня
63	a forehead	лоб
64	hair	волосы
65	a hand	кисть руки
66	a head	голова
67	a heart	сердце
68	a heel	пятка
69	a knee	колено
70	a leg	нога
71	lips	губы
72	a mouth	рот
73	a mustache	усы
74	a nail	ноготь
75	a neck	шея
76	a nose	нос
77	an organ	орган
78	a shoulder	плечо
79	skin	кожа
80	a spine	позвоночник
81	a stomach	живот, желудок
82	a throat	горло
83	a toe	палец на ноге
84	a tongue	язык
85	a tooth (pl. teeth)	зуб
86	blood	кровь
87	a bruise	синяк
88	, <td align="left" style="vertical-align: middle;" width="390">dizziness	головокружение
89	fever	жар
90	flu	грипп
91	pain	боль
92	running nose	насморк
93	a spot	пятно, точка
94	a wound	рана
95	to sneeze	чихать
96	to hurt (hurt – hurt)	ранить, повреждать
97	fit	в хорошей форме
98	healthy	здоровый
99	swollen	опухший
100	sick	больной
101	fat	толстый, жирный
102	dead	мертвый
103	positive	положительный
104	amazing	удивительный
105	beautiful	красивый
106	handsome	красивый (о мужчине)
107	brave	смелый
108	calm	спокойный
109	careful	осторожный
110	clever	умный
111	curious	любопытный
112	elegant	элегантный
113	energetic	энергичный
114	fair	справедливый, честный
115	fine	прекрасный, прекрасно
116	friendly	дружелюбный
117	good	хороший, добрый
118	happy	счастливый
119	hard-working	трудолюбивый
120	honest	честный
121	kind	добрый
122	lucky	везучий, счастливый
123	nice	милый, хороший, приятный
124	polite	вежливый
125	talented	талантливый
126	neutral	нейтральный
127	average	средний
128	boring	скучный
129	busy	занятой
130	clumsy	неуклюжий
131	dear	дорогой
132	different	другой, разный
133	difficult	трудный, тяжелый
134	easy	легкий, нетрудный
135	embarrassed	смущенный
136	famous	знаменитый
137	important	важный
138	impossible	невозможный
139	interesting	интересный
140	real	настоящий
141	rich	богатый
142	new	новый
143	modern	современный
144	negative	отрицательный
145	angry	сердитый
146	annoying	раздражающий
147	awful	ужасный, отвратительный
148	bad	плохой
149	crazy	безумный, сумасшедший
150	dangerous	опасный
151	jealous	ревнивый
152	lazy	ленивый
153	nervous	нервный
154	poor	бедный, плохой (язык, знания)
155	rude	грубый
156	an accountant	бухгалтер
157	an actor/actress	актер/актриса
158	an artist	художник
159	a boss	босс
160	a businessman (pl. businessmen)	бизнесмен
161	a chief	руководитель, главный
162	a client	клиент
163	a colleague (AmE: a co-worker)	коллега
164	a doctor	врач
165	a driver	водитель
166	an engineer	инженер
167	a flight attendant	стюардесса, бортпроводник
168	a journalist	журналист
169	a lawyer	адвокат, юрист
170	a lifeguard	спасатель
171	a mechanic	механик
172	a musician	музыкант
173	a nanny	няня
174	a nurse	медсестра
175	a pilot	пилот
176	a plumber	сантехник
177	a policeman (pl. policemen)	полицейский
178	a pupil	школьник
179	a shop assistant	продавец
180	a student	студент
181	a teacher	учитель
182	a waiter/waitress	официант/официантка
183	a worker	рабочий
184	an area	область, сфера, район
185	a case	дело
307	sixteen	шестнадцать
186	a circumstance	обстоятельство
187	a decision	решение
188	a duty	обязанность
189	a goal	цель
190	, <td align="left" style="vertical-align: middle;" width="390">an opportunity	возможность
191	a problem	проблема
192	a permit	разрешение (на въезд/выезд/проживание)
193	a reason	причина
194	a result	результат
195	success	успех
196	a task	задача, задание
197	a belt	пояс, ремень
198	a blouse	блузка
199	a boot	сапог, ботинок
200	a cap	кепка
201	a cardigan	кардиган, кофта
202	a coat	пальто
203	, <td align="left" style="vertical-align: middle;" width="390">a glove	перчатка
204	a hat	шляпа
205	a hood	капюшон
206	a jacket	жакет, пиджак, куртка
207	a jeans	джинсы
208	pyjamas (AmE: pajamas)	пижама
209	a scarf	шарф
210	a shirt	рубашка
211	shoes	обувь
212	shorts	шорты
213	a skirt	юбка
214	a sock	носок
215	, <td align="left" style="vertical-align: middle;" width="390">a sweater	свитер
216	a tie	галстук
217	tights	колготы
218	trainers (AmE: sneakers)	кроссовки
219	trousers (AmE: pants)	штаны
220	a T-shirt	футболка
221	an underwear	нижнее белье
222	a bracelet	браслет
223	an earring	сережка
224	glasses	очки
225	a necklace	ожерелье
226	a purse	дамская сумка, кошелек
227	a wallet	бумажник
228	red	красный
229	orange	оранжевый
230	yellow	желтый
231	green	зеленый
232	blue	голубой, синий
233	purple	фиолетовый
234	pink	розовый
235	brown	коричневый
236	black	черный
237	grey	серый
238	white	белый
239	bright	яркий
240	colourful	цветной
241	dark	темный
242	light	светлый, легкий
243	a circle	круг
244	round	округлый
245	, <td align="left" style="vertical-align: middle;" width="390">straight	прямой, ровный
246	a wheel	колесо
247	distance	расстояние
248	size	размер
249	speed	скорость
250	strength	сила
251	a lot of	много
252	many	много (с исчисляемыми существительными в отрицаниях и вопросах)
253	much	много (с неисчисляемыми существительными в отрицаниях и вопросах)
254	few	мало (с исчисляемыми существительными)
255	little	мало (с неисчисляемыми существительными)
256	less	меньше, менее
257	more	больше, более
258	some	несколько, некоторое количество (в утверждениях)
259	any	несколько, некоторое количество (в отрицаниях и вопросах), какой-нибудь
260	a pair	пара (вещей, объектов)
261	a part	часть
262	a piece	кусок, часть
263	big	большой
264	far	далекий
265	fast	быстрый, быстро
266	hard	твердый, трудный, жесткий, усердно
267	heavy	тяжелый
268	high	высокий (об объектах)
269	large	большой, просторный
270	long	длинный, долгий
271	loud	громкий
272	low	низкий, низко
273	narrow	узкий
274	near	близкий
275	noisy	шумный
276	powerful	мощный
277	quick	быстрый
278	quiet	тихий
279	short	низкий, короткий
280	again	снова
281	all	все, весь
282	almost	почти
283	each	каждый (по отдельности)
284	enough	достаточно
285	every	каждый
286	only	только
287	than	чем (в сравнениях)
288	together	вместе
289	too	тоже, слишком
290	very	очень
291	zero	ноль
292	one	один
293	two	два
294	three	три
295	four	четыре
296	five	пять
297	six	шесть
298	seven	семь
299	eight	восемь
300	nine	девять
301	ten	десять
302	eleven	одиннадцать
303	twelve	двенадцать
304	thirteen	тринадцать
305	fourteen	четырнадцать
306	fifteen	пятнадцать
308	seventeen	семнадцать
309	eighteen	восемнадцать
310	nineteen	девятнадцать
311	twenty	двадцать
312	thirty	тридцать
313	forty	сорок
314	fifty	пятьдесят
315	sixty	шестьдесят
316	seventy	семьдесят
317	eighty	восемьдесят
318	ninety	девяносто
319	hundred	сто
320	thousand	тысяча
321	million	миллион
322	first	первый
323	second	второй
324	third	третий
325	fourth	четвертый
326	fifth	пятый
327	a season	сезон, время года
328	winter	зима
329	spring	весна
330	summer	лето
331	autumn (AmE: fall)	осень
332	a month	месяц
333	January	январь
334	February	февраль
335	March	март
336	April	апрель
337	May	май
338	June	июнь
339	July	июль
340	August	август
341	September	сентябрь
342	October	октябрь
343	November	ноябрь
344	December	декабрь
345	a day	день
346	Monday	понедельник
347	Tuesday	вторник
348	Wednesday	среда
349	Thursday	четверг
350	Friday	пятница
351	Saturday	суббота
352	Sunday	воскресенье
353	yesterday	вчера
354	today	сегодня
355	now	сейчас, теперь
356	morning	утро
357	afternoon	день (после полудня)
358	evening	вечер
359	night	ночь
360	tonight	сегодня вечером, ночью
361	midnight	полночь
362	tomorrow	завтра
363	a second	секунда
364	a minute	минута
365	an hour	час
366	a week	неделя
367	a year	год
368	a century	век
369	ago	назад (например, 2 дня назад)
370	early	ранний, рано
371	last	последний, прошлый
372	late	поздний, поздно, опоздавший
373	next	следующий (год, неделя)
374	after	после
375	before	до
376	during	во время
377	for	для, в течение (времени)
378	since	с (определенного времени)
379	then	затем, потом, тогда
380	always	всегда
381	never	никогда
382	often	часто
383	sometimes	иногда
384	soon	скоро
385	usually	обычно
386	already	уже
387	just	только что, просто
388	yet	еще не
389	probably	вероятно
390	really	действительно
391	will	для образования будущего времени
392	a bill	счет
393	cash	наличка
394	discount	скидка
395	price	цена
396	tip	чаевые
397	cheap	дешевый
398	expensive	дорогой (о цене)
399	free	бесплатный, свободный
400	art	искусство
401	a film (AmE: a movie)	фильм
402	literature	литература
403	music	музыка
404	a photo	фото
405	a picture	картина, фотография
406	a song	песня
407	a story	история, рассказ
408	to act	, <td align="left" style="vertical-align: middle;" width="390">to build (built – built)
409	строить	to create
410	создавать	, <td align="left" style="vertical-align: middle;" width="390">to do (did – done)
411	делать	to draw (drew – drawn)
412	рисовать	to listen
413	слушать	to make (made – made)
414	делать, изготавливать	, <td align="left" style="vertical-align: middle;" width="390">to read (read – read)
415	читать	to sing (sang – sung)
416	петь	to swim (swam – swum)
417	плавать	to teach (taught – taught)
418	учить, преподавать	to write (wrote – written)
419	писать	a backpack
420	рюкзак	a bag
421	сумка	a card
422	открытка, карточка (банковская)	, <td align="left" style="vertical-align: middle;" width="390">a destination
423	пункт назначения	a luggage (AmE: a baggage)
424	багаж	a map
425	карта	a suitcase
426	чемодан	a ticket
427	билет	a bicycle
428	велосипед	a bus
429	автобус	a car
430	автомобиль	a plane
431	самолет	a ship
432	корабль	a taxi (AmE: a cab)
433	такси	a train
434	поезд	a tram (AmE: a trolley)
435	трамвай	insurance
436	страховка	to arrive
437	прибывать	to bring (brought – brought)
438	приносить	to catch (caught – caught)
439	ловить	to come (came – come)
440	приходить	to drive (drove – driven)
441	водить (транспорт)	to drop
442	ронять	to fall (fell – fallen)
443	падать	to finish
444	заканчивать	to fly (flew – flown)
445	летать	to go (went – gone)
446	идти, уезжать	to grow (grew – grown)
447	расти	to happen
448	случаться	to jump
449	прыгать	to land
450	приземляться	to leave (left – left)
451	покидать, оставлять, уходить	to move
452	двигаться	to pass
453	проходить	to pull
454	тянуть	to push
455	толкать	to put (put – put)
456	положить, класть	to ride (rode – ridden)
457	ездить верхом (на лошади, велосипеде)	to run (ran – run)
458	бежать	to stand (stood – stood)
459	стоять	to start
460	начинать	to stay
461	оставаться	to stop
462	останавливаться	to take (took – taken)
463	брать	to throw (threw – thrown)
464	бросать	to travel
465	путешествовать	to turn
466	поворачивать	to walk
467	идти пешком, гулять	to add
468	добавлять	to be (was/were – been)
469	быть	to become (became – become)
470	становиться	to begin (began – begun)
471	начинать	to break (broke – broken)
472	ломать	to buy (bought – bought)
473	покупать	to change
474	менять	to check
475	проверять	to choose (chose – chosen)
476	выбирать	to close
477	закрывать	to continue
478	продолжать	to control
479	контролировать	to cook
480	готовить	to cost (cost – cost)
481	стоить	to cut (cut – cut)
482	резать	to develop
483	развивать	to drink (drank – drunk)
484	пить	to eat (ate – eaten)
485	есть, кушать	to feed (fed – fed)
486	кормить	to find (found – found)
487	находить	to get (got – got)
488	получать, добывать	to give (gave – given)
489	давать	to have (had – had)
490	иметь, обладать	to hold (held – held)
491	держать	to keep (kept – kept)
492	хранить, продолжать	to kill
493	убивать	to live
494	жить	to look
495	выглядеть	to open
496	открывать	to order
497	заказывать	to pay
498	платить	to plan
499	планировать	to put on
500	надевать	to rest
501	отдыхать	to ring (rang – rung)
502	звенеть, звонить	to risk
503	рисковать	to save
504	спасать, сохранять	to sell (sold – sold)
505	продавать	to send (sent – sent)
506	отправлять	to shave
507	бриться	to show (showed – shown)
508	показывать	to sign
509	подписывать	to sit (sat – sat)
510	сидеть	to sleep (slept – slept)
511	спать	to smoke
512	курить	to spend (spent – spent)
513	проводить (время), тратить	to take off
514	, <td align="left" style="vertical-align: middle;" width="390">to try	пытаться
515	to use	использовать
516	to visit	посещать
517	to wait	ждать
518	to wake up (woke – woken)	просыпаться
519	to wash	мыть, стирать
520	to watch	смотреть, наблюдать
521	to wear (wore – worn)	носить (одежду)
522	to work	работать
523	yes	да
524	no	нет
525	not	не
526	hi	привет
527	hello	здравствуйте
528	sorry	извините (просим прощения)
529	excuse me	извините (просим разрешение)
530	please	пожалуйста, прошу
531	thank you	спасибо
532	you are welcome	не за что
533	bye	пока
534	maybe	может быть
535	would like to	хотелось бы (сделать что-то)
536	to agree	соглашаться
537	to answer	отвечать
538	to argue	спорить, ругаться
539	to ask	спрашивать
540	to call	звонить, звать, называть
541	to complain	жаловаться
542	to describe	описывать
543	to discuss	обсуждать
544	to disturb	беспокоить
545	to explain	объяснять
546	to fight (fought – fought)	драться
547	to forgive (forgave – forgiven)	прощать
548	to help	помогать
549	to hit (hit – hit)	ударять
550	to join	присоединяться
551	to joke	шутить
552	to lie	обманывать, врать
553	to meet (met – met)	встречать
554	to offer	предлагать
555	to protect	защищать
556	to say (said – said)	сказать
557	to share	делиться
558	to speak (spoke – spoken)	разговаривать
559	to support	поддерживать
560	to surprise	удивлять
561	to talk	разговаривать
562	to tell (told – told)	рассказывать
563	also	также
564	and	и
565	because	потому что
566	because of	из-за
567	but	но
568	if	если
569	or	или
570	so	итак, таким образом, поэтому
571	what	что, какой
572	who	кто
573	when	когда
574	where	где, куда
575	how	как, каким образом
576	why	почему, зачем
577	fear	страх
578	fun	веселье
579	passion	страсть
580	peace	мир
581	pleasure	удовольствие
582	to cry	плакать, кричать
583	to enjoy	наслаждаться
584	to laugh	смеяться
585	to like	нравиться
586	to love	любить
587	to miss	скучать
588	to need	нуждаться
589	to smile	улыбаться
590	to want	хотеть
591	to worry	беспокоиться
592	to feel (felt – felt)	чувствовать
593	to hear (heard – heard)	слышать
594	to see (saw – seen)	видеть
595	to smell (smelt – smelt)	нюхать, иметь запах
596	to taste	пробовать, иметь вкус
597	behavior	поведение
598	choice	выбор
599	experience	опыт
600	habit	привычка
601	language	язык
602	meaning	значение, смысл
603	memory	память, воспоминание
604	soul	душа
605	to believe	верить
606	to compare	сравнивать
607	to count	считать
608	to decide	принимать решение
609	to dream (dreamt – dreamt)	мечтать, видеть сон
610	to expect	ожидать
611	to forget (forgot – forgotten)	забывать
612	to hope	надеяться
613	to know (knew – known)	знать
614	to learn (learnt – learnt)	учить, изучать
615	to let (let – let)	позволять (сделать что-то)
616	to remember	помнить
617	to solve	решать (проблему, задачу)
618	to think (thought – thought)	думать, считать
619	a book	книга
620	a calendar	календарь
621	a notebook	тетрадь
622	a dictionary	словарь
623	an exercise	упражнение
624	information	информация
625	knowledge	знание
626	a lesson	урок
627	a letter	буква, письмо
628	a mistake	ошибка
629	a note	записка, запись
630	a page	страница
631	paper	бумага
632	a pen	ручка
633	a pencil	карандаш
634	science	наука
635	scissors	ножницы
636	a test	тест
637	a word	слово
638	can	уметь, мочь (сделать что-то)
639	have to	быть вынужденным (сделать что-то)
640	may	иметь разрешение (сделать что-то)
641	must	быть должным, обязанным (сделать что-то)
642	should	должен, следует (сделать что-то)
643	full	сытый, полный
644	hungry	голодный
645	delivery	доставка
646	baked	запеченный
647	boiled	вареный
648	fried	жареный
649	ready	готовый
650	bitter	горький
651	delicious	очень вкусный
652	salty	соленый
653	sour	кислый
654	spicy	острый
655	sweet	сладкий
656	a meal	прием пищи
657	breakfast	завтрак
658	lunch	обед
659	dinner	ужин
660	snack	перекус
661	a dish	блюдо
662	noodles	лапша
663	porridge	каша
664	salad	салат
665	a sandwich	бутерброд
666	soup	суп
667	fruit	фрукты
668	vegetables	овощи
669	an apple	яблоко
670	an apricot	абрикос
671	a banana	банан
672	a berry	ягода
673	a cherry	вишня
674	a cucumber	огурец
675	grapes	виноград
676	a lemon	лимон
677	a mandarin	мандарин
678	a mango	манго
679	a melon	дыня
680	a peach	персик
681	a pear	груша
682	a pineapple	ананас
683	a plum	слива
684	a pumpkin	тыква
685	a raspberry	малина
686	a strawberry	клубника
687	a tomato	помидор
688	a watermelon	арбуз
689	an aubergine (AmE: an eggplant)	баклажан
690	beans	бобы, фасоль
691	a beetroot	свекла
692	a bell pepper	болгарский перец
693	a cabbage	капуста
694	a carrot	морковь
695	corn	кукуруза
696	a courgette (AmE: a zucchini)	кабачок
697	garlic	чеснок
698	an onion	лук
699	a mushroom	гриб
700	potato	картофель
701	dairy	молочные продукты
702	butter	масло
703	cheese	сыр
704	cream	крем, сливки
705	curd	творог
706	milk	молоко
707	yogurt	йогурт
708	a cutlet	котлета
709	meat	мясо
710	beef	говядина
711	chicken	курица, цыпленок
712	fish	рыба
713	duck	утка
714	ham	ветчина
715	lamb	баранина, ягненок
716	pork	свинина
717	sausage	колбаса, сосиска
718	seafood	морепродукты
719	dessert	десерт
720	biscuit (AmE: cookie)	печенье
721	a bun	булочка
722	a cake	торт
723	chocolate	шоколад
724	honey	мед
725	ice cream	мороженое
726	jam	варенье
727	a pie	пирог
728	bread	хлеб
729	an egg	яйцо
730	flour	мука
731	a nut	орех
732	oatmeal	овсянка
733	oil	растительное масло
734	pepper	перец
735	rice	рис
736	salt	соль
737	sauce	соус
738	spices	специи
739	sugar	сахар
740	a drink	напиток
741	coffee	кофе
742	juice	сок
743	soda	газировка
744	tea	чай
745	water	вода
746	wine	вино
747	a bottle	бутылка
748	a glass	стакан, стекло
749	a cup	чашка
750	a kettle	чайник
751	a bowl	глубокая тарелка, миска
752	a plate	тарелка
753	a fork	вилка
754	a knife	нож
755	a spoon	ложка
756	a frying pan	сковородка
757	a pan	кастрюля
758	a napkin	салфетка
759	an animal	животное
760	an ant	муравей
761	a bear	медведь
762	a bee	пчела
763	a bird	птица
764	a cat	кот, кошка
765	a cockroach	таракан
766	a cow	корова
767	a dog	собака
768	a elephant	слон
769	a fox	лиса
770	a frog	лягушка
771	a giraffe	жираф
772	a goose (pl. geese)	гусь
773	a horse	лошадь
774	an insect	насекомое
775	, <td align="left" style="vertical-align: middle;" width="390">a monkey	обезьяна
776	a mouse (pl. mice)	мышь
777	a pig	свинья
778	a rabbit	заяц
779	a rat	крыса
780	a snake	змея
781	a spider	паук
782	a squirrel	белка
783	a plant	растение
784	a bush	куст
785	a flower	цветок
786	grass	трава
787	a leaf	лист
788	a tree	дерево
789	nature	природа
790	a beach	пляж
791	a coast	морское побережье
792	a field	поле
793	fire	огонь, пожар
794	a forest	лес
795	an island	остров
796	a lake	озеро
797	a mountain	гора
798	the ocean	океан
799	a river	река
800	sand	песок
801	the sea	море
802	a stone	камень
803	a world	мир (планета)
804	air	воздух
805	degree	градус
806	moon	луна
807	sky	небо
808	sun	солнце
809	temperature	температура
810	weather	погода
811	clear	ясный
812	cloudy	облачный
813	cold	холодный, холодно
814	cool	прохладный, прохладно
815	foggy	туманный
816	hot	горячий, жаркий, жарко
817	rainy	дождливый, дождливо
818	snowy	снежный, снежно
819	warm	тепло, теплый
820	windy	ветрено
821	a birthday	день рождения
822	Christmas	Рождество
823	death	смерть
824	Easter	Пасха
825	a game	игра
826	a holiday (AmE: a vacation)	праздник, каникулы, отпуск
827	a meeting	встреча, собрание
828	New Year’s Eve	канун Нового года
829	a party	вечеринка
830	a wedding	свадьба
831	a balloon	воздушный шар
832	a box	коробка, боксировать
833	a guest	гость
834	an invitation	приглашение
835	a present	подарок
836	a toy	игрушка
837	a country	страна
838	customs	таможня
839	a city	город
840	a town	небольшой город, городок
841	a village	деревня
842	an airport	аэропорт
843	a bank	банк
844	a bridge	мост
845	a building	здание
846	a café	кафе
847	a centre (AmE: a center)	центр (города)
848	a church	церковь
849	a cinema	кинотеатр
850	a company	компания, фирма
851	entrance	вход
852	exit	выход
853	a factory	фабрика, завод
854	garbage	мусор
855	a hospital	больница
856	a hotel	гостиница
857	an intersection	перекресток, точка пересечения
858	a market	рынок
859	an office	офис
860	a park	парк
861	a pavement (AmE: a sidewalk)	тротуар
862	a pharmacy (AmE: a drug store)	аптека
863	a police	полиция
864	a post office	почта
865	a restaurant	ресторан
866	a road	дорога
867	a school	школа
868	a shop (AmE: a store)	магазин
869	a station	станция, вокзал
870	a street	улица
871	a theatre (AmE: a theater)	театр
872	a university	университет
873	clean	чистый
874	comfortable	удобный, уютный
875	crowded	людный, переполненный
876	dirty	грязный
877	main	основной, главный
878	this/these	этот/эти
879	that/those	тот/те
880	left	левый, налево
881	right	правый, направо
882	here	тут, сюда
883	there	там, туда
884	down	вниз
885	up	вверх
886	about	о, около, примерно
887	above	над
888	against	против
889	behind	сзади, позади
890	between	между
891	from	из
892	in	в
893	in front of	впереди
894	on	на
895	through	через, сквозь
896	to	по направлению к
897	under	под
898	with	с
899	without	без
900	a flat (AmE: an apartment)	квартира
901	a house	дом (помещение)
902	a balcony	балкон
903	a bathroom	ванная
904	a bedroom	спальня
905	a curtain	штора
906	a door	дверь
907	a fence	забор
908	a floor	пол, этаж
909	a hall	коридор
910	a kitchen	кухня
911	a living room	гостиная, зал
912	a roof	крыша
913	a room	комната
914	a shower	душ
915	a sink	раковина
916	a socket	розетка
917	stairs	лестница, ступеньки
918	a toilet	туалет
919	a wall	стена
920	a window	окно
921	a yard	двор
922	furniture	мебель
923	an armchair	кресло
924	a bed	кровать
925	a chair	стул
926	a shelf	полка
927	a sofa	диван
928	a table	стол
929	a wardrobe (AmE: a closet)	шкаф
930	a battery	батарейка, аккумулятор
931	a camera	камера
932	a computer	компьютер
933	a fridge	холодильник
934	an iron	утюг
935	a keyboard	клавиатура
936	a lamp	лампа
937	a laptop	ноутбук
938	a microwave	микроволновка
939	an oven	печь, духовка
940	a phone	телефон
941	a radio	радио
942	a cooker (AmE: a stove)	кухонная плита
943	a TV	телевизор
944	a wire	провод
945	a ball	мяч, шар
946	a blanket	одеяло
947	a carpet	ковер
948	a key	ключ, клавиша
949	a magazine	журнал
950	mail	почта
951	a mirror	зеркало
952	a newspaper	газета
953	a package	упаковка, посылка
954	a pillow	подушка
955	a sheet	простыня
956	a soap	мыло
957	a towel	полотенце
958	a vase	ваза
1	a person (pl. people)	человек, персона
2	a man (pl. men)	мужчина
3	a woman (pl. women)	женщина
4	a child (pl. children)	ребенок
5	a boy	мальчик
6	a girl	девочка
7	a friend	друг
8	a neighbour (AmE: a neighbor)	сосед
9	a name	имя, название
10	a surname (AmE: a last name)	фамилия
11	a maiden name	девичья фамилия
12	an address	адрес
13	single	холостой/незамужняя
14	married	женатый/замужняя
15	age	возраст
16	old	старый
17	young	молодой
18	I	я
19	you	ты, вы
20	we	мы
21	they	они
22	he	он
23	she	она
24	it	оно (о неодушевленном в единственном числе)
25	my/me	мой/мне
26	your/you	твой, ваш / тебе, вам
27	our/us	наш/нам
28	their/them	их/им
29	his/him	его/ему
30	her	ее/ей
31	its/it	его, ее / ему, ей (о неодушевленном)
32	parents	родители
33	a father	отец
34	a mother (AmE: a mom, BrE: a mum)	мать
35	a husband	муж
36	a wife	жена
37	a son	сын
38	a daughter	дочь
39	a brother	брат
40	a sister	сестра
41	a grandfather	дедушка
42	a grandmother	бабушка
43	an uncle	дядя
44	an aunt	тетя
45	a nephew	племянник
46	a niece	племянница
47	a cousin	двоюродный брат/сестра
48	an arm	рука
49	a back	спина
50	a beard	борода
51	a bone	кость
52	buttocks	ягодицы
53	a cheek	щека
54	a chest	грудь
55	a chin	подбородок
56	an ear	ухо
57	an elbow	локоть
58	an eye	глаз
59	an eyebrow	бровь
60	a face	лицо
61	a finger	палец на руке
62	a foot (pl. feet)	ступня
63	a forehead	лоб
64	hair	волосы
65	a hand	кисть руки
66	a head	голова
67	a heart	сердце
68	a heel	пятка
69	a knee	колено
70	a leg	нога
71	lips	губы
72	a mouth	рот
73	a mustache	усы
74	a nail	ноготь
75	a neck	шея
76	a nose	нос
77	an organ	орган
78	a shoulder	плечо
79	skin	кожа
80	a spine	позвоночник
81	a stomach	живот, желудок
82	a throat	горло
83	a toe	палец на ноге
84	a tongue	язык
85	a tooth (pl. teeth)	зуб
86	blood	кровь
87	a bruise	синяк
88	, <td align="left" style="vertical-align: middle;" width="390">dizziness	головокружение
89	fever	жар
90	flu	грипп
91	pain	боль
92	running nose	насморк
93	a spot	пятно, точка
94	a wound	рана
95	to sneeze	чихать
96	to hurt (hurt – hurt)	ранить, повреждать
97	fit	в хорошей форме
98	healthy	здоровый
99	swollen	опухший
100	sick	больной
101	fat	толстый, жирный
102	dead	мертвый
103	positive	положительный
104	amazing	удивительный
105	beautiful	красивый
106	handsome	красивый (о мужчине)
107	brave	смелый
108	calm	спокойный
109	careful	осторожный
110	clever	умный
111	curious	любопытный
112	elegant	элегантный
113	energetic	энергичный
114	fair	справедливый, честный
115	fine	прекрасный, прекрасно
116	friendly	дружелюбный
117	good	хороший, добрый
118	happy	счастливый
119	hard-working	трудолюбивый
120	honest	честный
121	kind	добрый
122	lucky	везучий, счастливый
123	nice	милый, хороший, приятный
124	polite	вежливый
125	talented	талантливый
126	neutral	нейтральный
127	average	средний
128	boring	скучный
129	busy	занятой
130	clumsy	неуклюжий
131	dear	дорогой
132	different	другой, разный
133	difficult	трудный, тяжелый
134	easy	легкий, нетрудный
135	embarrassed	смущенный
136	famous	знаменитый
137	important	важный
138	impossible	невозможный
139	interesting	интересный
140	real	настоящий
141	rich	богатый
142	new	новый
143	modern	современный
144	negative	отрицательный
145	angry	сердитый
146	annoying	раздражающий
147	awful	ужасный, отвратительный
148	bad	плохой
149	crazy	безумный, сумасшедший
150	dangerous	опасный
151	jealous	ревнивый
152	lazy	ленивый
153	nervous	нервный
154	poor	бедный, плохой (язык, знания)
155	rude	грубый
156	an accountant	бухгалтер
157	an actor/actress	актер/актриса
158	an artist	художник
159	a boss	босс
160	a businessman (pl. businessmen)	бизнесмен
161	a chief	руководитель, главный
162	a client	клиент
163	a colleague (AmE: a co-worker)	коллега
164	a doctor	врач
165	a driver	водитель
166	an engineer	инженер
167	a flight attendant	стюардесса, бортпроводник
168	a journalist	журналист
169	a lawyer	адвокат, юрист
170	a lifeguard	спасатель
171	a mechanic	механик
172	a musician	музыкант
173	a nanny	няня
174	a nurse	медсестра
175	a pilot	пилот
176	a plumber	сантехник
177	a policeman (pl. policemen)	полицейский
178	a pupil	школьник
179	a shop assistant	продавец
180	a student	студент
181	a teacher	учитель
182	a waiter/waitress	официант/официантка
183	a worker	рабочий
184	an area	область, сфера, район
185	a case	дело
186	a circumstance	обстоятельство
187	a decision	решение
188	a duty	обязанность
189	a goal	цель
190	, <td align="left" style="vertical-align: middle;" width="390">an opportunity	возможность
191	a problem	проблема
192	a permit	разрешение (на въезд/выезд/проживание)
193	a reason	причина
194	a result	результат
195	success	успех
196	a task	задача, задание
197	a belt	пояс, ремень
198	a blouse	блузка
199	a boot	сапог, ботинок
200	a cap	кепка
201	a cardigan	кардиган, кофта
202	a coat	пальто
203	, <td align="left" style="vertical-align: middle;" width="390">a glove	перчатка
204	a hat	шляпа
205	a hood	капюшон
206	a jacket	жакет, пиджак, куртка
207	a jeans	джинсы
208	pyjamas (AmE: pajamas)	пижама
209	a scarf	шарф
210	a shirt	рубашка
211	shoes	обувь
212	shorts	шорты
213	a skirt	юбка
214	a sock	носок
215	, <td align="left" style="vertical-align: middle;" width="390">a sweater	свитер
216	a tie	галстук
217	tights	колготы
218	trainers (AmE: sneakers)	кроссовки
219	trousers (AmE: pants)	штаны
220	a T-shirt	футболка
221	an underwear	нижнее белье
222	a bracelet	браслет
223	an earring	сережка
224	glasses	очки
225	a necklace	ожерелье
226	a purse	дамская сумка, кошелек
227	a wallet	бумажник
228	red	красный
229	orange	оранжевый
230	yellow	желтый
231	green	зеленый
232	blue	голубой, синий
233	purple	фиолетовый
234	pink	розовый
235	brown	коричневый
236	black	черный
237	grey	серый
238	white	белый
239	bright	яркий
240	colourful	цветной
241	dark	темный
242	light	светлый, легкий
243	a circle	круг
244	round	округлый
245	, <td align="left" style="vertical-align: middle;" width="390">straight	прямой, ровный
246	a wheel	колесо
247	distance	расстояние
248	size	размер
249	speed	скорость
250	strength	сила
251	a lot of	много
252	many	много (с исчисляемыми существительными в отрицаниях и вопросах)
253	much	много (с неисчисляемыми существительными в отрицаниях и вопросах)
254	few	мало (с исчисляемыми существительными)
255	little	мало (с неисчисляемыми существительными)
256	less	меньше, менее
257	more	больше, более
258	some	несколько, некоторое количество (в утверждениях)
259	any	несколько, некоторое количество (в отрицаниях и вопросах), какой-нибудь
260	a pair	пара (вещей, объектов)
261	a part	часть
262	a piece	кусок, часть
263	big	большой
264	far	далекий
265	fast	быстрый, быстро
266	hard	твердый, трудный, жесткий, усердно
267	heavy	тяжелый
268	high	высокий (об объектах)
269	large	большой, просторный
270	long	длинный, долгий
271	loud	громкий
272	low	низкий, низко
273	narrow	узкий
274	near	близкий
275	noisy	шумный
276	powerful	мощный
277	quick	быстрый
278	quiet	тихий
279	short	низкий, короткий
280	again	снова
281	all	все, весь
282	almost	почти
283	each	каждый (по отдельности)
284	enough	достаточно
285	every	каждый
286	only	только
287	than	чем (в сравнениях)
288	together	вместе
289	too	тоже, слишком
290	very	очень
291	zero	ноль
292	one	один
293	two	два
294	three	три
295	four	четыре
296	five	пять
297	six	шесть
298	seven	семь
299	eight	восемь
300	nine	девять
301	ten	десять
302	eleven	одиннадцать
303	twelve	двенадцать
304	thirteen	тринадцать
305	fourteen	четырнадцать
306	fifteen	пятнадцать
307	sixteen	шестнадцать
308	seventeen	семнадцать
309	eighteen	восемнадцать
310	nineteen	девятнадцать
311	twenty	двадцать
312	thirty	тридцать
313	forty	сорок
314	fifty	пятьдесят
315	sixty	шестьдесят
316	seventy	семьдесят
317	eighty	восемьдесят
318	ninety	девяносто
319	hundred	сто
320	thousand	тысяча
321	million	миллион
322	first	первый
323	second	второй
324	third	третий
325	fourth	четвертый
326	fifth	пятый
327	a season	сезон, время года
328	winter	зима
329	spring	весна
330	summer	лето
331	autumn (AmE: fall)	осень
332	a month	месяц
333	January	январь
334	February	февраль
335	March	март
336	April	апрель
337	May	май
338	June	июнь
339	July	июль
340	August	август
341	September	сентябрь
342	October	октябрь
343	November	ноябрь
344	December	декабрь
345	a day	день
346	Monday	понедельник
347	Tuesday	вторник
348	Wednesday	среда
349	Thursday	четверг
350	Friday	пятница
351	Saturday	суббота
352	Sunday	воскресенье
353	yesterday	вчера
354	today	сегодня
355	now	сейчас, теперь
356	morning	утро
357	afternoon	день (после полудня)
358	evening	вечер
359	night	ночь
360	tonight	сегодня вечером, ночью
361	midnight	полночь
362	tomorrow	завтра
363	a second	секунда
364	a minute	минута
365	an hour	час
366	a week	неделя
367	a year	год
368	a century	век
369	ago	назад (например, 2 дня назад)
370	early	ранний, рано
371	last	последний, прошлый
372	late	поздний, поздно, опоздавший
373	next	следующий (год, неделя)
374	after	после
375	before	до
376	during	во время
377	for	для, в течение (времени)
378	since	с (определенного времени)
379	then	затем, потом, тогда
380	always	всегда
381	never	никогда
382	often	часто
383	sometimes	иногда
384	soon	скоро
385	usually	обычно
386	already	уже
387	just	только что, просто
388	yet	еще не
389	probably	вероятно
390	really	действительно
391	will	для образования будущего времени
392	a bill	счет
393	cash	наличка
394	discount	скидка
395	price	цена
396	tip	чаевые
397	cheap	дешевый
398	expensive	дорогой (о цене)
399	free	бесплатный, свободный
400	art	искусство
401	a film (AmE: a movie)	фильм
402	literature	литература
403	music	музыка
404	a photo	фото
405	a picture	картина, фотография
406	a song	песня
407	a story	история, рассказ
408	to act	, <td align="left" style="vertical-align: middle;" width="390">to build (built – built)
409	строить	to create
410	создавать	, <td align="left" style="vertical-align: middle;" width="390">to do (did – done)
411	делать	to draw (drew – drawn)
412	рисовать	to listen
413	слушать	to make (made – made)
414	делать, изготавливать	, <td align="left" style="vertical-align: middle;" width="390">to read (read – read)
415	читать	to sing (sang – sung)
416	петь	to swim (swam – swum)
417	плавать	to teach (taught – taught)
418	учить, преподавать	to write (wrote – written)
419	писать	a backpack
420	рюкзак	a bag
421	сумка	a card
422	открытка, карточка (банковская)	, <td align="left" style="vertical-align: middle;" width="390">a destination
423	пункт назначения	a luggage (AmE: a baggage)
424	багаж	a map
425	карта	a suitcase
426	чемодан	a ticket
427	билет	a bicycle
428	велосипед	a bus
429	автобус	a car
430	автомобиль	a plane
431	самолет	a ship
432	корабль	a taxi (AmE: a cab)
433	такси	a train
434	поезд	a tram (AmE: a trolley)
435	трамвай	insurance
436	страховка	to arrive
437	прибывать	to bring (brought – brought)
438	приносить	to catch (caught – caught)
439	ловить	to come (came – come)
440	приходить	to drive (drove – driven)
441	водить (транспорт)	to drop
442	ронять	to fall (fell – fallen)
443	падать	to finish
444	заканчивать	to fly (flew – flown)
445	летать	to go (went – gone)
446	идти, уезжать	to grow (grew – grown)
447	расти	to happen
448	случаться	to jump
449	прыгать	to land
450	приземляться	to leave (left – left)
451	покидать, оставлять, уходить	to move
452	двигаться	to pass
453	проходить	to pull
454	тянуть	to push
455	толкать	to put (put – put)
456	положить, класть	to ride (rode – ridden)
457	ездить верхом (на лошади, велосипеде)	to run (ran – run)
458	бежать	to stand (stood – stood)
459	стоять	to start
460	начинать	to stay
461	оставаться	to stop
462	останавливаться	to take (took – taken)
463	брать	to throw (threw – thrown)
464	бросать	to travel
465	путешествовать	to turn
466	поворачивать	to walk
467	идти пешком, гулять	to add
468	добавлять	to be (was/were – been)
469	быть	to become (became – become)
470	становиться	to begin (began – begun)
471	начинать	to break (broke – broken)
472	ломать	to buy (bought – bought)
473	покупать	to change
474	менять	to check
475	проверять	to choose (chose – chosen)
476	выбирать	to close
477	закрывать	to continue
478	продолжать	to control
479	контролировать	to cook
480	готовить	to cost (cost – cost)
481	стоить	to cut (cut – cut)
482	резать	to develop
483	развивать	to drink (drank – drunk)
484	пить	to eat (ate – eaten)
485	есть, кушать	to feed (fed – fed)
486	кормить	to find (found – found)
487	находить	to get (got – got)
488	получать, добывать	to give (gave – given)
489	давать	to have (had – had)
490	иметь, обладать	to hold (held – held)
491	держать	to keep (kept – kept)
492	хранить, продолжать	to kill
493	убивать	to live
494	жить	to look
495	выглядеть	to open
496	открывать	to order
497	заказывать	to pay
498	платить	to plan
499	планировать	to put on
500	надевать	to rest
501	отдыхать	to ring (rang – rung)
502	звенеть, звонить	to risk
503	рисковать	to save
504	спасать, сохранять	to sell (sold – sold)
505	продавать	to send (sent – sent)
506	отправлять	to shave
507	бриться	to show (showed – shown)
508	показывать	to sign
509	подписывать	to sit (sat – sat)
510	сидеть	to sleep (slept – slept)
511	спать	to smoke
512	курить	to spend (spent – spent)
513	проводить (время), тратить	to take off
514	, <td align="left" style="vertical-align: middle;" width="390">to try	пытаться
515	to use	использовать
516	to visit	посещать
517	to wait	ждать
518	to wake up (woke – woken)	просыпаться
519	to wash	мыть, стирать
520	to watch	смотреть, наблюдать
521	to wear (wore – worn)	носить (одежду)
522	to work	работать
523	yes	да
524	no	нет
525	not	не
526	hi	привет
527	hello	здравствуйте
528	sorry	извините (просим прощения)
529	excuse me	извините (просим разрешение)
530	please	пожалуйста, прошу
531	thank you	спасибо
532	you are welcome	не за что
533	bye	пока
534	maybe	может быть
535	would like to	хотелось бы (сделать что-то)
536	to agree	соглашаться
537	to answer	отвечать
538	to argue	спорить, ругаться
539	to ask	спрашивать
540	to call	звонить, звать, называть
541	to complain	жаловаться
542	to describe	описывать
543	to discuss	обсуждать
544	to disturb	беспокоить
545	to explain	объяснять
546	to fight (fought – fought)	драться
547	to forgive (forgave – forgiven)	прощать
548	to help	помогать
549	to hit (hit – hit)	ударять
550	to join	присоединяться
551	to joke	шутить
552	to lie	обманывать, врать
553	to meet (met – met)	встречать
554	to offer	предлагать
555	to protect	защищать
556	to say (said – said)	сказать
557	to share	делиться
558	to speak (spoke – spoken)	разговаривать
559	to support	поддерживать
560	to surprise	удивлять
561	to talk	разговаривать
562	to tell (told – told)	рассказывать
563	also	также
564	and	и
565	because	потому что
566	because of	из-за
567	but	но
568	if	если
569	or	или
570	so	итак, таким образом, поэтому
571	what	что, какой
572	who	кто
573	when	когда
574	where	где, куда
575	how	как, каким образом
576	why	почему, зачем
577	fear	страх
578	fun	веселье
579	passion	страсть
580	peace	мир
581	pleasure	удовольствие
582	to cry	плакать, кричать
583	to enjoy	наслаждаться
584	to laugh	смеяться
585	to like	нравиться
586	to love	любить
587	to miss	скучать
588	to need	нуждаться
589	to smile	улыбаться
590	to want	хотеть
591	to worry	беспокоиться
592	to feel (felt – felt)	чувствовать
593	to hear (heard – heard)	слышать
594	to see (saw – seen)	видеть
595	to smell (smelt – smelt)	нюхать, иметь запах
596	to taste	пробовать, иметь вкус
597	behavior	поведение
598	choice	выбор
599	experience	опыт
600	habit	привычка
601	language	язык
602	meaning	значение, смысл
603	memory	память, воспоминание
604	soul	душа
605	to believe	верить
606	to compare	сравнивать
607	to count	считать
608	to decide	принимать решение
609	to dream (dreamt – dreamt)	мечтать, видеть сон
610	to expect	ожидать
611	to forget (forgot – forgotten)	забывать
612	to hope	надеяться
613	to know (knew – known)	знать
614	to learn (learnt – learnt)	учить, изучать
615	to let (let – let)	позволять (сделать что-то)
616	to remember	помнить
617	to solve	решать (проблему, задачу)
618	to think (thought – thought)	думать, считать
619	a book	книга
620	a calendar	календарь
621	a notebook	тетрадь
622	a dictionary	словарь
623	an exercise	упражнение
624	information	информация
625	knowledge	знание
626	a lesson	урок
627	a letter	буква, письмо
628	a mistake	ошибка
629	a note	записка, запись
630	a page	страница
631	paper	бумага
632	a pen	ручка
633	a pencil	карандаш
634	science	наука
635	scissors	ножницы
636	a test	тест
637	a word	слово
638	can	уметь, мочь (сделать что-то)
639	have to	быть вынужденным (сделать что-то)
640	may	иметь разрешение (сделать что-то)
641	must	быть должным, обязанным (сделать что-то)
642	should	должен, следует (сделать что-то)
643	full	сытый, полный
644	hungry	голодный
645	delivery	доставка
646	baked	запеченный
647	boiled	вареный
648	fried	жареный
649	ready	готовый
650	bitter	горький
651	delicious	очень вкусный
652	salty	соленый
653	sour	кислый
654	spicy	острый
655	sweet	сладкий
656	a meal	прием пищи
657	breakfast	завтрак
658	lunch	обед
659	dinner	ужин
660	snack	перекус
661	a dish	блюдо
662	noodles	лапша
663	porridge	каша
664	salad	салат
665	a sandwich	бутерброд
666	soup	суп
667	fruit	фрукты
668	vegetables	овощи
669	an apple	яблоко
670	an apricot	абрикос
671	a banana	банан
672	a berry	ягода
673	a cherry	вишня
674	a cucumber	огурец
675	grapes	виноград
676	a lemon	лимон
677	a mandarin	мандарин
678	a mango	манго
679	a melon	дыня
680	a peach	персик
681	a pear	груша
682	a pineapple	ананас
683	a plum	слива
684	a pumpkin	тыква
685	a raspberry	малина
686	a strawberry	клубника
687	a tomato	помидор
688	a watermelon	арбуз
689	an aubergine (AmE: an eggplant)	баклажан
690	beans	бобы, фасоль
691	a beetroot	свекла
692	a bell pepper	болгарский перец
693	a cabbage	капуста
694	a carrot	морковь
695	corn	кукуруза
696	a courgette (AmE: a zucchini)	кабачок
697	garlic	чеснок
698	an onion	лук
699	a mushroom	гриб
700	potato	картофель
701	dairy	молочные продукты
702	butter	масло
703	cheese	сыр
704	cream	крем, сливки
705	curd	творог
706	milk	молоко
707	yogurt	йогурт
708	a cutlet	котлета
709	meat	мясо
710	beef	говядина
711	chicken	курица, цыпленок
712	fish	рыба
713	duck	утка
714	ham	ветчина
715	lamb	баранина, ягненок
716	pork	свинина
717	sausage	колбаса, сосиска
718	seafood	морепродукты
719	dessert	десерт
720	biscuit (AmE: cookie)	печенье
721	a bun	булочка
722	a cake	торт
723	chocolate	шоколад
724	honey	мед
725	ice cream	мороженое
726	jam	варенье
727	a pie	пирог
728	bread	хлеб
729	an egg	яйцо
730	flour	мука
731	a nut	орех
732	oatmeal	овсянка
733	oil	растительное масло
734	pepper	перец
735	rice	рис
736	salt	соль
737	sauce	соус
738	spices	специи
739	sugar	сахар
740	a drink	напиток
741	coffee	кофе
742	juice	сок
743	soda	газировка
744	tea	чай
745	water	вода
746	wine	вино
747	a bottle	бутылка
748	a glass	стакан, стекло
749	a cup	чашка
750	a kettle	чайник
751	a bowl	глубокая тарелка, миска
752	a plate	тарелка
753	a fork	вилка
754	a knife	нож
755	a spoon	ложка
756	a frying pan	сковородка
757	a pan	кастрюля
758	a napkin	салфетка
759	an animal	животное
760	an ant	муравей
761	a bear	медведь
762	a bee	пчела
763	a bird	птица
764	a cat	кот, кошка
765	a cockroach	таракан
766	a cow	корова
767	a dog	собака
768	a elephant	слон
769	a fox	лиса
770	a frog	лягушка
771	a giraffe	жираф
772	a goose (pl. geese)	гусь
773	a horse	лошадь
774	an insect	насекомое
775	, <td align="left" style="vertical-align: middle;" width="390">a monkey	обезьяна
776	a mouse (pl. mice)	мышь
777	a pig	свинья
778	a rabbit	заяц
779	a rat	крыса
780	a snake	змея
781	a spider	паук
782	a squirrel	белка
783	a plant	растение
784	a bush	куст
785	a flower	цветок
786	grass	трава
787	a leaf	лист
788	a tree	дерево
789	nature	природа
790	a beach	пляж
791	a coast	морское побережье
792	a field	поле
793	fire	огонь, пожар
794	a forest	лес
795	an island	остров
796	a lake	озеро
797	a mountain	гора
798	the ocean	океан
799	a river	река
800	sand	песок
801	the sea	море
802	a stone	камень
803	a world	мир (планета)
804	air	воздух
805	degree	градус
806	moon	луна
807	sky	небо
808	sun	солнце
809	temperature	температура
810	weather	погода
811	clear	ясный
812	cloudy	облачный
813	cold	холодный, холодно
814	cool	прохладный, прохладно
815	foggy	туманный
816	hot	горячий, жаркий, жарко
817	rainy	дождливый, дождливо
818	snowy	снежный, снежно
819	warm	тепло, теплый
820	windy	ветрено
821	a birthday	день рождения
822	Christmas	Рождество
823	death	смерть
824	Easter	Пасха
825	a game	игра
826	a holiday (AmE: a vacation)	праздник, каникулы, отпуск
827	a meeting	встреча, собрание
828	New Year’s Eve	канун Нового года
829	a party	вечеринка
830	a wedding	свадьба
831	a balloon	воздушный шар
832	a box	коробка, боксировать
833	a guest	гость
834	an invitation	приглашение
835	a present	подарок
836	a toy	игрушка
837	a country	страна
838	customs	таможня
839	a city	город
840	a town	небольшой город, городок
841	a village	деревня
842	an airport	аэропорт
843	a bank	банк
844	a bridge	мост
845	a building	здание
846	a café	кафе
847	a centre (AmE: a center)	центр (города)
848	a church	церковь
849	a cinema	кинотеатр
850	a company	компания, фирма
851	entrance	вход
852	exit	выход
853	a factory	фабрика, завод
854	garbage	мусор
855	a hospital	больница
856	a hotel	гостиница
857	an intersection	перекресток, точка пересечения
858	a market	рынок
859	an office	офис
860	a park	парк
861	a pavement (AmE: a sidewalk)	тротуар
862	a pharmacy (AmE: a drug store)	аптека
863	a police	полиция
864	a post office	почта
865	a restaurant	ресторан
866	a road	дорога
867	a school	школа
868	a shop (AmE: a store)	магазин
869	a station	станция, вокзал
870	a street	улица
871	a theatre (AmE: a theater)	театр
872	a university	университет
873	clean	чистый
874	comfortable	удобный, уютный
875	crowded	людный, переполненный
876	dirty	грязный
877	main	основной, главный
878	this/these	этот/эти
879	that/those	тот/те
880	left	левый, налево
881	right	правый, направо
882	here	тут, сюда
883	there	там, туда
884	down	вниз
885	up	вверх
886	about	о, около, примерно
887	above	над
888	against	против
889	behind	сзади, позади
890	between	между
891	from	из
892	in	в
893	in front of	впереди
894	on	на
895	through	через, сквозь
896	to	по направлению к
897	under	под
898	with	с
899	without	без
900	a flat (AmE: an apartment)	квартира
901	a house	дом (помещение)
902	a balcony	балкон
903	a bathroom	ванная
904	a bedroom	спальня
905	a curtain	штора
906	a door	дверь
907	a fence	забор
908	a floor	пол, этаж
909	a hall	коридор
910	a kitchen	кухня
911	a living room	гостиная, зал
912	a roof	крыша
913	a room	комната
914	a shower	душ
915	a sink	раковина
916	a socket	розетка
917	stairs	лестница, ступеньки
918	a toilet	туалет
919	a wall	стена
920	a window	окно
921	a yard	двор
922	furniture	мебель
923	an armchair	кресло
924	a bed	кровать
925	a chair	стул
926	a shelf	полка
927	a sofa	диван
928	a table	стол
929	a wardrobe (AmE: a closet)	шкаф
930	a battery	батарейка, аккумулятор
931	a camera	камера
932	a computer	компьютер
933	a fridge	холодильник
934	an iron	утюг
935	a keyboard	клавиатура
936	a lamp	лампа
937	a laptop	ноутбук
938	a microwave	микроволновка
939	an oven	печь, духовка
940	a phone	телефон
941	a radio	радио
942	a cooker (AmE: a stove)	кухонная плита
943	a TV	телевизор
944	a wire	провод
945	a ball	мяч, шар
946	a blanket	одеяло
947	a carpet	ковер
948	a key	ключ, клавиша
949	a magazine	журнал
950	mail	почта
951	a mirror	зеркало
952	a newspaper	газета
953	a package	упаковка, посылка
954	a pillow	подушка
955	a sheet	простыня
956	a soap	мыло
957	a towel	полотенце
958	a vase	ваза
\.


--
-- TOC entry 3504 (class 0 OID 16543)
-- Dependencies: 245
-- Data for Name: tofannapvp_days_words_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tofannapvp_days_words_list (words_eng, words_rus) FROM stdin;
a flight attendant	стюардесса, бортпроводник
\.


--
-- TOC entry 3505 (class 0 OID 16548)
-- Dependencies: 246
-- Data for Name: tofannapvp_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tofannapvp_info (categories, total_quantity_of_words) FROM stdin;
\N	5
1000 самых употребляемых слов	\N
\.


--
-- TOC entry 3506 (class 0 OID 16553)
-- Dependencies: 247
-- Data for Name: tofannapvp_repetition_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tofannapvp_repetition_list (words_eng, words_rus, words_count) FROM stdin;
\.


--
-- TOC entry 3507 (class 0 OID 16558)
-- Dependencies: 248
-- Data for Name: tofannapvp_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tofannapvp_words (words_eng, words_rus, words_count, last_repetition_time) FROM stdin;
a socket	розетка	6	\N
to believe	верить	6	\N
September	сентябрь	6	\N
a policeman (pl. policemen)	полицейский	6	\N
it	оно (о неодушевленном в единственном числе)	6	\N
a shoulder	плечо	6	\N
an organ	орган	6	\N
this/these	этот/эти	6	\N
much	много (с неисчисляемыми существительными в отрицаниях и вопросах)	6	\N
pyjamas (AmE: pajamas)	пижама	6	\N
temperature	температура	6	\N
a bush	куст	6	\N
dark	темный	6	\N
a newspaper	газета	6	\N
a flight attendant	стюардесса, бортпроводник	2	2022-12-04 00:12:00
a tongue	язык	2	2022-12-04 00:12:00
cool	прохладный, прохладно	2	2022-12-04 00:13:00
a lake	озеро	2	2022-12-04 00:13:00
a beetroot	свекла	2	2022-12-04 00:13:00
\.


--
-- TOC entry 3508 (class 0 OID 16563)
-- Dependencies: 249
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, time_of_repetition, date_of_registration, state) FROM stdin;
1076024956	\N	2022-11-30 21:03:47.300228	Start
342710991	\N	2022-12-01 02:38:20.403733	Start
230365130	\N	2022-12-01 13:47:55.778621	Start
192182939	\N	2022-12-01 16:02:24.068245	Start
101297572	\N	2022-12-02 23:08:02.165924	Start
2028724688	\N	2022-12-03 01:45:42.921900	Start
721754210	\N	2022-12-03 03:37:12.934608	Start
1789361392	\N	2022-12-03 04:00:28.644129	Start
70084098	\N	2022-11-29 03:35:22.653388	change_translation
\.


--
-- TOC entry 3509 (class 0 OID 16568)
-- Dependencies: 250
-- Data for Name: valeriaaleksan_days_words_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.valeriaaleksan_days_words_list (words_eng, words_rus) FROM stdin;
crazy	безумный, сумасшедший
to like	нравиться
a pig	свинья
a day	день
snowy	снежный, снежно
a driver	водитель
проводить (время), тратить	to take off
easy	легкий, нетрудный
energetic	энергичный
an uncle	дядя
стоять	to start
vegetables	овощи
sun	солнце
a mustache	усы
a napkin	салфетка
hundred	сто
long	длинный, долгий
читать	to sing (sang – sung)
to love	любить
passion	страсть
\.


--
-- TOC entry 3510 (class 0 OID 16573)
-- Dependencies: 251
-- Data for Name: valeriaaleksan_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.valeriaaleksan_info (categories, total_quantity_of_words) FROM stdin;
\N	20
1000 самых употребляемых слов	\N
\.


--
-- TOC entry 3511 (class 0 OID 16578)
-- Dependencies: 252
-- Data for Name: valeriaaleksan_repetition_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.valeriaaleksan_repetition_list (words_eng, words_rus, words_count) FROM stdin;
\.


--
-- TOC entry 3512 (class 0 OID 16583)
-- Dependencies: 253
-- Data for Name: valeriaaleksan_words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.valeriaaleksan_words (words_eng, words_rus, words_count, last_repetition_time) FROM stdin;
quick	быстрый	6	\N
art	искусство	6	\N
to belong	принадлежать 	3	2022-12-07 01:20:00
glory	слава 	3	2022-12-07 01:20:00
narration	повествование 	2	2022-12-06 21:15:00
concern	беспокойство 	2	2022-12-06 21:15:00
roughly	грубо 	2	2022-12-06 21:15:00
consist	состоять 	2	2022-12-06 21:16:00
neat	аккуратный 	2	2022-12-06 21:16:00
distract	отвлекать 	2	2022-12-06 21:16:00
advantage	преимущество 	2	2022-12-06 21:16:00
all the way up	все вплоть до 	2	2022-12-06 21:16:00
be capable	быть в состоянии 	2	2022-12-06 21:16:00
struggle	борьба 	2	2022-12-06 21:16:00
claim	требовать 	2	2022-12-06 21:16:00
consensual	согласие 	2	2022-12-06 21:16:00
assault	атаковать 	2	2022-12-06 21:16:00
assume	предполагать 	2	2022-12-06 21:16:00
definite	определенный 	2	2022-12-06 21:16:00
restriction	ограничение 	2	2022-12-06 21:16:00
rumor	слух 	2	2022-12-06 21:16:00
split the cost	разделить стоимость 	2	2022-12-06 21:16:00
sloppy	небрежный 	2	2022-12-06 21:17:00
light-headed	легкомысленное 	2	2022-12-06 21:17:00
temptation	искушение 	2	2022-12-06 21:17:00
at a loss	в убыток 	2	2022-12-06 21:17:00
widespread	широко распространен 	2	2022-12-06 21:17:00
to be a means	быть средством 	2	2022-12-06 21:17:00
partly	частично 	2	2022-12-06 21:17:00
wages	зарплата 	2	2022-12-06 21:17:00
fed up	сытый по горло 	2	2022-12-06 21:17:00
astute	проницательный 	2	2022-12-06 21:17:00
innate	врожденный 	2	2022-12-06 21:17:00
artificial	искусственный 	2	2022-12-06 21:17:00
resourceful	находчивый 	2	2022-12-06 21:17:00
emerge	появляться 	2	2022-12-06 21:17:00
to capture	захватить 	2	2022-12-06 21:17:00
possess	владеть 	2	2022-12-06 21:17:00
argue	спорить 	2	2022-12-06 21:17:00
traits	черты 	2	2022-12-06 21:17:00
dexterity	ловкость 	2	2022-12-06 21:18:00
intentions	намерения 	2	2022-12-06 21:18:00
to be excel	быть excel 	2	2022-12-06 21:18:00
to fond of	любить 	2	2022-12-06 21:18:00
appliance	приспособление 	2	2022-12-06 21:18:00
action-packed	действие 	2	2022-12-06 21:18:00
chase	гнаться 	2	2022-12-06 21:18:00
unreliable	ненадежный 	2	2022-12-06 21:18:00
improbable	невероятно 	2	2022-12-06 21:18:00
coast	морской берег 	2	2022-12-06 21:18:00
seashore	море 	2	2022-12-06 21:18:00
countryside	сельская местность 	2	2022-12-06 21:18:00
abrupt	внезапно 	2	2022-12-06 21:18:00
scenery	пейзаж 	2	2022-12-06 21:18:00
gale	шарнир 	2	2022-12-06 21:18:00
misty	туман 	2	2022-12-06 21:18:00
foggy	туманно 	2	2022-12-06 21:19:00
expire	истекает 	2	2022-12-06 21:19:00
furnished	меблирован 	2	2022-12-06 21:19:00
featuring	с участием 	2	2022-12-06 21:19:00
clearance	прозрачный 	2	2022-12-06 21:19:00
abundance	избыток 	2	2022-12-06 21:19:00
inevitably	неизбежно 	2	2022-12-06 21:19:00
itemized	подробно 	2	2022-12-06 21:19:00
significance	значение 	2	2022-12-06 21:19:00
capture	захватывать 	2	2022-12-06 21:19:00
map out	отобразить 	2	2022-12-06 21:19:00
oftentimes	часто 	2	2022-12-06 21:19:00
go awry	иди не так 	2	2022-12-06 21:19:00
likelihood	вероятность 	2	2022-12-06 21:19:00
pursue	преследовать 	2	2022-12-06 21:19:00
get to grips	добраться до захвата 	2	2022-12-06 21:19:00
consider	рассмотреть возможность 	2	2022-12-06 21:19:00
align	выровнять 	2	2022-12-06 21:19:00
prosperous	процветающий 	2	2022-12-06 21:19:00
malnutrition	недоедание 	2	2022-12-06 21:19:00
deceptive	обманчиво 	2	2022-12-06 21:19:00
conscious	сознательный 	2	2022-12-06 21:20:00
refers to	относится к 	2	2022-12-06 21:20:00
ratio	соотношение 	2	2022-12-06 21:20:00
perception	восприятие 	2	2022-12-06 21:20:00
allow	разрешать 	3	2022-12-07 01:20:00
hello	привет 	3	2022-12-07 01:20:00
anxious	тревожный 	3	2022-12-07 01:20:00
\.


-- Completed on 2023-01-26 18:36:35 UTC

--
-- PostgreSQL database dump complete
--

