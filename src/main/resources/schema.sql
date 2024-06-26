CREATE TABLE AIRPORTS (
  ID          VARCHAR(4) PRIMARY KEY,
  IATA        VARCHAR(3),
  NAME        VARCHAR(100),
  COUNTRY     VARCHAR(2),
  STATE       VARCHAR(2),
  LATITUDE    DOUBLE,
  LONGITUDE   DOUBLE,
  ELEVATION   DOUBLE
);

CREATE TABLE STATIONS (
  ID          VARCHAR(4) PRIMARY KEY,
  NAME        VARCHAR(100),
  COUNTRY     VARCHAR(2),
  STATE       VARCHAR(2),
  LATITUDE    DOUBLE,
  LONGITUDE   DOUBLE,
  ELEVATION   DOUBLE
);

CREATE TABLE ASTEROIDS (
  ID          INTEGER PRIMARY KEY,
  NAME        VARCHAR(100),
  DESIGNATION VARCHAR(100)
);

CREATE TABLE CLOSE_APPROACH (
  ID BIGINT AUTO_INCREMENT PRIMARY KEY,
  ASTEROID_ID INTEGER,
  CLOSE_APPROACH_DATE DATE,
  ORBITING_BODY VARCHAR(100),
  FOREIGN KEY (ASTEROID_ID) REFERENCES ASTEROIDS(ID)
);

INSERT INTO AIRPORTS (ID, IATA, NAME, COUNTRY, STATE, LATITUDE, LONGITUDE, ELEVATION) VALUES
('LIRF', 'FCO', 'ROMA FIUMICINO AIRPORT', 'IT', '-', 41.8002, 12.2458, 1),
('LIMC', 'MXP', 'MILANO/MALPENSA AIRPORT', 'IT', '-', 45.6274, 8.7233, 1),
('LIME', 'BGY', 'BERGAMO ORIO AL SERIO AIRPORT', 'IT', '-', 45.669, 9.7009, 1),
('LIRN', 'NAP', 'NAPLES INTERNATIONAL', 'IT', '-', 40.8849, 14.2885, 1),
('LICC', 'CTA', 'CATANIA/FONTANAROSSA AIRPORT', 'IT', '-', 37.4666, 15.0662, 1),
('LIPZ', 'VCE', 'VENEZIA/MARCO POLO AIRPORT', 'IT', '-', 45.5017, 12.3458, 1),
('LIPE', 'BLQ', 'BOLOGNA/BORGO PANIGALE AIRPORT', 'IT', '-', 44.5308, 11.297, 1),
('LIML', 'LIN', 'MILANO/LINATE AIRPORT', 'IT', '-', 45.4477, 9.2767, 1),
('LICJ', 'PMO', 'PALERMO AIRPORT', 'IT', '-', 38.1797, 13.1012, 1),
('LIBD', 'BRI', 'BARI/PALESE AIRPORT', 'IT', '-', 41.1375, 16.7602, 1),
('LIRP', 'PSA', 'PISA/GIUSTO AIRPORT', 'IT', '-', 43.683, 10.392, 1),
('LIEE', 'CAG', 'CAGLIARI/ELMAS AIRPORT', 'IT', '-', 39.252, 9.0555, 1),
('LIMF', 'TRN', 'TORINO/CASELLE AIRPORT', 'IT', '-', 45.1976, 7.6493, 1),
('LIBC', 'CRV', 'CROTONE AIRPORT', 'IT', '-', 38.9963, 17.0803, 1),
('LIBF', 'FOG', 'FOGGIA/LISA AIRPORT', 'IT', '-', 41.4312, 15.5361, 1),
('LIBP', 'PSR', 'PESCARA/ABRUZZO AIRPORT', 'IT', '-', 42.4305, 14.182, 1),
('LIBR', 'BDS', 'BRINDISI/CASALE AIRPORT', 'IT', '-', 40.6581, 17.9437, 1),
('LICA', 'SUF', 'LAMEZIA TERME AIRPORT', 'IT', '-', 38.9053, 16.2443, 1),
('LICB', 'CIY', 'COMISO AIRPORT', 'IT', '-', 36.9958, 14.6089, 1),
('LICD', 'LMP', 'LAMPEDUSA ISLAND AIRPORT', 'IT', '-', 35.4984, 12.6197, 1),
('LICG', 'PNL', 'PANTELLERIA AIRPORT', 'IT', '-', 36.8168, 11.9686, 1),
('LICR', 'REG', 'REGGIO CALABRIA AIRPORT', 'IT', '-', 38.072, 15.6512, 1),
('LICT', 'TPS', 'TRAPANI/BIRGI AIRPORT', 'IT', '-', 37.912, 12.4898, 1),
('LIEA', 'AHO', 'ALGHERO/FERTILIA AIRPORT', 'IT', '-', 40.6307, 8.2926, 1),
('LIEO', 'OLB', 'OLBIA/COSTA SMERALDA AIRPORT', 'IT', '-', 40.8997, 9.5172, 1),
('LIMJ', 'GOA', 'GENOA/COLOMBO AIRPORT', 'IT', '-', 44.4109, 8.8476, 1),
('LIMP', 'PMF', 'PARMA AIRPORT', 'IT', '-', 44.824, 10.2959, 1),
('LIMZ', 'CUF', 'CUNEO/LEVALDIGI AIRPORT', 'IT', '-', 44.5467, 7.6221, 1),
('LIPB', 'BZO', 'BOLZANO/DOLOMITI AIRPORT', 'IT', '-', 46.4603, 11.3265, 1),
('LIPK', 'FRL', 'FORLI/RIDOLFI AIRPORT', 'IT', '-', 44.1953, 12.0699, 1),
('LIPO', 'VBS', 'BRESCIA AIRPORT', 'IT', '-', 45.4275, 10.3322, 1),
('LIPQ', 'TRS', 'TRIESTE/GUILIA AIRPORT', 'IT', '-', 45.8276, 13.4714, 1),
('LIPX', 'VRN', 'VERONA AIRPORT', 'IT', '-', 45.3967, 10.8891, 1),
('LIPY', 'AOI', 'FALCONARA/ANCONA AIRPORT', 'IT', '-', 43.6143, 13.3594, 1),
('LIRQ', 'FLR', 'FIRENZE/PERETOLA AIRPORT', 'IT', '-', 43.8078, 11.2019, 1),
('LIRS', 'GRS', 'GROSSETO AIRPORT', 'IT', '-', 42.7569, 11.0692, 1);

INSERT INTO STATIONS (ID, NAME, COUNTRY, STATE, LATITUDE, LONGITUDE, ELEVATION) VALUES
('EQYS', 'Signoella (NAS)', 'IT', '-', 37.4, 14.92, 25),
('LIBA', 'Amendola(AFB)', 'IT', 'PU', 41.538, 15.714, 55),
('LIBC', 'Crotone Arpt', 'IT', 'CI', 38.997, 17.079, 158),
('LIBD', 'Bari/Palese Arpt', 'IT', 'PU', 41.138, 16.765, 42),
('LIBE', 'Monte Sant Angelo', 'IT', 'PU', 41.708, 15.948, 836),
('LIBF', 'Foggia/Lisa Arpt', 'IT', 'PU', 41.433, 15.535, 81),
('LIBG', 'Grottaglie Arpt', 'IT', 'PU', 40.517, 17.403, 64),
('LIBH', 'Marina di Ginos', 'IT', 'PU', 40.424, 16.887, 4),
('LIBN', 'Lecce(AFB)', 'IT', 'PU', 40.238, 18.138, 46),
('LIBP', 'Pescara/Abruzzo Arpt', 'IT', 'AB', 42.432, 14.181, 10),
('LIBQ', 'Scuro Mountain', 'IT', 'CI', 39.331, 16.396, 1660),
('LIBR', 'Brindisi/Casale Arpt', 'IT', 'PU', 40.658, 17.951, 5),
('LIBS', 'Campobasso', 'IT', 'CB', 41.564, 14.655, 776),
('LIBT', 'Termoli', 'IT', 'CB', 42.004, 14.996, 19),
('LIBU', 'Latronico', 'IT', 'PZ', 40.087, 16.014, 868),
('LIBV', 'Gioia Del Colle(MIL)', 'IT', 'PU', 40.766, 16.935, 344),
('LIBW', 'Bonifati', 'IT', 'CI', 39.585, 15.891, 487),
('LIBY', 'Santa Maria di Leuca', 'IT', 'PU', 39.811, 18.342, 105),
('LIBZ', 'Potenza', 'IT', 'PZ', 40.633, 15.8, 787),
('LICA', 'Lamezia Terme Arpt', 'IT', 'CA', 38.908, 16.242, 7),
('LICB', 'Comiso Arpt', 'IT', 'RG', 36.994, 14.606, 212),
('LICC', 'Catania/Fontanarossa Arpt', 'IT', 'CT', 37.467, 15.064, 6),
('LICD', 'Lampedusa Island Arpt', 'IT', 'AG', 35.498, 12.618, 20),
('LICE', 'Enna', 'IT', 'EN', 37.568, 14.28, 928),
('LICF', 'Messina', 'IT', 'ME', 38.2, 15.549, 66),
('LICG', 'Pantelleria Arpt', 'IT', 'TP', 36.814, 11.971, 192),
('LICJ', 'Palermo Arpt', 'IT', 'PA', 38.176, 13.091, 20),
('LICL', 'Gela', 'IT', 'CL', 37.076, 14.225, 59),
('LICM', 'Calopezzati', 'IT', 'CS', 39.55, 16.8, 179),
('LICO', 'Cozzo Spadaro', 'IT', 'PU', 36.686, 15.131, 45),
('LICP', 'Palmero/Boccadifal', 'IT', 'PA', 38.111, 13.313, 105),
('LICR', 'Reggio Calabria Arpt', 'IT', 'RE', 38.072, 15.654, 16),
('LICT', 'Trapani/Birgi Arpt', 'IT', 'TP', 37.911, 12.488, 4),
('LICU', 'Ustica', 'IT', 'PA', 38.707, 13.177, 239),
('LICZ', 'Sigonella(MIL)', 'IT', 'CT', 37.406, 14.919, 22),
('LIEB', 'Cape Bellavista', 'IT', 'OG', 39.931, 9.713, 126),
('LIEC', 'Cape Carbonara', 'IT', 'CA', 39.104, 9.514, 90),
('LIEE', 'Cagliari/Elmas Arpt', 'IT', 'CA', 39.243, 9.06, 1),
('LIEG', 'Guardiavecchia', 'IT', 'OT', 41.217, 9.4, 89),
('LIEL', 'Capo S Lorenzo', 'IT', 'CA', 39.498, 9.629, 8),
('LIEN', 'Fonni', 'IT', 'NU', 40.117, 9.25, 1009),
('LIEO', 'Olbia/Costa Smeralda Arpt', 'IT', 'OT', 40.899, 9.518, 8),
('LIEP', 'Perdasdefogu', 'IT', 'OG', 39.675, 9.443, 602),
('LIME', 'Bergamo/Orio Seno Arpt', 'IT', 'BG', 45.674, 9.704, 239),
('LIML', 'Milan/Linate Arpt', 'IT', 'MI', 45.461, 9.263, 109),
('LIMO', 'Bisbino Mountai', 'IT', 'CO', 45.87, 9.067, 1176),
('LIMP', 'Parma Arpt', 'IT', 'PR', 44.825, 10.296, 41),
('LIMS', 'Piacenza (IT-AFB)', 'IT', 'PC', 44.913, 9.723, 132),
('LIMT', 'Passo della Cisa', 'IT', 'MS', 44.472, 9.929, 1032),
('LIPA', 'Aviano(AFB)', 'IT', 'PN', 46.03, 12.599, 113),
('LIPB', 'Bolzano/Dolomiti Arpt', 'IT', 'BO', 46.46, 11.326, 239),
('LIPC', 'Cervia(AFB)', 'IT', 'RV', 44.224, 12.307, 10),
('LIPD', 'Udine/Campoformido', 'IT', 'UD', 46.038, 13.188, 90),
('LIPE', 'Bologna/Marconi Arpt', 'IT', 'BO', 44.531, 11.297, 37),
('LIPF', 'Ferrara Arpt', 'IT', 'FE', 44.814, 11.61, 5),
('LIPH', 'Treviso Arpt', 'IT', 'TV', 45.648, 12.194, 10),
('LIPI', 'Rivolto(AFB)', 'IT', 'UD', 45.979, 13.049, 49),
('LIPK', 'Forli/Ridolfi Arpt', 'IT', 'FC', 44.196, 12.07, 24),
('LIPL', 'Ghedi(AFB)', 'IT', 'BS', 45.432, 10.268, 96),
('LIPO', 'Brescia Arpt', 'IT', 'BS', 45.429, 10.331, 104),
('LIPP', 'Dova Area Contr', 'IT', '-', 45.4, 11.87, 14),
('LIPQ', 'Trieste Airport', 'IT', 'CU', 45.828, 13.472, 6),
('LIPR', 'Rimini/Miramare Arpt', 'IT', 'RN', 44.02, 12.612, 10),
('LIPS', 'Istrana(AFB)', 'IT', 'TV', 45.689, 12.101, 42),
('LIPT', 'Vicenza(CIV/IT-', 'IT', 'VI', 45.573, 11.53, 35),
('LIPU', 'Pavdova Arpt', 'IT', 'PD', 45.396, 11.848, 6),
('LIPX', 'Verona Arpt', 'IT', 'TO', 45.387, 10.872, 67),
('LIPY', 'Falconara/Ancona Arpt', 'IT', 'AN', 43.617, 13.36, 11),
('LIPZ', 'Venice/Polo Arpt', 'IT', 'VE', 45.505, 12.352, 3),
('LIQB', 'Arezzo', 'IT', 'AR', 43.455, 11.848, 248),
('LIQC', 'Capri Island', 'IT', 'NA', 40.558, 14.201, 154),
('LIQD', 'Porretta Pass', 'IT', '-', 44.03, 10.93, 932),
('LIQI', 'Gran Sasso Moun', 'IT', '-', 42.45, 13.7, 2138),
('LIQJ', 'Civitavecchia', 'IT', 'RM', 42.033, 11.833, 5),
('LIQK', 'Capo Palinuro', 'IT', 'SA', 40.025, 15.281, 165),
('LIQN', 'Rieti Arpt', 'IT', 'RI', 42.427, 12.85, 387),
('LIQO', 'Mount Argentario', 'IT', 'GR', 42.387, 11.17, 627),
('LIQP', 'Isola di Palmaria', 'IT', 'SP', 44.067, 9.816, 497),
('LIQR', 'Radicofani', 'IT', 'SI', 42.896, 11.768, 783),
('LIQV', 'Volterra', 'IT', 'PI', 43.402, 10.86, 536),
('LIQW', 'Sarzana/Luni(AB)', 'IT', 'SP', 44.088, 9.987, 6),
('LIQZ', 'Ponza Isl', 'IT', 'SP', 40.912, 12.957, 187),
('LIRA', 'Ciampino Arpt', 'IT', 'RM', 41.808, 12.585, 101),
('LIRB', 'Vigna Di Valle', 'IT', 'RM', 42.08, 12.211, 257),
('LIRE', 'Pratica di Mare(AFB)', 'IT', 'RM', 41.656, 12.449, 16),
('LIRF', 'Rome/Fiumicino', 'IT', 'RM', 41.8, 12.239, 2),
('LIRG', 'Guidonia(AFB)', 'IT', 'RM', 41.996, 12.735, 82),
('LIRH', 'Frosinone(AFB)', 'IT', 'FR', 41.646, 13.3, 183),
('LIRI', 'Pontecagnano Arpt', 'IT', 'SA', 40.62, 14.911, 31),
('LIRJ', 'Elba Arpt', 'IT', 'EL', 42.762, 10.239, 4),
('LIRK', 'Monte Terminillo', 'IT', 'RI', 42.466, 12.979, 1721),
('LIRL', 'Latina Arpt(AFB)', 'IT', 'LT', 41.545, 12.91, 23),
('LIRM', 'Grazzanise(AFB)', 'IT', 'CE', 41.061, 14.082, 6),
('LIRN', 'Naples Intl', 'IT', 'NA', 40.885, 14.292, 76),
('LIRP', 'Pisa/Galilei Arpt', 'IT', 'PI', 43.684, 10.393, 1),
('LIRQ', 'Florence/Peretola Arpt', 'IT', 'FI', 43.81, 11.205, 33),
('LIRS', 'Grosseto(AFB)', 'IT', 'GR', 42.76, 11.072, 3),
('LIRT', 'Trevico', 'IT', 'AV', 41.047, 15.233, 1058),
('LIRU', 'Rome/Urbe(AFB)', 'IT', 'RM', 41.953, 12.5, 16),
('LIRV', 'Viterbo(AFB)', 'IT', 'VT', 42.43, 12.064, 294),
('LIRX', 'Monte Calamita', 'IT', 'LI', 42.731, 10.396, 397),
('LIRZ', 'Perugia/Egidio Arpt', 'IT', 'PG', 43.097, 12.51, 206),
('LIVC', 'Monte Cimone', 'IT', 'MO', 44.194, 10.7, 2139),
('LIVD', 'Dobbiaco', 'IT', 'BZ', 46.729, 12.228, 1221),
('LIVE', 'Resia Pass', 'IT', 'BZ', 46.833, 10.5, 1684),
('LIVF', 'Frontone', 'IT', 'PU', 43.517, 12.728, 549),
('LIVM', 'Punta Marina', 'IT', 'RA', 44.441, 12.296, 6),
('LIVO', 'Tarvisio', 'IT', 'UD', 46.506, 13.586, 782),
('LIVP', 'Monte Paganella', 'IT', 'TN', 46.143, 11.038, 2099),
('LIVR', 'Rolle Pass', 'IT', 'TN', 46.298, 11.787, 1997),
('LIVT', 'Trieste', 'IT', 'TS', 45.677, 13.754, 20),
('LIYW', 'Aviano (USAF)', 'IT', 'PN', 46.03, 12.599, 113);

INSERT INTO ASTEROIDS (ID, NAME, DESIGNATION) VALUES
(3542519, '(2010 PK9)', '2010 PK9');

INSERT INTO CLOSE_APPROACH (ASTEROID_ID, CLOSE_APPROACH_DATE, ORBITING_BODY) VALUES
(3542519, '1900-06-01', 'Merc'),
(3542519, '1900-07-07', 'Venus'),
(3542519, '1900-07-27', 'Earth'),
(3542519, '1902-02-11', 'Merc'),
(3542519, '1903-09-02', 'Earth'),
(3542519, '1904-07-26', 'Earth'),
(3542519, '1907-04-13', 'Venus'),
(3542519, '1907-08-23', 'Earth'),
(3542519, '1908-08-17', 'Earth'),
(3542519, '1909-07-31', 'Earth'),
(3542519, '1912-09-02', 'Earth'),
(3542519, '1913-07-24', 'Earth'),
(3542519, '1914-01-17', 'Venus'),
(3542519, '1915-09-12', 'Merc'),
(3542519, '1916-08-26', 'Earth'),
(3542519, '1917-05-22', 'Merc'),
(3542519, '1917-08-09', 'Earth'),
(3542519, '1918-08-04', 'Earth'),
(3542519, '1919-01-29', 'Merc'),
(3542519, '1920-10-08', 'Merc'),
(3542519, '1920-10-23', 'Venus'),
(3542519, '1921-08-31', 'Earth'),
(3542519, '1922-07-25', 'Earth'),
(3542519, '1925-03-20', 'Merc'),
(3542519, '1925-08-30', 'Earth'),
(3542519, '1926-08-01', 'Earth'),
(3542519, '1926-11-28', 'Merc'),
(3542519, '1927-07-31', 'Venus'),
(3542519, '1927-08-09', 'Earth'),
(3542519, '1928-08-09', 'Merc'),
(3542519, '1930-08-25', 'Earth'),
(3542519, '1931-07-29', 'Earth'),
(3542519, '1934-05-06', 'Venus'),
(3542519, '1934-09-02', 'Earth'),
(3542519, '1935-07-26', 'Earth'),
(3542519, '1938-08-24', 'Earth'),
(3542519, '1939-08-16', 'Earth'),
(3542519, '1940-07-02', 'Merc'),
(3542519, '1940-08-01', 'Earth'),
(3542519, '1941-02-10', 'Venus'),
(3542519, '1942-03-12', 'Merc'),
(3542519, '1943-09-03', 'Earth'),
(3542519, '1943-11-20', 'Merc'),
(3542519, '1944-07-24', 'Earth'),
(3542519, '1945-07-29', 'Merc'),
(3542519, '1947-08-29', 'Earth'),
(3542519, '1947-11-17', 'Venus'),
(3542519, '1948-08-06', 'Earth'),
(3542519, '1949-08-06', 'Earth'),
(3542519, '1950-01-09', 'Merc'),
(3542519, '1951-09-19', 'Merc'),
(3542519, '1952-08-29', 'Earth'),
(3542519, '1953-05-30', 'Merc'),
(3542519, '1953-07-26', 'Earth'),
(3542519, '1954-08-24', 'Venus'),
(3542519, '1956-09-01', 'Earth'),
(3542519, '1957-07-29', 'Earth'),
(3542519, '1960-08-21', 'Earth'),
(3542519, '1961-05-30', 'Venus'),
(3542519, '1961-08-21', 'Earth'),
(3542519, '1962-07-30', 'Earth'),
(3542519, '1965-04-23', 'Merc'),
(3542519, '1965-09-03', 'Earth'),
(3542519, '1966-07-25', 'Earth'),
(3542519, '1967-01-01', 'Merc'),
(3542519, '1968-03-06', 'Venus'),
(3542519, '1968-09-10', 'Merc'),
(3542519, '1969-08-26', 'Earth'),
(3542519, '1970-05-21', 'Merc'),
(3542519, '1970-08-11', 'Earth'),
(3542519, '1971-08-04', 'Earth'),
(3542519, '1974-09-01', 'Earth'),
(3542519, '1974-11-01', 'Merc'),
(3542519, '1974-12-11', 'Venus'),
(3542519, '1975-07-26', 'Earth'),
(3542519, '1976-07-11', 'Merc'),
(3542519, '1978-08-31', 'Earth'),
(3542519, '1979-08-01', 'Earth'),
(3542519, '1980-08-08', 'Earth'),
(3542519, '1981-09-17', 'Venus'),
(3542519, '1983-08-25', 'Earth'),
(3542519, '1984-07-28', 'Earth'),
(3542519, '1987-09-03', 'Earth'),
(3542519, '1988-06-06', 'Merc'),
(3542519, '1988-06-24', 'Venus'),
(3542519, '1988-07-25', 'Earth'),
(3542519, '1990-02-14', 'Merc'),
(3542519, '1991-08-25', 'Earth'),
(3542519, '1991-10-25', 'Merc'),
(3542519, '1992-08-15', 'Earth'),
(3542519, '1993-07-03', 'Merc'),
(3542519, '1993-08-02', 'Earth'),
(3542519, '1995-03-31', 'Venus'),
(3542519, '1996-09-02', 'Earth'),
(3542519, '1997-07-25', 'Earth'),
(3542519, '1997-12-13', 'Merc'),
(3542519, '1999-08-23', 'Merc'),
(3542519, '2000-08-28', 'Earth'),
(3542519, '2001-05-03', 'Merc'),
(3542519, '2001-08-06', 'Earth'),
(3542519, '2002-01-05', 'Venus'),
(3542519, '2002-08-06', 'Earth'),
(3542519, '2005-08-30', 'Earth'),
(3542519, '2006-07-27', 'Earth'),
(3542519, '2008-10-11', 'Venus'),
(3542519, '2009-09-01', 'Earth'),
(3542519, '2010-07-30', 'Earth'),
(3542519, '2013-08-21', 'Earth'),
(3542519, '2014-08-23', 'Earth'),
(3542519, '2014-12-04', 'Merc'),
(3542519, '2015-07-19', 'Venus'),
(3542519, '2015-07-30', 'Earth'),
(3542519, '2016-08-13', 'Merc'),
(3542519, '2018-04-22', 'Merc'),
(3542519, '2018-09-03', 'Earth'),
(3542519, '2019-07-26', 'Earth'),
(3542519, '2019-12-30', 'Merc'),
(3542519, '2022-04-25', 'Venus'),
(3542519, '2022-08-25', 'Earth'),
(3542519, '2023-08-16', 'Earth'),
(3542519, '2024-08-01', 'Earth'),
(3542519, '2026-02-17', 'Merc'),
(3542519, '2027-09-03', 'Earth'),
(3542519, '2027-10-27', 'Merc'),
(3542519, '2028-07-25', 'Earth'),
(3542519, '2029-07-06', 'Merc'),
(3542519, '2031-03-17', 'Merc'),
(3542519, '2031-08-28', 'Earth'),
(3542519, '2032-08-09', 'Earth');