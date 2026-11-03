--------------------------------------------------------
--  Fichier créé - jeudi-novembre-12-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure SELECT_FL1066
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SELECT_FL1066" 
( AGC_IN IN CHAR
, NAT_IN IN NUMBER
, ORD_IN IN NUMBER
, CLE_IN IN NUMBER
, ENG_IN IN CHAR
, OPE_IN IN CHAR
) AS
BEGIN
--EXECUTE IMMEDIATE ' TRUNCATE TABLE FL1066_TEMP';
if OPE_IN = 'T096' then
     insert into FL1066_TEMP_96
     (select * from FL1066 where CPTAGC66=AGC_IN and CPTNAT66=NAT_IN and CPTORD66=ORD_IN and CPTCLE66=CLE_IN
                             and ENGOPE66=ENG_IN and SU1066=0 and (PPLINT66!=1 or ECHU66!=1 or PFCAGC66!=1));
end if;

if OPE_IN = 'T064' then
     insert into FL1066_TEMP_64
     (select * from FL1066 where CPTAGC66=AGC_IN and CPTNAT66=NAT_IN and CPTORD66=ORD_IN and CPTCLE66=CLE_IN
                             and ENGOPE66=ENG_IN and SU1066=0
                             and PPLINT66=1 and ECHU66=1 and PFCAGC66=1);
end if;

standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure APUR_AUT0_T096
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "APUR_AUT0_T096" 
( AGCCTX IN CHAR
, NATCTX IN NUMBER
, ORDCTX IN NUMBER
, CLECTX IN NUMBER
, ENGCTX IN CHAR
, USROPE IN CHAR
) AS
CURSOR  CUR1066 IS select * from FL1066
                   where (CPTAGC66=AGCCTX and CPTNAT66=NATCTX and CPTORD66=ORDCTX and CPTCLE66=CLECTX
                   and ENGOPE66=ENGCTX and SU1066=0 and (PPLINT66!=1 or ECHU66!=1 or PFCAGC66!=1));
ligne1066 FL1066%ROWTYPE;

JCOMPTABLE date;
NOMCPT CHAR(30);

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR1066;
  FETCH CUR1066 INTO ligne1066;
  WHILE CUR1066%FOUND LOOP
      SELECT NOMRSC INTO NOMCPT from FL1030 where CODAGC1030=AGCCTX and CODNAT1030=NATCTX AND ORDCPT1030=ORDCTX AND KLECPT1030=CLECTX;
      insert into FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
                          ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,
                          AGYOPE3002,NAYOPE3002,ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,
                          COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,
                          FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,NATOPE3002,TYPOPE3002,
                          FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
                          PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002)
             values (0,'93',TO_DATE(JCOMPTABLE),'T096',ligne1066.AGCNUM66,ligne1066.SERNUM66,ligne1066.ORDNUM66,
                     ligne1066.MNTOPE66,ligne1066.ENGOPE66,AGCCTX,NATCTX,ORDCTX,CLECTX,'','',USROPE,
                     '','','','','','','',0,0,0,
                     NOMCPT,ligne1066.ECHOPE66,ligne1066.PPLINT66,'','','','',TO_DATE(JCOMPTABLE),'','',
                     ligne1066.SANEFF66,1,09,3,'','','','','','','','',ligne1066.ECHU66,ligne1066.PFCAGC66,'','','','','');
    FETCH CUR1066 INTO ligne1066;
    END LOOP;
    CLOSE CUR1066;
    standard.commit;
END;

/
