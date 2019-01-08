/*
 * Ruiwen Liang
 * rliang4
 * CS180 lab3
 * queryviews.sql
 * output of GreatPublishers and BadBookTotals before and after deletions
 */

/*
 * GreatPublishers without deletion

 publisherid | numreviewedpublished 
-------------+----------------------
       31725 |                    2
       94519 |                    2
       98035 |                    3
(3 rows)
 */

/*
 * BadBookTotals without deletion

 bookid | totalordered | badquantitysum 
--------+--------------+----------------
 aaaaaa |          100 |            236
 asdfqw |           13 |            236
 bbbbbb |          100 |            236
 cccccc |           10 |            216
 ccfyls |           19 |            236
 cekpqu |           13 |            236
 dddddd |           10 |            216
 dmfnth |           12 |            236
 eeeeee |           10 |            216
 ffffff |          100 |            236
 jgzhwq |           19 |            236
 jvlfno |            6 |            212
 kgoetm |           16 |            236
 mfasyc |            5 |            236
 mibxyk |           25 |            236
 paudh1 |           27 |            236
 paudh2 |           27 |            236
 paudhc |           27 |            236
 rrrrrr |          100 |            236
 ydbymx |           22 |            236
 zdulmo |           11 |            225
 zxcvas |           67 |            236
(22 rows)
 */

DELETE FROM Orders WHERE memberID = 8844 AND bookID = 'jgzhwq';
DELETE FROM Orders WHERE memberID = 2161 AND bookID = 'rrrrrr';

/*
 * GreatPublishers after deletion
 publisherid | numreviewedpublished 
-------------+----------------------
       31725 |                    2
       94519 |                    2
       98035 |                    3
(3 rows)
 */

/*
 * BadBookTotals after deletion
 bookid | totalordered | badquantitysum 
--------+--------------+----------------
 aaaaaa |          100 |            128
 asdfqw |           13 |            128
 bbbbbb |          100 |            128
 cccccc |           10 |            108
 ccfyls |           19 |            128
 cekpqu |           13 |            128
 dddddd |           10 |            108
 dmfnth |           12 |            128
 eeeeee |           10 |            108
 ffffff |          100 |            128
 jgzhwq |           19 |            128
 jvlfno |            6 |            104
 kgoetm |           16 |            128
 mfasyc |            5 |            128
 mibxyk |           25 |            128
 paudh1 |           27 |            128
 paudh2 |           27 |            128
 paudhc |           27 |            128
 rrrrrr |          100 |            128
 ydbymx |           22 |            128
 zdulmo |           11 |            117
 zxcvas |           67 |            128
(22 rows)
 */
