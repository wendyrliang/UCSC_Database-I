COPY Lab1.authors FROM stdin USING DELIMITERS '|' ;
643|Elizabeth Conrad|9 Sierra St Roslindale, MA|28|1682-11-14
2789|Towanda Chastain|25 Oxford St Oshkosh, WI|14|1682-11-21
3372|Aurelio Beller|17 Cleveland St Coraopolis, PA|56|1691-10-05
1306|Hung Souders|72 Sierra St Irwin, PA|62|1729-06-30
2192|Darin Blanca|120 Bohemia St Bloomfield, NJ|26|1810-06-04
5068|Carlotta Carrington|8787 Temple St Vicksburg, MS|29|1850-10-11
2439|Zachery Tocci|373 Rockwell Rd Chicago, IL|71|1865-05-28
3719|Denny Schepis|7505 Pablo Ave Good, TN|9|1924-03-15
1561|Monica Collar|93 West Kent St Lansing, MI|3|1933-08-11
4017|Pura Whitener|97 Hall Ln Prattville, AL|59|1939-07-04
9164|Odell Kiely|8595 Jefferson Dr Lansdale, PA|99|1958-09-03
\.

COPY Lab1.books FROM stdin USING DELIMITERS '|' ;
ccfyls|643|Foe Without A Home|92152|1682-11-14|9300.65|F|2018-01-11|1
kgoetm|2789|Doctor Of The Plague|17265|1682-11-21|400.55|N|2018-03-14|25
jvlfno|3372|Thieves Of Freedom|25327|1691-10-05|63.5|N|2018-04-21|30
zdulmo|1306|Armies Of The Great|55576|1729-06-30|52.45|N|2018-06-10|30
ydbymx|2192|Dogs And Cats|94519|1810-06-04|89.4|F|2018-07-01|22
mfasyc|5068|Body Of The Lost Ones|32326|1850-10-11|20.64|F|2018-08-06|5
cekpqu|2439|Edge Of My Imagination|93209|1865-05-28|23.93|N|2018-09-11|13
mibxyk|3719|Sailing Into The Champions|22778|1924-03-15|650.26|F|2018-09-18|19
dmfnth|1561|Bow Of Freedom|98035|1933-08-11|28.72|N|2018-10-04|29
jgzhwq|111|Jumping Into The River|31725|2013-07-28|24.09|F|2018-11-12|38
paudhc|222|Battling At The Depths|22139|2017-09-21|9.46|F|2018-12-01|27
asdfqw|111|Falling Into The Ocean|31725|2013-08-28|23.99|F|2018-11-12|13
zxcvas|2192|Animalia Unbound|94519|1990-07-04|9.99|F|2000-07-10|67
\.

COPY Lab1.members FROM stdin USING DELIMITERS '|' ;
4843|Debbi Geissler|2001-07-23|2019-07-23|t
8000|Khadijah Beeson|2004-07-29|2019-07-29|t
9315|Wendy Sacks|2005-12-09|2019-12-09|t
9557|Janell Bagnall|2006-06-25|2019-06-25|f
7447|Emil Cover|2011-12-08|2019-12-08|t
1794|Annis Hylton|2014-04-08|2019-04-08|t
9755|Amy Astorga|2014-07-13|2019-07-13|f
2161|Kathi Renfroe|2015-06-12|2019-06-12|f
8737|Remedios Grim|2017-11-10|2019-11-10|f
8844|Carola Quinley|2017-12-10|2019-12-10|t
6247|Edison Alto|2018-06-05|2019-06-05|t
\.

COPY Lab1.orders FROM stdin USING DELIMITERS '|' ;
4843|ccfyls|2006-03-04|6
8000|kgoetm|2006-08-05|10
9315|jvlfno|2007-10-18|2
9557|zdulmo|2008-01-12|2
7447|ydbymx|2008-03-15|6
1794|mfasyc|2008-04-10|4
9755|cekpqu|2009-01-30|1
2161|mibxyk|2009-09-14|8
8737|dmfnth|2010-03-08|9
8844|jgzhwq|2011-05-19|4
6247|paudhc|2012-01-15|4
2161|ccfyls|2012-09-15|7
8737|kgoetm|2012-09-21|6
8844|jvlfno|2012-12-19|4
6247|zdulmo|2013-05-23|9
9557|ydbymx|2013-09-03|3
7447|mfasyc|2014-04-11|6
1794|cekpqu|2014-06-07|2
9755|mibxyk|2014-10-15|9
2161|dmfnth|2014-12-13|3
8737|jgzhwq|2016-10-03|5
8844|paudhc|2017-10-03|1
2161|mibxyk|2016-01-31|8
2161|jgzhwq|2016-01-31|10
\.

COPY Lab1.publishers FROM stdin USING DELIMITERS '|' ;
92152|Laudise House|38 Sunny St Bowl, VA
17265|Binyx Inc.|7100 Stony Ave Jamaica, NY
25327|Katude Publishers|88 Holly St Boynton Beach, FL
55576|Antemm House|68 Golf St Greenfield, IN
94519|Difity Ltd.|25 Mountain Dr Mableton, GA
32326|Superou Corp.|8270 Wood St Rochester, NY
93209|Archity Bros.|203 Morris Ave Beltsville, MD
22778|Zanyx Publishing Group  |5 Piper Crt  Erie, PA
98035|Omizu House|164 Pablo Ave Alexandria, VA
31725|Symity Publishing|369 View St. Highland, IL
22139|Semiveo House|26 Creek St Frederick, VA
\.

COPY Lab1.reviews FROM stdin USING DELIMITERS '|' ;
96542|ccfyls|2006-05-23|2
57995|ccfyls|2006-05-26|5
66269|ccfyls|2006-06-30|5
57995|paudhc|2018-01-05|3
87252|ydbymx|2007-08-10|1
27550|ydbymx|2007-11-15|3
84681|cekpqu|2008-08-31|4
88596|cekpqu|2009-02-04|3
96542|jgzhwq|2017-08-23|4
85398|jgzhwq|2011-04-15|4
79320|paudhc|2011-06-10|2
88596|ccfyls|2011-06-16|5
30108|ccfyls|2013-09-07|4
85398|ccfyls|2014-01-22|5
75241|ydbymx|2015-03-04|5
27550|cekpqu|2016-07-25|5
\.
