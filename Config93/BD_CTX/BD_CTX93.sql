--------------------------------------------------------
--  Fichier créé - mardi-octobre-20-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BALTAB
--------------------------------------------------------

  CREATE TABLE "BALTAB" 
   (	"ANNEE" CHAR(2 BYTE), 
	"MOIS" CHAR(2 BYTE), 
	"TYPBAL" CHAR(1 BYTE)
   );
--------------------------------------------------------
--  DDL for Table CNFTAB
--------------------------------------------------------

  CREATE TABLE "CNFTAB" 
   (	"IDCNF" CHAR(6 BYTE), 
	"CODCNF" NUMBER(1,0)
   ) ;

REM INSERTING into CNFTAB
SET DEFINE OFF;
Insert into CNFTAB (IDCNF,CODCNF) values ('SYSTEM','0');
--------------------------------------------------------
--  DDL for Index CNFTAB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNFTAB_PK" ON "CNFTAB" ("IDCNF");

--------------------------------------------------------
--  Constraints for Table CNFTAB
--------------------------------------------------------

  ALTER TABLE "CNFTAB" ADD CONSTRAINT "CNFTAB_PK" PRIMARY KEY ("IDCNF") USING INDEX ENABLE;
 
  ALTER TABLE "CNFTAB" MODIFY ("IDCNF" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Table FERRIE
--------------------------------------------------------

  CREATE TABLE "FERRIE" 
   (	"SUFER" NUMBER(1,0), 
	"DATFER" DATE, 
	"DESFER" CHAR(30 BYTE)
   );
--------------------------------------------------------
--  DDL for Index FERRIE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FERRIE_PK" ON "FERRIE" ("DATFER");
--------------------------------------------------------
--  Constraints for Table FERRIE
--------------------------------------------------------

  ALTER TABLE "FERRIE" ADD CONSTRAINT "FERRIE_PK" PRIMARY KEY ("DATFER") USING INDEX ENABLE;
 
  ALTER TABLE "FERRIE" MODIFY ("DATFER" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Table FLDATE
--------------------------------------------------------

  CREATE TABLE "FLDATE" 
   (	"DATOPE" DATE, 
	"FERDAT" NUMBER(1,0), 
	"CLODAT" NUMBER(1,0), 
	"EMPDAT" CHAR(5 BYTE)
   );
REM INSERTING into FLDATE
SET DEFINE OFF;
Insert into FLDATE (DATOPE,FERDAT,CLODAT,EMPDAT) values (to_date('20/11/15','DD/MM/RR'),'0','0',null);
--------------------------------------------------------
--  DDL for Index FLDATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FLDATE_PK" ON "FLDATE" ("DATOPE");
--------------------------------------------------------
--  Constraints for Table FLDATE
--------------------------------------------------------

  ALTER TABLE "FLDATE" ADD CONSTRAINT "FLDATE_PK" PRIMARY KEY ("DATOPE") USING INDEX ENABLE;
 
  ALTER TABLE "FLDATE" MODIFY ("DATOPE" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Table FLETAT
--------------------------------------------------------

  CREATE TABLE "FLETAT" 
   (	"CAGC" CHAR(2 BYTE), 
	"CLIB" CHAR(30 BYTE), 
	"CTOTDBI" FLOAT(126), 
	"CTOTCRE" FLOAT(126), 
	"CDIFF" FLOAT(126), 
	"COBS" CHAR(16 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1000
--------------------------------------------------------

  CREATE TABLE "FL1000" 
   (	"SU3002" NUMBER(1,0), 
	"CODAGC3002" CHAR(2 BYTE), 
	"DATOPE3002" DATE, 
	"CODOPE3002" CHAR(4 BYTE), 
	"AGCNUM3002" CHAR(2 BYTE), 
	"SERNUM3002" CHAR(1 BYTE), 
	"ORDNUM3002" NUMBER(7,0), 
	"MNTOPE3002" FLOAT(126), 
	"ENGOPE3002" CHAR(3 BYTE), 
	"AGXOPE3002" CHAR(2 BYTE), 
	"NAXOPE3002" NUMBER(2,0), 
	"ORXOPE3002" NUMBER(5,0), 
	"KLXOPE3002" NUMBER(1,0), 
	"CODMRC3002" NUMBER(5,0), 
	"TRMOPE3002" CHAR(2 BYTE), 
	"USROPE3002" CHAR(5 BYTE), 
	"AGYOPE3002" CHAR(2 BYTE), 
	"NAYOPE3002" NUMBER(2,0), 
	"ORYOPE3002" NUMBER(5,0), 
	"KLYOPE3002" NUMBER(1,0), 
	"MEGOPE3002" CHAR(2 BYTE), 
	"PTTOPE3002" NUMBER(4,0), 
	"BAQOPE3002" CHAR(6 BYTE), 
	"FRAOPE3002" FLOAT(126), 
	"COMOPE3002" FLOAT(126), 
	"TPSOPE3002" FLOAT(126), 
	"DSCOPE3002" CHAR(30 BYTE), 
	"ECHOPE3002" DATE, 
	"PPLINT3002" NUMBER(1,0), 
	"ACCEFF3002" NUMBER(1,0), 
	"CREEFF3002" DATE, 
	"TIMOPE3002" NUMBER(5,0), 
	"FRCMNT3002" NUMBER(1,0), 
	"DATVAL3002" DATE, 
	"FRCVAL3002" NUMBER(1,0), 
	"AVIOPE3002" NUMBER(1,0), 
	"RESEFF3002" NUMBER(1,0), 
	"CATOPE3002" NUMBER(1,0), 
	"NATOPE3002" NUMBER(2,0), 
	"TYPOPE3002" NUMBER(1,0), 
	"FRCAUT3002" NUMBER(1,0), 
	"REFOPE3002" CHAR(10 BYTE), 
	"BLKOPE3002" FLOAT(126), 
	"VRSOPE20" CHAR(20 BYTE), 
	"VRSOPE18" CHAR(18 BYTE), 
	"BNFOPE17" CHAR(17 BYTE), 
	"BNFOPE15" CHAR(15 BYTE), 
	"CODAVO3002" CHAR(3 BYTE), 
	"ECHU3002" CHAR(1 BYTE), 
	"PFCAGC3002" CHAR(1 BYTE), 
	"AGZREC3002" CHAR(2 BYTE), 
	"INTPRE3002" FLOAT(126), 
	"INTCOU3002" FLOAT(126), 
	"MNTCHG3002" FLOAT(126), 
	"MNTIMP3002" FLOAT(126)
   );
--------------------------------------------------------
--  DDL for Table FL1003
--------------------------------------------------------

  CREATE TABLE "FL1003" 
   (	"SU1003" NUMBER(1,0), 
	"AGCMEG03" CHAR(2 BYTE), 
	"CODAGC03" CHAR(2 BYTE), 
	"DATOPE03" DATE, 
	"CODOPE03" CHAR(4 BYTE), 
	"AGCNUM03" CHAR(2 BYTE), 
	"SERNUM03" CHAR(1 BYTE), 
	"ORDNUM03" NUMBER(7,0), 
	"ENGOPE03" CHAR(3 BYTE), 
	"MNTOPE03" FLOAT(126), 
	"AG1OPE03" CHAR(2 BYTE), 
	"NA1OPE03" NUMBER(2,0), 
	"OR1OPE03" NUMBER(5,0), 
	"KL1OPE03" NUMBER(1,0), 
	"INSMEG03" CHAR(3 BYTE), 
	"MEGMEG03" CHAR(2 BYTE), 
	"PTTOPE03" NUMBER(4,0), 
	"BAQOPE03" CHAR(6 BYTE), 
	"AGYOPE03" CHAR(2 BYTE), 
	"INFMEG03" NUMBER(2,0), 
	"DATMEG03" DATE, 
	"DSCOPE03" CHAR(30 BYTE), 
	"ECHOPE03" DATE, 
	"ACCEFF03" NUMBER(1,0), 
	"CREEFF03" DATE, 
	"TYPESC03" NUMBER(1,0), 
	"LIBOPE03" CHAR(20 BYTE), 
	"USROPE03" CHAR(5 BYTE), 
	"TRMOPE03" NUMBER(2,0), 
	"TIMOPE03" NUMBER(5,0), 
	"DATVAL03" DATE, 
	"AGCREF03" CHAR(2 BYTE), 
	"SERREF03" CHAR(1 BYTE), 
	"ORDREF03" NUMBER(7,0), 
	"NUMBRD03" NUMBER(7,0), 
	"NOMCPT03" CHAR(30 BYTE), 
	"PTTCPT03" NUMBER(4,0), 
	"CODESC03" NUMBER(1,0), 
	"CHAINE03" NUMBER(1,0), 
	"NBREFF03" NUMBER(4,0), 
	"TAUTVA03" NUMBER(6,3), 
	"FILLER03" CHAR(10 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1019
--------------------------------------------------------

  CREATE TABLE "FL1019" 
   (	"SU1019" NUMBER(1,0), 
	"CODAGC19" CHAR(2 BYTE), 
	"DATOPE19" DATE, 
	"CODOPE19" CHAR(4 BYTE), 
	"AGCOPE19" CHAR(2 BYTE), 
	"SEROPE19" CHAR(1 BYTE), 
	"ORDOPE19" NUMBER(7,0), 
	"REFOPE19" NUMBER(10,0), 
	"AGXOPE19" CHAR(2 BYTE), 
	"NAXOPE19" NUMBER(2,0), 
	"ORXOPE19" NUMBER(5,0), 
	"KLXOPE19" NUMBER(1,0), 
	"CGLOPE19" NUMBER(5,0), 
	"MEGOPE19" CHAR(2 BYTE), 
	"MEGMEG19" CHAR(2 BYTE), 
	"MNTDBI19" FLOAT(126), 
	"MNTCRE19" FLOAT(126), 
	"DATVAL19" DATE, 
	"LIBOPE19" CHAR(19 BYTE), 
	"LIBOPE29" CHAR(29 BYTE), 
	"AGYOPE19" CHAR(2 BYTE), 
	"NAYOPE19" NUMBER(2,0), 
	"ORYOPE19" NUMBER(5,0), 
	"KLYOPE19" NUMBER(1,0), 
	"FRCAUT19" NUMBER(1,0), 
	"USROPE19" NUMBER(5,0), 
	"TRMOPE19" NUMBER(2,0), 
	"TIMOPE19" NUMBER(5,0), 
	"PNTOPE19" CHAR(6 BYTE), 
	"ABROPE19" CHAR(4 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1030
--------------------------------------------------------

  CREATE TABLE "FL1030" 
   (	"SU1030" NUMBER(1,0), 
	"CODAGC1030" CHAR(2 BYTE), 
	"CODNAT1030" NUMBER(2,0), 
	"ORDCPT1030" NUMBER(5,0), 
	"KLECPT1030" NUMBER(1,0), 
	"DVSCPT1030" CHAR(3 BYTE), 
	"CODACT1030" NUMBER(4,0), 
	"CGLCPT1030" CHAR(6 BYTE), 
	"CODPTT1030A" NUMBER(4,0), 
	"CODPAY1030" CHAR(2 BYTE), 
	"CATCLT1030" NUMBER(1,0), 
	"CODDOC1030" NUMBER(1,0), 
	"ORDDOC1030" CHAR(8 BYTE), 
	"DATLIV1030" DATE DEFAULT NULL, 
	"LIELIV10" CHAR(10 BYTE), 
	"CODDOC1030A" NUMBER(1,0), 
	"CODPTT1030B" NUMBER(4,0), 
	"BIDE1030" CHAR(5 BYTE), 
	"NOMRSC" CHAR(30 BYTE), 
	"ADRPRS" CHAR(46 BYTE), 
	"EMPOUV10" NUMBER(5,0), 
	"DNECPT10" NUMBER(8,0), 
	"SRVCPT10" NUMBER(2,0), 
	"SGNSLD10" CHAR(1 BYTE), 
	"SLDCPT10" FLOAT(126), 
	"SLCCPT10" CHAR(12 BYTE), 
	"CODUTL10" NUMBER(1,0), 
	"PPLAGC30" CHAR(2 BYTE), 
	"PPLNAT30" NUMBER(2,0), 
	"PPLORD30" NUMBER(5,0), 
	"PPLCLE30" NUMBER(1,0), 
	"CLASSE30" NUMBER(1,0), 
	"PRFL10" NUMBER(1,0), 
	"PRFM10" NUMBER(1,0), 
	"PRFN10" NUMBER(1,0), 
	"DBICPT10" NUMBER(2,0), 
	"BIDCPT30" CHAR(1 BYTE), 
	"NBCDVC10" NUMBER(1,0), 
	"PRGSEC10" NUMBER(2,0), 
	"DATSEC10" DATE, 
	"INTCHQ10" NUMBER(1,0), 
	"OUVCPT10" DATE, 
	"CLOCPT10" DATE, 
	"SEXCPT10" CHAR(1 BYTE), 
	"NAICPT10" DATE, 
	"SARCPT10" NUMBER(1,0), 
	"JNTCPT10" NUMBER(1,0), 
	"FRMCPT10" CHAR(4 BYTE), 
	"INDCHO10" NUMBER(1,0), 
	"INDEFO10" NUMBER(1,0), 
	"ADRPRF30" CHAR(30 BYTE), 
	"CODAVO10" CHAR(3 BYTE), 
	"COTSGN10" CHAR(3 BYTE), 
	"COTCRC10" FLOAT(126), 
	"NBRIMC10" NUMBER(3,0), 
	"MTFOUV10" NUMBER(1,0), 
	"CODCLO10" NUMBER(1,0), 
	"NIVCPT10" NUMBER(1,0), 
	"MTFCLO10" NUMBER(1,0), 
	"FONCPT10" NUMBER(1,0), 
	"INDTEL10" NUMBER(2,0), 
	"TELCPT10" NUMBER(6,0), 
	"NBRIMF10" NUMBER(3,0), 
	"PTTRGC30" NUMBER(4,0), 
	"NBRMCR10" NUMBER(4,0), 
	"INVADR10" CHAR(1 BYTE), 
	"AGOCPT10" CHAR(1 BYTE), 
	"SLDAMY10" FLOAT(126), 
	"UTLCPT10" FLOAT(126), 
	"BLKCPT10" FLOAT(126), 
	"SLDMMY10" FLOAT(126), 
	"SLDMMX10" FLOAT(126), 
	"SLDMMI10" FLOAT(126), 
	"MVDMOI10" FLOAT(126), 
	"CODOPE29" CHAR(4 BYTE), 
	"MVCANN10" FLOAT(126), 
	"CHQCPT10" CHAR(19 BYTE), 
	"INDRCS10" CHAR(1 BYTE), 
	"INFRCS10" NUMBER(1,0), 
	"NUMRCS10" CHAR(6 BYTE), 
	"ANNRCS10" CHAR(4 BYTE), 
	"CCACPT10" NUMBER(5,0), 
	"NUMBCT10" NUMBER(7,0), 
	"DATBCT10" DATE, 
	"PRFP10" CHAR(1 BYTE), 
	"PRFQ10" CHAR(1 BYTE), 
	"PRFJJ10" CHAR(1 BYTE), 
	"MATBCT30" NUMBER(6,0), 
	"QLTGRN10" CHAR(1 BYTE), 
	"OPTCHQ10" CHAR(1 BYTE), 
	"EFFCPT10" NUMBER(1,0), 
	"NOMRPR10" CHAR(30 BYTE), 
	"NUMANL10" NUMBER(6,0), 
	"INFCMP10" CHAR(1 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1041
--------------------------------------------------------

  CREATE TABLE "FL1041" 
   (	"SU1041" NUMBER(1,0), 
	"CODCGL1041" NUMBER(5,0), 
	"LIBDGL" CHAR(59 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1061
--------------------------------------------------------

  CREATE TABLE "FL1061" 
   (	"SU1061" NUMBER(1,0), 
	"AGCNUM61" CHAR(2 BYTE), 
	"SERNUM61" CHAR(1 BYTE), 
	"ORDNUM61" NUMBER(7,0), 
	"MNTOPE61" FLOAT(126), 
	"ENGOPE61" CHAR(3 BYTE), 
	"CPTAGC61" CHAR(2 BYTE), 
	"CPTNAT61" NUMBER(2,0), 
	"CPTORD61" NUMBER(5,0), 
	"CPTCLE61" NUMBER(1,0), 
	"NOMCPT61" CHAR(21 BYTE), 
	"SANEFF61" NUMBER(1,0), 
	"AGHRACS" CHAR(2 BYTE), 
	"DATREC61" DATE, 
	"ECHOPE61" DATE, 
	"DATCRE61" DATE, 
	"PPLINT61" NUMBER(1,0), 
	"TAUTVA61" NUMBER(6,4), 
	"SECHOPE61" CHAR(2 BYTE), 
	"FILLER61" CHAR(10 BYTE), 
	"TAUINT61" NUMBER(6,4), 
	"TAUCPC61" NUMBER(5,4), 
	"NBREFF61" NUMBER(4,0), 
	"TAUMRC61" NUMBER(6,4), 
	"ECHU61" NUMBER(1,0), 
	"PRCAGC61" NUMBER(1,0)
   );
--------------------------------------------------------
--  DDL for Table FL1061_AAPUR
--------------------------------------------------------

  CREATE TABLE "FL1061_AAPUR" 
   (	"SU1061A" NUMBER(1,0), 
	"CPTAGC61A" CHAR(2 BYTE), 
	"CPTNAT61A" NUMBER(2,0), 
	"CPTORD61A" NUMBER(5,0), 
	"CPTCLE61A" NUMBER(1,0), 
	"ENGOPE61A" CHAR(3 BYTE), 
	"NBRINS61A" NUMBER(4,0)
   );
--------------------------------------------------------
--  DDL for Table FL1061_APURE
--------------------------------------------------------

  CREATE TABLE "FL1061_APURE" 
   (	"SU1061P" NUMBER(1,0), 
	"CPTAGC61P" CHAR(2 BYTE), 
	"CPTNAT61P" NUMBER(2,0), 
	"CPTORD61P" NUMBER(5,0), 
	"CPTCLE61P" NUMBER(1,0), 
	"ENGOPE61P" CHAR(3 BYTE), 
	"AGCCTX61P" CHAR(2 BYTE), 
	"NATCTX61P" NUMBER(2,0), 
	"ORDCTX61P" NUMBER(5,0), 
	"CLECTX61P" NUMBER(1,0)
   );
--------------------------------------------------------
--  DDL for Table FL1061_TEMP
--------------------------------------------------------

  CREATE TABLE "FL1061_TEMP" 
   (	"SU1061T" NUMBER(1,0), 
	"AGCNUM61T" CHAR(2 BYTE), 
	"SERNUM61T" CHAR(1 BYTE), 
	"ORDNUM61T" NUMBER(7,0), 
	"MNTOPE61T" FLOAT(126), 
	"ENGOPE61T" CHAR(3 BYTE), 
	"CPTAGC61T" CHAR(2 BYTE), 
	"CPTNAT61T" NUMBER(2,0), 
	"CPTORD61T" NUMBER(5,0), 
	"CPTCLE61T" NUMBER(1,0), 
	"NOMCPT61T" CHAR(21 BYTE), 
	"SANEFF61T" NUMBER(1,0), 
	"AGHRACST" CHAR(2 BYTE), 
	"DATREC61T" DATE, 
	"ECHOPE61T" DATE, 
	"DATCRE61T" DATE, 
	"PPLINT61T" NUMBER(1,0), 
	"TAUTVA61T" NUMBER(6,4), 
	"SECHOPE61T" CHAR(2 BYTE), 
	"FILLER61T" CHAR(10 BYTE), 
	"TAUINT61T" NUMBER(6,4), 
	"TAUCPC61T" NUMBER(5,4), 
	"NBREFF61T" NUMBER(4,0), 
	"TAUMRC61T" NUMBER(6,4), 
	"ECHU61T" NUMBER(1,0), 
	"PRCAGC61T" NUMBER(1,0)
   );
--------------------------------------------------------
--  DDL for Table FL1062
--------------------------------------------------------

  CREATE TABLE "FL1062" 
   (	"SU1062" NUMBER(1,0), 
	"AGCNUM62" CHAR(2 BYTE), 
	"SERNUM62" CHAR(1 BYTE), 
	"ORDNUM62" NUMBER(7,0), 
	"MNTOPE62" FLOAT(126), 
	"ENGOPE62" CHAR(3 BYTE), 
	"CPTAGC62" CHAR(2 BYTE), 
	"CPTNAT62" NUMBER(2,0), 
	"CPTORD62" NUMBER(5,0), 
	"CPTCLE62" NUMBER(1,0), 
	"NOMCPT62" CHAR(21 BYTE), 
	"SANEFF62" NUMBER(1,0), 
	"AGHRACS1" CHAR(2 BYTE), 
	"DATREC62" DATE, 
	"ECHOPE62" DATE, 
	"DATCRE62" DATE, 
	"PPLINT62" NUMBER(1,0), 
	"TAUTVA62" NUMBER(6,4), 
	"DATREM62" DATE, 
	"DATENT62" DATE, 
	"TAUINT62" NUMBER(6,4), 
	"TAUCPC62" NUMBER(5,4), 
	"NBREFF62" NUMBER(4,0), 
	"TAUMRC62" NUMBER(6,4), 
	"ECHU62" NUMBER(1,0), 
	"PFCAGC62" NUMBER(1,0)
   );
--------------------------------------------------------
--  DDL for Table FL1062_AAPUR
--------------------------------------------------------

  CREATE TABLE "FL1062_AAPUR" 
   (	"SU1062A" NUMBER(1,0), 
	"CPTAGC62A" CHAR(2 BYTE), 
	"CPTNAT62A" NUMBER(2,0), 
	"CPTORD62A" NUMBER(5,0), 
	"CPTCLE62A" NUMBER(1,0), 
	"ENGOPE62A" CHAR(3 BYTE), 
	"NBRINS62A" NUMBER(4,0)
   );
--------------------------------------------------------
--  DDL for Table FL1062_APURE
--------------------------------------------------------

  CREATE TABLE "FL1062_APURE" 
   (	"SU1062P" NUMBER(1,0), 
	"CPTAGC62P" CHAR(2 BYTE), 
	"CPTNAT62P" NUMBER(2,0), 
	"CPTORD62P" NUMBER(5,0), 
	"CPTCLE62P" NUMBER(1,0), 
	"ENGOPE62P" CHAR(3 BYTE), 
	"AGCCTX62P" CHAR(2 BYTE), 
	"NATCTX62P" NUMBER(2,0), 
	"ORDCTX62P" NUMBER(5,0), 
	"CLECTX62P" NUMBER(1,0)
   );
--------------------------------------------------------
--  DDL for Table FL1062_TEMP
--------------------------------------------------------

  CREATE TABLE "FL1062_TEMP" 
   (	"SU1062T" NUMBER(1,0), 
	"AGCNUM62T" CHAR(2 BYTE), 
	"SERNUM62T" CHAR(1 BYTE), 
	"ORDNUM62T" NUMBER(7,0), 
	"MNTOPE62T" FLOAT(126), 
	"ENGOPE62T" CHAR(3 BYTE), 
	"CPTAGC62T" CHAR(2 BYTE), 
	"CPTNAT62T" NUMBER(2,0), 
	"CPTORD62T" NUMBER(5,0), 
	"CPTCLE62T" NUMBER(1,0), 
	"NOMCPT62T" CHAR(21 BYTE), 
	"SANEFF62T" NUMBER(1,0), 
	"AGHRACS1T" CHAR(2 BYTE), 
	"DATREC62T" DATE, 
	"ECHOPE62T" DATE, 
	"DATCRE62T" DATE, 
	"PPLINT62T" NUMBER(1,0), 
	"TAUTVA62T" NUMBER(6,4), 
	"DATREM62T" DATE, 
	"DATENT62T" DATE, 
	"TAUINT62T" NUMBER(6,4), 
	"TAUCPC62T" NUMBER(5,4), 
	"NBREFF62T" NUMBER(4,0), 
	"TAUMRC62T" NUMBER(6,4), 
	"ECHU62TT" NUMBER(1,0), 
	"PFCAGC62T" NUMBER(1,0)
   );
--------------------------------------------------------
--  DDL for Table FL1066
--------------------------------------------------------

  CREATE TABLE "FL1066" 
   (	"SU1066" NUMBER(1,0), 
	"AGCNUM66" CHAR(2 BYTE), 
	"SERNUM66" CHAR(1 BYTE), 
	"ORDNUM66" NUMBER(7,0), 
	"MNTOPE66" FLOAT(126), 
	"ENGOPE66" CHAR(3 BYTE), 
	"BAQOPE66" CHAR(6 BYTE), 
	"CPTAGC66" CHAR(2 BYTE), 
	"CPTNAT66" NUMBER(2,0), 
	"CPTORD66" NUMBER(5,0), 
	"CPTCLE66" NUMBER(1,0), 
	"DATFLC66" DATE, 
	"DATFLD66" DATE, 
	"NOMCPT66" CHAR(30 BYTE), 
	"AGYOPE66" CHAR(2 BYTE), 
	"PTTOPE66" NUMBER(4,0), 
	"ECHOPE66" DATE, 
	"DSCOPE66" CHAR(30 BYTE), 
	"DATREC66" DATE, 
	"PPLINT66" NUMBER(1,0), 
	"ECHU66" NUMBER(1,0), 
	"PFCAGC66" NUMBER(1,0), 
	"AGHRACS66" CHAR(2 BYTE), 
	"FILLER66" CHAR(1 BYTE), 
	"ACCEFF66" NUMBER(1,0), 
	"RESEFF66" NUMBER(1,0), 
	"DATRES66" DATE, 
	"ETAEFF66" CHAR(2 BYTE), 
	"SANEFF66" NUMBER(1,0), 
	"TAUMRC66" NUMBER(6,4), 
	"TAUINT66" NUMBER(6,4), 
	"TAUTVA66" NUMBER(6,4), 
	"TAUCPC66" NUMBER(5,4)
   );
--------------------------------------------------------
--  DDL for Table FL1066_AAPUR_64
--------------------------------------------------------

  CREATE TABLE "FL1066_AAPUR_64" 
   (	"SU1066A" NUMBER(1,0), 
	"CPTAGC66A" CHAR(2 BYTE), 
	"CPTNAT66A" NUMBER(2,0), 
	"CPTORD66A" NUMBER(5,0), 
	"CPTCLE66A" NUMBER(1,0), 
	"ENGOPE66A" CHAR(3 BYTE), 
	"NBRINS66A" NUMBER(4,0)
   );
--------------------------------------------------------
--  DDL for Table FL1066_AAPUR_96
--------------------------------------------------------

  CREATE TABLE "FL1066_AAPUR_96" 
   (	"SU1066A" NUMBER(1,0), 
	"CPTAGC66A" CHAR(2 BYTE), 
	"CPTNAT66A" NUMBER(2,0), 
	"CPTORD66A" NUMBER(5,0), 
	"CPTCLE66A" NUMBER(1,0), 
	"ENGOPE66A" CHAR(3 BYTE), 
	"NBRINS66A" NUMBER(4,0)
   );
--------------------------------------------------------
--  DDL for Table FL1066_APURE_64
--------------------------------------------------------

  CREATE TABLE "FL1066_APURE_64" 
   (	"SU1066P" NUMBER(1,0), 
	"CPTAGC66P" CHAR(2 BYTE), 
	"CPTNAT66P" NUMBER(2,0), 
	"CPTORD66P" NUMBER(5,0), 
	"CPTCLE66P" NUMBER(1,0), 
	"ENGOPE66P" CHAR(3 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1066_APURE_96
--------------------------------------------------------

  CREATE TABLE "FL1066_APURE_96" 
   (	"SU1066P" NUMBER(1,0), 
	"CPTAGC66P" CHAR(2 BYTE), 
	"CPTNAT66P" NUMBER(2,0), 
	"CPTORD66P" NUMBER(5,0), 
	"CPTCLE66P" NUMBER(1,0), 
	"ENGOPE66P" CHAR(3 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1066_TEMP_64
--------------------------------------------------------

  CREATE TABLE "FL1066_TEMP_64" 
   (	"SU1066T" NUMBER(1,0), 
	"AGCNUM66T" CHAR(2 BYTE), 
	"SERNUM66T" CHAR(1 BYTE), 
	"ORDNUM66T" NUMBER(7,0), 
	"MNTOPE66T" FLOAT(126), 
	"ENGOPE66T" CHAR(3 BYTE), 
	"BAQOPE66T" CHAR(6 BYTE), 
	"CPTAGC66T" CHAR(2 BYTE), 
	"CPTNAT66T" NUMBER(2,0), 
	"CPTORD66T" NUMBER(5,0), 
	"CPTCLE66T" NUMBER(1,0), 
	"DATFLC66T" DATE, 
	"DATFLD66T" DATE, 
	"NOMCPT66T" CHAR(30 BYTE), 
	"AGYOPE66T" CHAR(2 BYTE), 
	"PTTOPE66T" NUMBER(4,0), 
	"ECHOPE66T" DATE, 
	"DSCOPE66T" CHAR(30 BYTE), 
	"DATREC66T" DATE, 
	"PPLINT66T" NUMBER(1,0), 
	"ECHU66T" NUMBER(1,0), 
	"PFCAGC66T" NUMBER(1,0), 
	"AGHRACS66T" CHAR(2 BYTE), 
	"FILLER66T" CHAR(1 BYTE), 
	"ACCEFF66T" NUMBER(1,0), 
	"RESEFF66T" NUMBER(1,0), 
	"DATRES66T" DATE, 
	"ETAEFF66T" CHAR(2 BYTE), 
	"SANEFF66T" NUMBER(1,0), 
	"TAUMRC66T" NUMBER(6,4), 
	"TAUINT66T" NUMBER(6,4), 
	"TAUTVA66T" NUMBER(6,4), 
	"TAUCPC66T" NUMBER(5,4)
   );
--------------------------------------------------------
--  DDL for Table FL1066_TEMP_96
--------------------------------------------------------

  CREATE TABLE "FL1066_TEMP_96" 
   (	"SU1066T" NUMBER(1,0), 
	"AGCNUM66T" CHAR(2 BYTE), 
	"SERNUM66T" CHAR(1 BYTE), 
	"ORDNUM66T" NUMBER(7,0), 
	"MNTOPE66T" FLOAT(126), 
	"ENGOPE66T" CHAR(3 BYTE), 
	"BAQOPE66T" CHAR(6 BYTE), 
	"CPTAGC66T" CHAR(2 BYTE), 
	"CPTNAT66T" NUMBER(2,0), 
	"CPTORD66T" NUMBER(5,0), 
	"CPTCLE66T" NUMBER(1,0), 
	"DATFLC66T" DATE, 
	"DATFLD66T" DATE, 
	"NOMCPT66T" CHAR(30 BYTE), 
	"AGYOPE66T" CHAR(2 BYTE), 
	"PTTOPE66T" NUMBER(4,0), 
	"ECHOPE66T" DATE, 
	"DSCOPE66T" CHAR(30 BYTE), 
	"DATREC66T" DATE, 
	"PPLINT66T" NUMBER(1,0), 
	"ECHU66T" NUMBER(1,0), 
	"PFCAGC66T" NUMBER(1,0), 
	"AGHRACS66T" CHAR(2 BYTE), 
	"FILLER66T" CHAR(1 BYTE), 
	"ACCEFF66T" NUMBER(1,0), 
	"RESEFF66T" NUMBER(1,0), 
	"DATRES66T" DATE, 
	"ETAEFF66T" CHAR(2 BYTE), 
	"SANEFF66T" NUMBER(1,0), 
	"TAUMRC66T" NUMBER(6,4), 
	"TAUINT66T" NUMBER(6,4), 
	"TAUTVA66T" NUMBER(6,4), 
	"TAUCPC66T" NUMBER(5,4)
   );
--------------------------------------------------------
--  DDL for Table FL1071
--------------------------------------------------------

  CREATE TABLE "FL1071" 
   (	"SU1071" NUMBER(1,0), 
	"AGCNUM71" CHAR(2 BYTE), 
	"SERNUM71" CHAR(1 BYTE), 
	"ORDNUM71" NUMBER(7,0), 
	"MNTOPE71" FLOAT(126), 
	"ENGOPE71" CHAR(3 BYTE), 
	"CPTAGC71" CHAR(2 BYTE), 
	"CPTNAT71" NUMBER(2,0), 
	"CPTORD71" NUMBER(5,0), 
	"CPTCLE71" NUMBER(1,0), 
	"NOMCPT71" CHAR(24 BYTE), 
	"DATREC71" DATE, 
	"ECHOPE71" DATE, 
	"DATCRE71" DATE, 
	"PPLINT71" NUMBER(1,0), 
	"MEGMEG71" CHAR(2 BYTE), 
	"CODOPE71" CHAR(4 BYTE), 
	"FILLER71" CHAR(35 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1071_LAR
--------------------------------------------------------

  CREATE TABLE "FL1071_LAR" 
   (	"SU1071" NUMBER(*,0), 
	"AGCNUM71" CHAR(2 BYTE), 
	"SERNUM71" CHAR(1 BYTE), 
	"ORDNUM71" NUMBER(*,0), 
	"MNTOPE71" FLOAT(126), 
	"ENGOPE71" CHAR(3 BYTE), 
	"CPTAGC71" CHAR(2 BYTE), 
	"CPTNAT71" NUMBER(*,0), 
	"CPTORD71" NUMBER(*,0), 
	"CPTCLE71" NUMBER(*,0), 
	"NOMCPT71" CHAR(24 BYTE), 
	"DATREC71" DATE, 
	"ECHOPE71" DATE, 
	"DATCRE71" DATE, 
	"PPLINT71" NUMBER(*,0), 
	"MEGMEG71" CHAR(2 BYTE), 
	"CODOPE71" CHAR(4 BYTE), 
	"FILLER71" CHAR(35 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1073
--------------------------------------------------------

  CREATE TABLE "FL1073" 
   (	"SU1073" NUMBER(1,0), 
	"AGCNUM73" CHAR(2 BYTE), 
	"SERNUM73" CHAR(1 BYTE), 
	"ORDNUM73" NUMBER(7,0), 
	"MNTOPE73" FLOAT(126), 
	"ENGOPE73" CHAR(3 BYTE), 
	"BAQOPE73" CHAR(6 BYTE), 
	"CPTAGC73" CHAR(2 BYTE), 
	"CPTNAT73" NUMBER(2,0), 
	"CPTORD73" NUMBER(5,0), 
	"CPTCLE73" NUMBER(1,0), 
	"DATFLC73" DATE, 
	"DATFLD73" DATE, 
	"NOMCPT73" CHAR(30 BYTE), 
	"AGYOPE73" CHAR(2 BYTE), 
	"PTTOPE73" NUMBER(4,0), 
	"ECHOPE73" DATE, 
	"DSCOPE73" CHAR(30 BYTE), 
	"DATDCP73" DATE, 
	"BLKOPE73" NUMBER(6,0), 
	"ACCEFF73" NUMBER(1,0), 
	"RESEFF73" NUMBER(1,0), 
	"DATRES73" DATE, 
	"ETAEFF73" CHAR(2 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1090
--------------------------------------------------------

  CREATE TABLE "FL1090" 
   (	"SU1090" NUMBER(1,0), 
	"AGCNUM90" CHAR(2 BYTE), 
	"SERNUM90" CHAR(1 BYTE), 
	"ORDNUM90" NUMBER(7,0), 
	"MNTOPE90" FLOAT(126), 
	"ENGOPE90" CHAR(3 BYTE), 
	"BAQOPE90" CHAR(6 BYTE), 
	"CPTAGC90" CHAR(2 BYTE), 
	"CPTNAT90" NUMBER(2,0), 
	"CPTORD90" NUMBER(5,0), 
	"CPTCLE90" NUMBER(1,0), 
	"DATFLC90" DATE, 
	"DATFLD90" DATE, 
	"NOMCPT90" CHAR(30 BYTE), 
	"AGYOPE90" CHAR(2 BYTE), 
	"PTTOPE90" NUMBER(4,0), 
	"ECHOPE90" DATE, 
	"DSCOPE90" CHAR(30 BYTE), 
	"OPEREC90" CHAR(4 BYTE), 
	"REFOPE90" CHAR(8 BYTE), 
	"ACCEFF90" NUMBER(1,0), 
	"RESEFF90" NUMBER(1,0), 
	"DATREC90" DATE, 
	"ETAEFF90" CHAR(2 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL1091
--------------------------------------------------------

  CREATE TABLE "FL1091" 
   (	"SU1091" NUMBER(1,0), 
	"AGCNUM91" CHAR(2 BYTE), 
	"SERNUM91" CHAR(1 BYTE), 
	"ORDNUM91" NUMBER(7,0), 
	"MNTOPE91" FLOAT(126), 
	"ENGOPE91" CHAR(3 BYTE), 
	"BAQOPE91" CHAR(6 BYTE), 
	"CPTAGC91" CHAR(2 BYTE), 
	"CPTNAT91" NUMBER(2,0), 
	"CPTORD91" NUMBER(5,0), 
	"CPTCLE91" NUMBER(1,0), 
	"DATFLC91" DATE, 
	"DATFLD91" DATE, 
	"NOMCPT91" CHAR(30 BYTE), 
	"AGYOPE91" CHAR(2 BYTE), 
	"PTTOPE91" NUMBER(4,0), 
	"ECHOPE91" DATE, 
	"DSCOPE91" CHAR(30 BYTE), 
	"OPEREC91" CHAR(4 BYTE), 
	"REFOPE91" CHAR(8 BYTE), 
	"ACCEFF91" NUMBER(1,0), 
	"RESEFF91" NUMBER(1,0), 
	"DATREC91" DATE, 
	"ETAEFF91" CHAR(2 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL2999
--------------------------------------------------------

  CREATE TABLE "FL2999" 
   (	"SU2999" CHAR(1 BYTE), 
	"CODCPT1" CHAR(10 BYTE), 
	"SLD1" FLOAT(126), 
	"CODCPT2" CHAR(10 BYTE), 
	"SLD2" FLOAT(126), 
	"CODCPT3" CHAR(10 BYTE), 
	"SLD3" FLOAT(126), 
	"CODCPT4" CHAR(10 BYTE), 
	"SLD4" FLOAT(126), 
	"CODCPT5" CHAR(10 BYTE), 
	"SLD5" FLOAT(126), 
	"MM2999" NUMBER(2,0), 
	"JJ2999" NUMBER(2,0), 
	"CTR2999" NUMBER(5,0)
   );
--------------------------------------------------------
--  DDL for Table FL3034
--------------------------------------------------------

  CREATE TABLE "FL3034" 
   (	"SU3034" NUMBER(1,0), 
	"CODNAT" NUMBER(2,0), 
	"LL1NAT" CHAR(25 BYTE), 
	"LL2NAT" CHAR(25 BYTE), 
	"CATNAT" CHAR(2 BYTE), 
	"TCRNAT" CHAR(4 BYTE), 
	"FRANAT" NUMBER(5,0)
   );
--------------------------------------------------------
--  DDL for Table FL3097
--------------------------------------------------------

  CREATE TABLE "FL3097" 
   (	"SU3097" NUMBER(1,0), 
	"DAT3097" DATE, 
	"AGCCPT97" CHAR(2 BYTE), 
	"NATCPT97" NUMBER(2,0), 
	"ORDCPT97" NUMBER(5,0), 
	"KLECPT97" NUMBER(1,0), 
	"SGN3097" CHAR(1 BYTE), 
	"SLD3097" FLOAT(126), 
	"CODOPE97" CHAR(4 BYTE), 
	"FILLER97" CHAR(23 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL3098
--------------------------------------------------------

  CREATE TABLE "FL3098" 
   (	"SU3098" NUMBER(1,0), 
	"DATOPE98" DATE, 
	"CODOPE98" CHAR(4 BYTE), 
	"AGCNUM98" CHAR(2 BYTE), 
	"SERNUM98" CHAR(1 BYTE), 
	"ORDNUM98" NUMBER(7,0), 
	"NUMORD98" NUMBER(1,0), 
	"FILLER98" CHAR(2 BYTE), 
	"AGCCPT98" CHAR(2 BYTE), 
	"NATCPT98" NUMBER(2,0), 
	"ORDCPT98" NUMBER(5,0), 
	"KLECPT98" NUMBER(1,0), 
	"DATOPE8" DATE, 
	"ABROPE98" CHAR(4 BYTE), 
	"SMNTOPE98" CHAR(1 BYTE), 
	"MNTOPE98" FLOAT(126)
   );
--------------------------------------------------------
--  DDL for Table FL3099
--------------------------------------------------------

  CREATE TABLE "FL3099" 
   (	"SU3099" NUMBER(1,0), 
	"DATOPE99" DATE, 
	"CODOPE99" CHAR(4 BYTE), 
	"AGCNUM99" CHAR(2 BYTE), 
	"SERNUM99" CHAR(1 BYTE), 
	"ORDNUM99" NUMBER(7,0), 
	"NUMORD99" NUMBER(1,0), 
	"FILLER99" CHAR(2 BYTE), 
	"AGCCPT99" CHAR(2 BYTE), 
	"NATCPT99" NUMBER(2,0), 
	"ORDCPT99" NUMBER(5,0), 
	"KLECPT99" NUMBER(1,0), 
	"DATOPE8" DATE, 
	"ABROPE99" CHAR(4 BYTE), 
	"SMNTOPE99" CHAR(1 BYTE), 
	"MNTOPE99" FLOAT(126)
   );
--------------------------------------------------------
--  DDL for Table FL3099_TEMP
--------------------------------------------------------

  CREATE TABLE "FL3099_TEMP" 
   (	"CPT3099T" CHAR(10 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL3195
--------------------------------------------------------

  CREATE TABLE "FL3195" 
   (	"SU3195" NUMBER(1,0), 
	"AGCNUM95" CHAR(2 BYTE), 
	"SERNUM95" CHAR(1 BYTE), 
	"ORDNUM95" NUMBER(7,0), 
	"MNTOPE95" FLOAT(126), 
	"NATOPE95" CHAR(3 BYTE), 
	"DATMEG95" DATE, 
	"AGCEMT95" CHAR(2 BYTE), 
	"DATOPE95" DATE, 
	"AGXOPE95" CHAR(2 BYTE), 
	"NAXOPE95" NUMBER(2,0), 
	"ORXOPE95" NUMBER(5,0), 
	"KLXOPE95" CHAR(1 BYTE), 
	"DSCOPE95" CHAR(30 BYTE), 
	"CODOPE95" CHAR(4 BYTE), 
	"REFBAS95" CHAR(10 BYTE), 
	"FIL3195" CHAR(6 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL4003
--------------------------------------------------------

  CREATE TABLE "FL4003" 
   (	"SU4003" NUMBER(1,0), 
	"CODAGC4003" CHAR(2 BYTE), 
	"AGCMEG4003" CHAR(2 BYTE), 
	"DATMEG4003" DATE, 
	"CODOPE4003" CHAR(4 BYTE), 
	"AGCNUM4003" CHAR(2 BYTE), 
	"SERNUM4003" CHAR(1 BYTE), 
	"ORDNUM4003" NUMBER(7,0), 
	"CODDV14003" CHAR(3 BYTE), 
	"CODDV24003" CHAR(3 BYTE), 
	"DVSOPE4003" CHAR(3 BYTE), 
	"AGXOPE4003" CHAR(2 BYTE), 
	"NAXOPE4003" NUMBER(2,0), 
	"ORXOPE4003" NUMBER(5,0), 
	"KLXOPE4003" CHAR(1 BYTE), 
	"MNTDV14003" FLOAT(126), 
	"MNTDV24003" FLOAT(126), 
	"MNTOPE4003" FLOAT(126), 
	"BAQOPE4003" CHAR(6 BYTE), 
	"ETASOR4003" NUMBER(2,0), 
	"OPEMEG4003" CHAR(4 BYTE), 
	"AGYOPE4003" CHAR(2 BYTE), 
	"NAYOPE4003" NUMBER(2,0), 
	"ORYOPE4003" NUMBER(5,0), 
	"KLYOPE4003" CHAR(1 BYTE), 
	"ANSAGC4003" CHAR(2 BYTE), 
	"ANSSER4003" CHAR(1 BYTE), 
	"ANSORD4003" NUMBER(7,0), 
	"INSMEG4003" CHAR(3 BYTE), 
	"DSCOPE4003" CHAR(30 BYTE), 
	"USROPE4003" NUMBER(5,0), 
	"FILLER4003" CHAR(1 BYTE), 
	"DATVAL4003" DATE, 
	"DATOPE4003" DATE, 
	"NATOPE4003" NUMBER(2,0), 
	"TYPOPE4003" NUMBER(1,0), 
	"MEGINF4003" CHAR(1 BYTE), 
	"ABR4003" CHAR(4 BYTE), 
	"IND14003" NUMBER(1,0), 
	"IND24003" NUMBER(1,0), 
	"COM4003" NUMBER(12,3), 
	"TPS4003" FLOAT(126), 
	"INDINS" NUMBER(1,0), 
	"REJET" CHAR(1 BYTE), 
	"BIDON4003" CHAR(1 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL5501
--------------------------------------------------------

  CREATE TABLE "FL5501" 
   (	"SU5501" NUMBER(1,0), 
	"CODPTT" NUMBER(4,0), 
	"CODBAQ5501" CHAR(6 BYTE), 
	"CODAGC5501" CHAR(2 BYTE), 
	"LIBPTT" CHAR(20 BYTE), 
	"BCTCTR" NUMBER(2,0)
   );
--------------------------------------------------------
--  DDL for Table FL5503
--------------------------------------------------------

  CREATE TABLE "FL5503" 
   (	"SU5503" NUMBER(1,0), 
	"CODAGC5503" CHAR(2 BYTE), 
	"LIB5503" CHAR(30 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL5504
--------------------------------------------------------

  CREATE TABLE "FL5504" 
   (	"SU5504" NUMBER(1,0), 
	"CODPAY" CHAR(2 BYTE), 
	"LIBPAY" CHAR(30 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL5507
--------------------------------------------------------

  CREATE TABLE "FL5507" 
   (	"SU5507" NUMBER(1,0), 
	"CODACT" NUMBER(4,0), 
	"LIBACT" CHAR(30 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL5520
--------------------------------------------------------

  CREATE TABLE "FL5520" 
   (	"SU5520" NUMBER(1,0), 
	"CODOPE" CHAR(4 BYTE), 
	"LIBOPE" CHAR(40 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FL7063
--------------------------------------------------------

  CREATE TABLE "FL7063" 
   (	"SU7063" NUMBER(1,0), 
	"CODENG7063" NUMBER(3,0), 
	"LIBENG7063" CHAR(20 BYTE)
   );
--------------------------------------------------------
--  DDL for Table FW3000
--------------------------------------------------------

  CREATE TABLE "FW3000" 
   (	"SUW300" NUMBER(1,0), 
	"CODAGCW" CHAR(2 BYTE), 
	"DATOPEW" DATE, 
	"CODOPEW" CHAR(4 BYTE), 
	"AGCNUMW" CHAR(2 BYTE), 
	"SERNUMW" CHAR(1 BYTE), 
	"ORDNUMW" NUMBER(7,0), 
	"SGNMNTW" CHAR(1 BYTE), 
	"MNTOPEW" FLOAT(126), 
	"ENGOPEW" CHAR(3 BYTE), 
	"AGXOPEW" CHAR(2 BYTE), 
	"NAXOPEW" NUMBER(2,0), 
	"ORXOPEW" NUMBER(5,0), 
	"KLXOPEW" NUMBER(1,0), 
	"CODMRCW" CHAR(5 BYTE), 
	"AGYOPEW" CHAR(2 BYTE), 
	"NAYOPEW" NUMBER(2,0), 
	"ORYOPEW" NUMBER(5,0), 
	"KLYOPEW" NUMBER(1,0), 
	"MEGOPEW" CHAR(2 BYTE), 
	"PTTOPEW" NUMBER(4,0), 
	"BAQOPEW" CHAR(6 BYTE), 
	"DSCOPEW" CHAR(30 BYTE), 
	"CATOPEW" NUMBER(1,0), 
	"CODDST2W" CHAR(2 BYTE), 
	"CODDST4W" CHAR(2 BYTE), 
	"CODETAW" NUMBER(1,0), 
	"BNFOPEW" CHAR(20 BYTE), 
	"VRSOPEW" CHAR(18 BYTE), 
	"ECHUW" CHAR(1 BYTE), 
	"PFCAGCW" CHAR(1 BYTE), 
	"ORDOPEW" CHAR(29 BYTE), 
	"RESEFFW" NUMBER(1,0)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FLXXXX
--------------------------------------------------------

  CREATE TABLE "LIGNE_FLXXXX" 
   (	"LIGNEXXXX" CHAR(5 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1000
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1000" 
   (	"LIGNE1000" CHAR(232 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1002
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1002" 
   (	"LIGNE1002" CHAR(230 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1003
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1003" 
   (	"LIGNE1003" CHAR(230 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1019
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1019" 
   (	"LIGNE1019" CHAR(124 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1030
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1030" 
   (	"LIGNE1030" CHAR(512 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1061
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1061" 
   (	"LIGNE1061" CHAR(128 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1062
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1062" 
   (	"LIGNE1062" CHAR(128 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1066
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1066" 
   (	"LIGNE1066" CHAR(180 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1071
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1071" 
   (	"LIGNE1071" CHAR(128 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1073
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1073" 
   (	"LIGNE1073" CHAR(156 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1090
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1090" 
   (	"LIGNE1090" CHAR(156 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL1091
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL1091" 
   (	"LIGNE1091" CHAR(156 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL2999
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL2999" 
   (	"LIGNE2999" CHAR(120 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL3097
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL3097" 
   (	"LIGNE3097" CHAR(56 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL3098
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL3098" 
   (	"LIGNE3098" CHAR(56 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL3099
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL3099" 
   (	"LIGNE3099" CHAR(64 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL3195
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL3195" 
   (	"LIGNE3195" CHAR(108 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL4002
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL4002" 
   (	"LIGNE4002" CHAR(200 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_FL4003
--------------------------------------------------------

  CREATE TABLE "LIGNE_FL4003" 
   (	"LIGNE4003" CHAR(200 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_ME1030
--------------------------------------------------------

  CREATE TABLE "LIGNE_ME1030" 
   (	"LIGNE1030M" CHAR(504 BYTE)
   );
--------------------------------------------------------
--  DDL for Table LIGNE_ME2910
--------------------------------------------------------

  CREATE TABLE "LIGNE_ME2910" 
   (	"LIGNE2910M" CHAR(504 BYTE)
   );
--------------------------------------------------------
--  DDL for Table ME1030
--------------------------------------------------------

  CREATE TABLE "ME1030" 
   (	"SU1030M" CHAR(1 BYTE), 
	"CODAGC1030M" CHAR(2 BYTE), 
	"CODNAT1030M" NUMBER(2,0), 
	"ORDCPT1030M" NUMBER(5,0), 
	"KLECPT1030M" NUMBER(1,0), 
	"DVSCPT1030M" CHAR(3 BYTE), 
	"CODACT1030M" NUMBER(4,0), 
	"CGLCPT1030M" CHAR(6 BYTE), 
	"CODPTT1030AM" NUMBER(4,0), 
	"CODPAY1030M" CHAR(2 BYTE), 
	"CATCLT1030M" NUMBER(1,0), 
	"CODDOC1030M" NUMBER(1,0), 
	"ORDDOC1030M" CHAR(8 BYTE), 
	"DATLIV1030M" DATE, 
	"LIELIV10M" CHAR(10 BYTE), 
	"CODDOC1030AM" NUMBER(1,0), 
	"CODPTT1030BM" NUMBER(4,0), 
	"BIDE1030M" CHAR(5 BYTE), 
	"NOMRSCM" CHAR(30 BYTE), 
	"ADRPRSM" CHAR(46 BYTE), 
	"EMPOUV10M" NUMBER(5,0), 
	"DNECPT10M" NUMBER(8,0), 
	"SRVCPT10M" NUMBER(2,0), 
	"SGNSLD10M" CHAR(1 BYTE), 
	"SLDCPT10M" FLOAT(126), 
	"SLCCPT10M" CHAR(12 BYTE), 
	"CODUTL10M" NUMBER(1,0), 
	"PPLAGC30M" CHAR(2 BYTE), 
	"PPLNAT30M" NUMBER(2,0), 
	"PPLORD30M" NUMBER(5,0), 
	"PPLCLE30M" NUMBER(1,0), 
	"CLASSE30M" NUMBER(1,0), 
	"PRFL10M" NUMBER(1,0), 
	"PRFM10M" NUMBER(1,0), 
	"PRFN10M" NUMBER(1,0), 
	"DBICPT10M" NUMBER(2,0), 
	"BIDCPT30M" CHAR(1 BYTE), 
	"NBCDVC10M" NUMBER(1,0), 
	"PRGSEC10M" NUMBER(2,0), 
	"DATSEC10M" DATE, 
	"INTCHQ10M" NUMBER(1,0), 
	"OUVCPT10M" DATE, 
	"CLOCPT10M" DATE, 
	"SEXCPT10M" CHAR(1 BYTE), 
	"NAICPT10M" DATE, 
	"SARCPT10M" NUMBER(1,0), 
	"JNTCPT10M" NUMBER(1,0), 
	"FRMCPT10M" CHAR(4 BYTE), 
	"INDCHO10M" NUMBER(1,0), 
	"INDEFO10M" NUMBER(1,0), 
	"ADRPRF30M" CHAR(30 BYTE), 
	"CODAVO10M" CHAR(3 BYTE), 
	"COTSGN10M" CHAR(3 BYTE), 
	"COTCRC10M" FLOAT(126), 
	"NBRIMC10M" NUMBER(3,0), 
	"MTFOUV10M" NUMBER(1,0), 
	"CODCLO10M" NUMBER(1,0), 
	"NIVCPT10M" NUMBER(1,0), 
	"MTFCLO10M" NUMBER(1,0), 
	"FONCPT10M" NUMBER(1,0), 
	"INDTEL10M" NUMBER(2,0), 
	"TELCPT10M" NUMBER(6,0), 
	"NBRIMF10M" NUMBER(3,0), 
	"PTTRGC30M" NUMBER(4,0), 
	"NBRMCR10M" NUMBER(4,0), 
	"INVADR10M" CHAR(1 BYTE), 
	"AGOCPT10M" CHAR(1 BYTE), 
	"SLDAMY10M" FLOAT(126), 
	"UTLCPT10M" FLOAT(126), 
	"BLKCPT10M" FLOAT(126), 
	"SLDMMY10M" FLOAT(126), 
	"SLDMMX10M" FLOAT(126), 
	"SLDMMI10M" FLOAT(126), 
	"MVDMOI10M" FLOAT(126), 
	"CODOPE29M" CHAR(4 BYTE), 
	"MVCANN10M" FLOAT(126), 
	"CHQCPT10M" CHAR(19 BYTE), 
	"INDRCS10M" CHAR(1 BYTE), 
	"INFRCS10M" NUMBER(1,0), 
	"NUMRCS10M" CHAR(6 BYTE), 
	"ANNRCS10M" CHAR(4 BYTE), 
	"CCACPT10M" NUMBER(5,0), 
	"NUMBCT10M" NUMBER(7,0), 
	"DATBCT10M" DATE, 
	"PRFP10M" CHAR(1 BYTE), 
	"PRFQ10M" CHAR(1 BYTE), 
	"PRFJJ10M" CHAR(1 BYTE), 
	"MATBCT30M" NUMBER(6,0), 
	"QLTGRN10M" CHAR(1 BYTE), 
	"OPTCHQ10M" CHAR(1 BYTE), 
	"EFFCPT10M" NUMBER(1,0), 
	"NOMRPR10M" CHAR(30 BYTE), 
	"NUMANL10M" NUMBER(6,0), 
	"INFCMP10M" CHAR(1 BYTE)
   );
--------------------------------------------------------
--  DDL for Table ME2910
--------------------------------------------------------

  CREATE TABLE "ME2910" 
   (	"SU2910M" CHAR(1 BYTE), 
	"CODAGC29101M" CHAR(2 BYTE), 
	"CODNAT2910M" NUMBER(2,0), 
	"ORDCPTM" NUMBER(5,0), 
	"KLECPTM" NUMBER(1,0), 
	"DVSCPTM" CHAR(3 BYTE), 
	"CODACT2910M" NUMBER(4,0), 
	"CGLCPTM" DATE, 
	"CODPTT2910AM" NUMBER(4,0), 
	"CODPAY2910M" CHAR(2 BYTE), 
	"CATCLT2910M" NUMBER(1,0), 
	"CODDOC2910M" NUMBER(1,0), 
	"ORDDOC2910M" CHAR(8 BYTE), 
	"DATLIVM" DATE, 
	"LIELIVM" CHAR(10 BYTE), 
	"CODPTT2910BM" NUMBER(4,0), 
	"NUMANLM" NUMBER(6,0), 
	"NOMCPTM" CHAR(30 BYTE), 
	"ADRCPTM" CHAR(46 BYTE), 
	"EMPOUVM" NUMBER(5,0), 
	"DNECPTM" NUMBER(8,0), 
	"ASSCPTM" CHAR(1 BYTE), 
	"SRVCPTM" NUMBER(1,0), 
	"SGNSLDM" CHAR(1 BYTE), 
	"SLDCPTM" NUMBER(11,3), 
	"SLCCPT1M" CHAR(12 BYTE), 
	"CODUTLM" NUMBER(1,0), 
	"PRFAM" NUMBER(1,0), 
	"PRFBM" NUMBER(1,0), 
	"PRFCM" NUMBER(1,0), 
	"PRFDM" NUMBER(1,0), 
	"PRFEM" NUMBER(1,0), 
	"PRFFM" NUMBER(1,0), 
	"PRFGM" NUMBER(1,0), 
	"PRFHM" NUMBER(1,0), 
	"PRFIM" NUMBER(1,0), 
	"PRFJM" NUMBER(1,0), 
	"PRFKM" NUMBER(1,0), 
	"PRFLM" NUMBER(1,0), 
	"PRFMM" NUMBER(1,0), 
	"PRFNM" NUMBER(1,0), 
	"DBICPTM" NUMBER(2,0), 
	"BIDCPTM" CHAR(1 BYTE), 
	"NBCDVCM" NUMBER(1,0), 
	"PRGSECM" NUMBER(2,0), 
	"DATSECM" DATE, 
	"INTCHQM" NUMBER(1,0), 
	"OUVCPTM" DATE, 
	"CLOCPTM" DATE, 
	"SEXCPTM" CHAR(1 BYTE), 
	"NAICPTM" DATE, 
	"SARCPTM" NUMBER(1,0), 
	"JNTCPTM" NUMBER(1,0), 
	"FRMCPTM" CHAR(4 BYTE), 
	"INDCHOM" NUMBER(1,0), 
	"INDEFOM" NUMBER(1,0), 
	"MV1CREM" NUMBER(12,3), 
	"ENCSGNM" NUMBER(12,3), 
	"COTSGNM" NUMBER(12,3), 
	"COTCRCM" FLOAT(126), 
	"NBRIMCM" NUMBER(3,0), 
	"MTFOUVM" NUMBER(1,0), 
	"CODCLOM" NUMBER(1,0), 
	"NIVCPTM" NUMBER(1,0), 
	"MTFCLOM" NUMBER(1,0), 
	"FONCPTM" NUMBER(1,0), 
	"INDTELM" NUMBER(2,0), 
	"TELCPTM" NUMBER(6,0), 
	"NBRIMFM" NUMBER(3,0), 
	"NBRMDBM" NUMBER(4,0), 
	"NBRMCRM" NUMBER(4,0), 
	"INVADRM" CHAR(1 BYTE), 
	"AGOCPTM" CHAR(1 BYTE), 
	"SLDAMYM" NUMBER(12,3), 
	"UTLCPTM" FLOAT(126), 
	"BLKCPTM" NUMBER(12,3), 
	"SLDMMYM" CHAR(20 BYTE), 
	"DATLIV8M" DATE, 
	"NAICPT8M" DATE, 
	"MVDMOIM" NUMBER(12,3), 
	"MVCANNM" NUMBER(13,3), 
	"CHQCPTM" CHAR(19 BYTE), 
	"INDRCSM" CHAR(1 BYTE), 
	"INFRCSM" NUMBER(1,0), 
	"NUMRCSM" CHAR(6 BYTE), 
	"ANNRCSM" CHAR(4 BYTE), 
	"CCACPTM" NUMBER(5,0), 
	"NUMBCTM" NUMBER(7,0), 
	"DATBCTM" DATE, 
	"PRFPM" NUMBER(1,0), 
	"PRFQM" NUMBER(1,0), 
	"PRFJJM" NUMBER(1,0), 
	"OPTPELM" NUMBER(1,0), 
	"PERPELM" NUMBER(1,0), 
	"DURPELM" NUMBER(1,0), 
	"CDMSGTM" NUMBER(3,0), 
	"QLTGRNM" CHAR(1 BYTE), 
	"OPTCHQM" NUMBER(1,0), 
	"EFFCPTM" CHAR(1 BYTE), 
	"MVCMOIM" NUMBER(12,3), 
	"FILM" CHAR(3 BYTE), 
	"USROPEM" NUMBER(5,0), 
	"OPEDATM" DATE, 
	"TIMOPEM" NUMBER(5,0), 
	"CODOPE29MM" CHAR(4 BYTE), 
	"FILCMPM" CHAR(1 BYTE), 
	"INFCMPM" CHAR(1 BYTE)
   );
--------------------------------------------------------
--  DDL for Index FL1019_INDEX1
--------------------------------------------------------

  CREATE INDEX "FL1019_INDEX1" ON "FL1019" ("CODAGC19", "DATOPE19", "CODOPE19", "AGCOPE19", "SEROPE19", "ORDOPE19");
--------------------------------------------------------
--  DDL for Index FL3195_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL3195_INDEX1" ON "FL3195" ("AGCNUM95", "SERNUM95", "ORDNUM95", "MNTOPE95");
--------------------------------------------------------
--  DDL for Index FL3099_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL3099_INDEX1" ON "FL3099" ("DATOPE99", "CODOPE99", "AGCNUM99", "SERNUM99", "ORDNUM99", "NUMORD99");
--------------------------------------------------------
--  DDL for Index ME1030_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ME1030_PK" ON "ME1030" ("CODAGC1030M", "CODNAT1030M", "ORDCPT1030M", "KLECPT1030M", "SU1030M");
--------------------------------------------------------
--  DDL for Index FW3000_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FW3000_INDEX1" ON "FW3000" ("CODAGCW", "DATOPEW", "CODOPEW", "AGCNUMW", "SERNUMW", "ORDNUMW");
--------------------------------------------------------
--  DDL for Index FL1003_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1003_INDEX1" ON "FL1003" ("AGCMEG03", "CODAGC03", "DATOPE03", "CODOPE03", "AGCNUM03", "SERNUM03", "ORDNUM03");
--------------------------------------------------------
--  DDL for Index FL1090_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1090_INDEX1" ON "FL1090" ("AGCNUM90", "SERNUM90", "ORDNUM90", "MNTOPE90");
--------------------------------------------------------
--  DDL for Index FL1061_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1061_INDEX1" ON "FL1061" ("AGCNUM61", "SERNUM61", "ORDNUM61");
--------------------------------------------------------
--  DDL for Index FL3098_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL3098_INDEX1" ON "FL3098" ("DATOPE98", "CODOPE98", "AGCNUM98", "SERNUM98", "ORDNUM98", "NUMORD98");
--------------------------------------------------------
--  DDL for Index FL7063_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL7063_PK" ON "FL7063" ("CODENG7063");
--------------------------------------------------------
--  DDL for Index FL5507_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL5507_PK" ON "FL5507" ("CODACT");
--------------------------------------------------------
--  DDL for Index FL1041_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1041_PK" ON "FL1041" ("CODCGL1041");
--------------------------------------------------------
--  DDL for Index FL4003_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL4003_INDEX1" ON "FL4003" ("CODAGC4003", "AGCMEG4003", "DATMEG4003", "CODOPE4003", "AGCNUM4003", "SERNUM4003", "ORDNUM4003");
--------------------------------------------------------
--  DDL for Index FL1062_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1062_INDEX1" ON "FL1062" ("AGCNUM62", "SERNUM62", "ORDNUM62");
--------------------------------------------------------
--  DDL for Index FL1073_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1073_INDEX1" ON "FL1073" ("AGCNUM73", "SERNUM73", "ORDNUM73", "MNTOPE73", "ENGOPE73");
--------------------------------------------------------
--  DDL for Index FL1030_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1030_PK" ON "FL1030" ("CODAGC1030", "CODNAT1030", "ORDCPT1030", "KLECPT1030");
--------------------------------------------------------
--  DDL for Index FL3097_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL3097_PK" ON "FL3097" ("DAT3097", "AGCCPT97", "NATCPT97", "ORDCPT97", "KLECPT97");
--------------------------------------------------------
--  DDL for Index FL2999_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL2999_PK" ON "FL2999" ("CODCPT1");
--------------------------------------------------------
--  DDL for Index ME2910_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ME2910_PK" ON "ME2910" ("CODAGC29101M", "CODNAT2910M", "ORDCPTM", "SU2910M", "KLECPTM");
--------------------------------------------------------
--  DDL for Index FL1071_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1071_INDEX1" ON "FL1071" ("AGCNUM71", "SERNUM71", "ORDNUM71", "MNTOPE71", "ENGOPE71");
--------------------------------------------------------
--  DDL for Index FL3034_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL3034_PK" ON "FL3034" ("CODNAT");
--------------------------------------------------------
--  DDL for Index FL1066_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1066_INDEX1" ON "FL1066" ("AGCNUM66", "SERNUM66", "ORDNUM66");
--------------------------------------------------------
--  DDL for Index FL5501_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL5501_PK" ON "FL5501" ("CODPTT");
--------------------------------------------------------
--  DDL for Index FL1091_INDEX1
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL1091_INDEX1" ON "FL1091" ("AGCNUM91", "SERNUM91", "ORDNUM91", "MNTOPE91");
--------------------------------------------------------
--  DDL for Index BALTAB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BALTAB_PK" ON "BALTAB" ("ANNEE", "MOIS");
--------------------------------------------------------
--  DDL for Index FL5503_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL5503_PK" ON "FL5503" ("CODAGC5503");
--------------------------------------------------------
--  DDL for Index FL5504_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL5504_PK" ON "FL5504" ("CODPAY");
--------------------------------------------------------
--  DDL for Index FL1000_INDEX1
--------------------------------------------------------

  CREATE INDEX "FL1000_INDEX1" ON "FL1000" ("CODAGC3002", "DATOPE3002", "CODOPE3002", "AGCNUM3002", "SERNUM3002", "ORDNUM3002");
--------------------------------------------------------
--  Constraints for Table FL3034
--------------------------------------------------------

  ALTER TABLE "FL3034" ADD CONSTRAINT "FL3034_PK" PRIMARY KEY ("CODNAT") USING INDEX  ENABLE;
 
  ALTER TABLE "FL3034" MODIFY ("CODNAT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FL3097
--------------------------------------------------------

  ALTER TABLE "FL3097" ADD CONSTRAINT "FL3097_PK" PRIMARY KEY ("DAT3097", "AGCCPT97", "NATCPT97", "ORDCPT97", "KLECPT97")
  USING INDEX  ENABLE;
 
  ALTER TABLE "FL3097" MODIFY ("DAT3097" NOT NULL ENABLE);
 
  ALTER TABLE "FL3097" MODIFY ("AGCCPT97" NOT NULL ENABLE);
 
  ALTER TABLE "FL3097" MODIFY ("NATCPT97" NOT NULL ENABLE);
 
  ALTER TABLE "FL3097" MODIFY ("ORDCPT97" NOT NULL ENABLE);
 
  ALTER TABLE "FL3097" MODIFY ("KLECPT97" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FL5501
--------------------------------------------------------

  ALTER TABLE "FL5501" ADD CONSTRAINT "FL5501_PK" PRIMARY KEY ("CODPTT")
  USING INDEX  ENABLE;
 
  ALTER TABLE "FL5501" MODIFY ("CODPTT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ME2910
--------------------------------------------------------

  ALTER TABLE "ME2910" ADD CONSTRAINT "ME2910_PK" PRIMARY KEY ("CODAGC29101M", "CODNAT2910M", "ORDCPTM", "SU2910M", "KLECPTM")
  USING INDEX ENABLE;
 
  ALTER TABLE "ME2910" MODIFY ("SU2910M" NOT NULL ENABLE);
 
  ALTER TABLE "ME2910" MODIFY ("CODAGC29101M" NOT NULL ENABLE);
 
  ALTER TABLE "ME2910" MODIFY ("CODNAT2910M" NOT NULL ENABLE);
 
  ALTER TABLE "ME2910" MODIFY ("ORDCPTM" NOT NULL ENABLE);
 
  ALTER TABLE "ME2910" MODIFY ("KLECPTM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FL2999
--------------------------------------------------------

  ALTER TABLE "FL2999" ADD CONSTRAINT "FL2999_PK" PRIMARY KEY ("CODCPT1")
  USING INDEX ENABLE;
 
  ALTER TABLE "FL2999" MODIFY ("CODCPT1" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FL1030
--------------------------------------------------------

  ALTER TABLE "FL1030" ADD CONSTRAINT "FL1030_PK" PRIMARY KEY ("CODAGC1030", "CODNAT1030", "ORDCPT1030", "KLECPT1030")
  USING INDEX ENABLE;
 
  ALTER TABLE "FL1030" MODIFY ("CODAGC1030" NOT NULL ENABLE);
 
  ALTER TABLE "FL1030" MODIFY ("CODNAT1030" NOT NULL ENABLE);
 
  ALTER TABLE "FL1030" MODIFY ("ORDCPT1030" NOT NULL ENABLE);
 
  ALTER TABLE "FL1030" MODIFY ("KLECPT1030" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FL1041
--------------------------------------------------------

  ALTER TABLE "FL1041" ADD CONSTRAINT "FL1041_PK" PRIMARY KEY ("CODCGL1041")
  USING INDEX ENABLE;
 
  ALTER TABLE "FL1041" MODIFY ("CODCGL1041" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ME1030
--------------------------------------------------------

  ALTER TABLE "ME1030" ADD CONSTRAINT "ME1030_PK" PRIMARY KEY ("CODAGC1030M", "CODNAT1030M", "ORDCPT1030M", "KLECPT1030M", "SU1030M")
  USING INDEX ENABLE;
 
  ALTER TABLE "ME1030" MODIFY ("CODAGC1030M" NOT NULL ENABLE);
 
  ALTER TABLE "ME1030" MODIFY ("CODNAT1030M" NOT NULL ENABLE);
 
  ALTER TABLE "ME1030" MODIFY ("ORDCPT1030M" NOT NULL ENABLE);
 
  ALTER TABLE "ME1030" MODIFY ("KLECPT1030M" NOT NULL ENABLE);
 
  ALTER TABLE "ME1030" MODIFY ("SU1030M" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BALTAB
--------------------------------------------------------

  ALTER TABLE "BALTAB" ADD CONSTRAINT "BALTAB_PK" PRIMARY KEY ("ANNEE", "MOIS")
  USING INDEX ENABLE;
 
  ALTER TABLE "BALTAB" MODIFY ("ANNEE" NOT NULL ENABLE);
 
  ALTER TABLE "BALTAB" MODIFY ("MOIS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FL5504
--------------------------------------------------------

  ALTER TABLE "FL5504" ADD CONSTRAINT "FL5504_PK" PRIMARY KEY ("CODPAY")
  USING INDEX ENABLE;
 
  ALTER TABLE "FL5504" MODIFY ("CODPAY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FL5503
--------------------------------------------------------

  ALTER TABLE "FL5503" ADD CONSTRAINT "FL5503_PK" PRIMARY KEY ("CODAGC5503")
  USING INDEX ENABLE;
 
  ALTER TABLE "FL5503" MODIFY ("CODAGC5503" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FL7063
--------------------------------------------------------

  ALTER TABLE "FL7063" ADD CONSTRAINT "FL7063_PK" PRIMARY KEY ("CODENG7063")
  USING INDEX ENABLE;
 
  ALTER TABLE "FL7063" MODIFY ("CODENG7063" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FL5507
--------------------------------------------------------

  ALTER TABLE "FL5507" ADD CONSTRAINT "FL5507_PK" PRIMARY KEY ("CODACT")
  USING INDEX ENABLE;
 
  ALTER TABLE "FL5507" MODIFY ("CODACT" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Function CALC_CLE_CPT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CALC_CLE_CPT" 
(
  AGC IN CHAR
, NAT IN NUMBER
, ORD IN NUMBER
) RETURN CHAR AS

ZONWRK CHAR(15);
ZONINT NUMBER;
CLE NUMBER;
BEGIN
  ZONWRK := '00000' || AGC || lpad (NAT,2,'0') || lpad (ORD,5,'0') || '0';
  if SUBSTR(ZONWRK,8,2)='29' then
    ZONWRK := SUBSTR(ZONWRK,1,5) || '92' || SUBSTR(ZONWRK,8);
  end if;
  if SUBSTR(ZONWRK,6,1) >= 'A' or SUBSTR(ZONWRK,7,1) >= 'A' then
     if SUBSTR(ZONWRK,6,1) >= 'A' then
       ZONWRK := SUBSTR(ZONWRK,1,3) || to_char((ASCII(SUBSTR(ZONWRK,6,1))-55)) || SUBSTR(ZONWRK,6);
     else
       ZONWRK := SUBSTR(ZONWRK,1,4) || SUBSTR(ZONWRK,6,1) || SUBSTR(ZONWRK,6);
     end if;
     if SUBSTR(ZONWRK,7,1) >= 'A' then
       ZONWRK := SUBSTR(ZONWRK,1,5) || to_char((ASCII(SUBSTR(ZONWRK,7,1))-55)) || SUBSTR(ZONWRK,8);
     else
       ZONWRK := SUBSTR(ZONWRK,1,5) || '0' || SUBSTR(ZONWRK,7);
     end if;
  end if;

  ZONINT :=  TO_NUMBER(SUBSTR(ZONWRK,14,1))*2;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,13,1))*3;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,12,1))*4;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,11,1))*5;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,10,1))*6;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,9,1))*7;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,8,1))*2;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,7,1))*3;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,6,1))*4;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,5,1))*5;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,4,1))*6;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,3,1))*7;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,2,1))*2;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,1,1))*3;
  ZONINT := ZONINT - (TRUNC(ZONINT / 11)* 11);

  if ZONINT = 0 or ZONINT = 1 then
    CLE := 0;
  else
    CLE := (11-ZONINT);
  end if;

  return to_char(CLE);
END;

/
--------------------------------------------------------
--  DDL for Function CLE_MAT_FISC
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CLE_MAT_FISC" (MATRIC IN CHAR) RETURN CHAR AS

TAB CHAR(23) := 'ABCDEFGHJKLMNPQRSTVWXYZ';
N1 NUMBER(1);
N2 NUMBER(1);
N3 NUMBER(1);
N4 NUMBER(1);
N5 NUMBER(1);
N6 NUMBER(1);
N7 NUMBER(1);
RANG NUMBER;
CLE CHAR(1);

BEGIN
  N1 := TO_NUMBER(SUBSTR(MATRIC,7,1));
  N2 := TO_NUMBER(SUBSTR(MATRIC,6,1));
  N3 := TO_NUMBER(SUBSTR(MATRIC,5,1));
  N4 := TO_NUMBER(SUBSTR(MATRIC,4,1));
  N5 := TO_NUMBER(SUBSTR(MATRIC,3,1));
  N6 := TO_NUMBER(SUBSTR(MATRIC,2,1));
  N7 := TO_NUMBER(SUBSTR(MATRIC,1,1));
  RANG := N1*1 + N2*2 + N3*3 + N4*4 + N5*5 + N6*6 + N7*7;
  RANG :=  MOD(RANG,23);
  RANG :=  RANG + 1;
  CLE  := SUBSTR(TAB,RANG,1);
  return CLE;
END;

/
--------------------------------------------------------
--  DDL for Function CONTROL_FL1061_FL1066
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CONTROL_FL1061_FL1066" 
( AGCNUM_IN IN CHAR
, SERNUM_IN IN CHAR
, ORDNUM_IN IN NUMBER
) RETURN CHAR AS

ETAT CHAR(2);
BEGIN
  select case
              when exists(select AGCNUM_IN, SERNUM_IN, ORDNUM_IN from FL1061, FL1066
                          where nvl(AGCNUM_IN,'  ')=nvl(AGCNUM61,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM61,' ')
                          and ORDNUM_IN=ORDNUM61 and SU1061=1
                          and nvl(AGCNUM_IN,'  ')=nvl(AGCNUM66,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM66,' ')
                          and ORDNUM_IN=ORDNUM66 and SU1066=0)
              then 'OK'
              else 'KO'
         end into ETAT from dual;
  return ETAT;
END;

/
--------------------------------------------------------
--  DDL for Function CONTROL_FL1062_FL1066
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CONTROL_FL1062_FL1066" 
( AGCNUM_IN IN CHAR
, SERNUM_IN IN CHAR
, ORDNUM_IN IN NUMBER
) RETURN CHAR AS

ETAT CHAR(2);
BEGIN
  select case
              when exists(select AGCNUM_IN, SERNUM_IN, ORDNUM_IN from FL1062, FL1066
                          where nvl(AGCNUM_IN,'  ')=nvl(AGCNUM62,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM62,' ')
                          and ORDNUM_IN=ORDNUM62 and SU1062=1
                          and nvl(AGCNUM_IN,'  ')=nvl(AGCNUM66,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM66,' ')
                          and ORDNUM_IN=ORDNUM66 and SU1066=0)
              then 'OK'
              else 'KO'
         end into ETAT from dual;
  return ETAT;
END;

/
--------------------------------------------------------
--  DDL for Function CONTROL_FL1071_FL1073
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CONTROL_FL1071_FL1073" 
( AGCNUM_IN IN CHAR
, SERNUM_IN IN CHAR
, ORDNUM_IN IN NUMBER
, MNTOPE_IN IN FLOAT
, COGENG_IN IN CHAR
) RETURN CHAR AS

ETAT CHAR(2);
BEGIN
  select case
              when exists(select AGCNUM_IN, SERNUM_IN, ORDNUM_IN, MNTOPE_IN, COGENG_IN from FL1071, FL1073
                          where nvl(AGCNUM_IN,'  ')=nvl(AGCNUM71,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM71,' ')
                          and ORDNUM_IN=ORDNUM71 and MNTOPE_IN=MNTOPE71 and COGENG_IN=ENGOPE71 and SU1071=1
                          and nvl(AGCNUM_IN,'  ')=nvl(AGCNUM73,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM73,' ')
                          and ORDNUM_IN=ORDNUM73 and MNTOPE_IN=MNTOPE73 and COGENG_IN=ENGOPE73 and SU1073=0)
              then 'OK'
              else 'KO'
         end into ETAT from dual;
  return ETAT;
END;

/
--------------------------------------------------------
--  DDL for Function CONTROL_FL3195_FL1090
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CONTROL_FL3195_FL1090" 
( AGCNUM_IN IN CHAR
, SERNUM_IN IN CHAR
, ORDNUM_IN IN NUMBER
, MNTOPE_IN IN FLOAT
) RETURN CHAR AS

ETAT CHAR(2);
BEGIN
  select case
              when exists(select AGCNUM_IN, SERNUM_IN, ORDNUM_IN, MNTOPE_IN from FL3195, FL1090
                          where nvl(AGCNUM_IN,'  ')=nvl(AGCNUM95,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM95,' ')
                          and ORDNUM_IN=ORDNUM95 and MNTOPE_IN=MNTOPE95 and SU3195=1
                          and nvl(AGCNUM_IN,'  ')=nvl(AGCNUM90,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM90,' ')
                          and ORDNUM_IN=ORDNUM90 and MNTOPE_IN=MNTOPE90 and SU1090=0)
              then 'OK'
              else 'KO'
         end into ETAT from dual;
  return ETAT;
END;

/
--------------------------------------------------------
--  DDL for Function CONTROL_FL3195_FL1091
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CONTROL_FL3195_FL1091" 
( AGCNUM_IN IN CHAR
, SERNUM_IN IN CHAR
, ORDNUM_IN IN NUMBER
, MNTOPE_IN IN FLOAT
) RETURN CHAR AS

ETAT CHAR(2);
BEGIN
  select case
              when exists(select AGCNUM_IN, SERNUM_IN, ORDNUM_IN, MNTOPE_IN from FL3195, FL1091
                          where nvl(AGCNUM_IN,'  ')=nvl(AGCNUM95,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM95,' ')
                          and ORDNUM_IN=ORDNUM95 and MNTOPE_IN=MNTOPE95 and SU3195=1
                          and nvl(AGCNUM_IN,'  ')=nvl(AGCNUM91,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM91,' ')
                          and ORDNUM_IN=ORDNUM91 and MNTOPE_IN=MNTOPE91 and SU1091=0)
              then 'OK'
              else 'KO'
         end into ETAT from dual;
  return ETAT;
END;

/
--------------------------------------------------------
--  DDL for Function COUNT_CPT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "COUNT_CPT" (CPT IN CHAR) RETURN NUMBER AS

NBRCPT number := 0;
BEGIN
  Select count(*) into NBRCPT from FL3099_TEMP where CPT = CPT3099T;
  return NBRCPT;
END;

/
--------------------------------------------------------
--  DDL for Function DER_J_OUV_MOIS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "DER_J_OUV_MOIS" (date_jour date) RETURN date AS

DJM date;
Nom_DJM long;
BEGIN
   DJM := LAST_DAY(date_jour);
   Nom_DJM := to_char(DJM, 'FMDay');
   if Nom_DJM = 'Samedi' then
     DJM := DJM - 1;
   end if;
   if Nom_DJM = 'Dimanche' then
     DJM := DJM - 2;
   end if;
   return DJM;
END;

/
--------------------------------------------------------
--  DDL for Function PREM_J_OUV_MOIS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "PREM_J_OUV_MOIS" (date_jour date) RETURN date AS

PJM date;
Nom_PJM long;
BEGIN
   PJM := '01' || '/' || substr(date_jour,4,2) || '/' || substr(date_jour,7,2);
   Nom_PJM := to_char(PJM, 'FMDay');
   if Nom_PJM = 'Samedi' then
     PJM := PJM + 2;
   end if;
   if Nom_PJM = 'Dimanche' then
     PJM := PJM + 1;
   end if;
   return PJM;
END;

/
--------------------------------------------------------
--  DDL for Function SOLDE_CPT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SOLDE_CPT" 
(
  AGC IN CHAR
, NAT IN NUMBER
, ORD IN NUMBER
, CLE IN NUMBER
) RETURN CHAR AS
  SLD float;
BEGIN
  SELECT SLDCPT10 into SLD from FL1030 where CODAGC1030 = AGC and CODNAT1030  = NAT AND ORDCPT1030  = ORD AND 
  KLECPT1030  = CLE;
  RETURN TO_CHAR(SLD);
END SOLDE_CPT;

/
--------------------------------------------------------
--  DDL for Function TESTAGC
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "TESTAGC" (RUB IN char) RETURN char AS
  RETAGC char(2);
BEGIN
  if RUB is null then
    RETAGC := '';
  else
    RETAGC := RUB;
  end if;
  RETURN RETAGC;
END;

/
--------------------------------------------------------
--  DDL for Function TESTSER
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "TESTSER" (RUB IN char) RETURN char AS
  RETSER char(1);
BEGIN
  if RUB is null then
    RETSER := '';
  else
    RETSER := RUB;
  end if;
  RETURN RETSER;
END;

/
--------------------------------------------------------
--  DDL for Procedure EXIST_IN_FERRIE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EXIST_IN_FERRIE" (DATEIN IN DATE, LIGNE_EXIST OUT NUMBER) AS

BEGIN
  select case
              when exists(select DATFER from FERRIE where SUFER=0 and DATFER=DATEIN)
              then 1
              else 0
         end into LIGNE_EXIST from dual;

END;

/
--------------------------------------------------------
--  DDL for Function NEXT_J_OUV
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "NEXT_J_OUV" (date_jour date) RETURN date AS

NJO date;
Nom_NJO long;
NBRJ number;
EXT number(1);

BEGIN
   NJO := date_jour;
   NBRJ :=1;
   WHILE NBRJ != 0 LOOP
     NJO := NJO + NBRJ;
     EXIST_IN_FERRIE(NJO,EXT);
     if EXT = 1 then
       NBRJ := 1;
     else
       Nom_NJO := to_char(NJO, 'FMDay');
       if Nom_NJO = 'Samedi' then
         NBRJ := 2;
       else
         if Nom_NJO = 'Dimanche' then
           NBRJ := 1;
         else
           NBRJ := 0;
         end if;
       end if;
     end if;
   END LOOP;
   RETURN NJO;
END;

/
--------------------------------------------------------
--  DDL for Procedure CALCUL_CLE_CPT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CALCUL_CLE_CPT" 
(
  AGC_IN IN CHAR
, NAT_IN IN NUMBER
, ORD_IN IN NUMBER
, CLE_IN IN NUMBER
, CLE_OUT OUT NUMBER
) AS

ZONWRK CHAR(15);
ZONINT NUMBER;
BEGIN
  ZONWRK := '00000' || AGC_IN || lpad (NAT_IN,2,'0') || lpad (ORD_IN,5,'0') || CLE_IN;
  if SUBSTR(ZONWRK,8,2)='29' then
    ZONWRK := SUBSTR(ZONWRK,1,5) || '92' || SUBSTR(ZONWRK,8);
  end if;
  if SUBSTR(ZONWRK,6,1) >= 'A' or SUBSTR(ZONWRK,7,1) >= 'A' then
     if SUBSTR(ZONWRK,6,1) >= 'A' then
       ZONWRK := SUBSTR(ZONWRK,1,3) || to_char((ASCII(SUBSTR(ZONWRK,6,1))-55)) || SUBSTR(ZONWRK,6);
     else
       ZONWRK := SUBSTR(ZONWRK,1,4) || SUBSTR(ZONWRK,6,1) || SUBSTR(ZONWRK,6);
     end if;
     if SUBSTR(ZONWRK,7,1) >= 'A' then
       ZONWRK := SUBSTR(ZONWRK,1,5) || to_char((ASCII(SUBSTR(ZONWRK,7,1))-55)) || SUBSTR(ZONWRK,8);
     else
       ZONWRK := SUBSTR(ZONWRK,1,5) || '0' || SUBSTR(ZONWRK,7);
     end if;
  end if;

  ZONINT :=  TO_NUMBER(SUBSTR(ZONWRK,14,1))*2;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,13,1))*3;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,12,1))*4;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,11,1))*5;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,10,1))*6;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,9,1))*7;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,8,1))*2;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,7,1))*3;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,6,1))*4;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,5,1))*5;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,4,1))*6;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,3,1))*7;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,2,1))*2;
  ZONINT := ZONINT + TO_NUMBER(SUBSTR(ZONWRK,1,1))*3;
  ZONINT := ZONINT - (TRUNC(ZONINT / 11)* 11);

  if ZONINT = 0 or ZONINT = 1 then
    CLE_OUT := 0;
  else
    CLE_OUT := 11-ZONINT;
  end if;

END;

/
--------------------------------------------------------
--  DDL for Procedure ECRITURE_FL3097
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ECRITURE_FL3097" 
(
 SU3098 IN number
,DATOPE98 IN date
,AGCCPT98 IN char
,NATCPT98 IN number
,ORDCPT98 IN number
,KLECPT98 IN number
,SLDCPT IN float
,CODOPE98 IN char
) AS
BEGIN
  insert into  FL3097 (SU3097,DAT3097,AGCCPT97,NATCPT97,ORDCPT97,KLECPT97,SGN3097,SLD3097,CODOPE97,FILLER97 )
  values(SU3098,DATOPE98,AGCCPT98,NATCPT98,ORDCPT98,KLECPT98,'0', SLDCPT ,CODOPE98,'');
  EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
     UPDATE FL3097 set SU3097=SU3098,DAT3097=DATOPE98 ,AGCCPT97=AGCCPT98 ,NATCPT97=NATCPT98 ,ORDCPT97=ORDCPT98 ,
     KLECPT97=KLECPT98 ,SGN3097='0' ,SLD3097=SLDCPT ,CODOPE97=CODOPE98 ,FILLER97='' where DAT3097=DATOPE98 and 
     AGCCPT97=AGCCPT98 and NATCPT97=NATCPT98 and ORDCPT97=ORDCPT98 and KLECPT97=KLECPT98;
  WHEN OTHERS	THEN NULL;
  standard.commit;
END ECRITURE_FL3097;

/
--------------------------------------------------------
--  DDL for Procedure EXIST_IN_BALTAB
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EXIST_IN_BALTAB" (AA IN CHAR, MM IN CHAR, LIGNE_EXIST OUT NUMBER) AS

BEGIN
  select case
              when exists(select ANNEE, MOIS from BALTAB where ANNEE=AA and MOIS=MM)
              then 1
              else 0
         end into LIGNE_EXIST from dual;

END;

/
--------------------------------------------------------
--  DDL for Procedure EXIST_IN_FLDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EXIST_IN_FLDATE" (DATEIN IN DATE, LIGNE_EXIST OUT NUMBER) AS

BEGIN
  select case
              when exists(select DATOPE from FLDATE where DATOPE=DATEIN)
              then 1
              else 0
         end into LIGNE_EXIST from dual;

END;

/
--------------------------------------------------------
--  DDL for Procedure EXIST_IN_FL1000
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EXIST_IN_FL1000" 
(
  AGCOPE_IN IN CHAR
, DATOPE_IN IN DATE
, CODOPE_IN IN CHAR
, AGCNUM_IN IN CHAR
, SERNUM_IN IN CHAR
, ORDNUM_IN IN NUMBER
, LIGNE_EXIST OUT NUMBER
) AS

BEGIN
  select case
              when exists(select CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002 from FL1000
                          where CODAGC3002=AGCOPE_IN and DATOPE3002=DATOPE_IN and CODOPE3002=CODOPE_IN and 
                          AGCNUM3002=AGCNUM_IN and SERNUM3002=SERNUM_IN and ORDNUM3002=ORDNUM_IN)
              then 1
              else 0
         end into LIGNE_EXIST from dual;
END;

/
--------------------------------------------------------
--  DDL for Procedure EXIST_IN_FL1030
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EXIST_IN_FL1030" 
(
  AGC_IN IN CHAR
, NAT_IN IN NUMBER
, ORD_IN IN NUMBER
, CLE_IN IN NUMBER
, LIGNE_EXIST OUT NUMBER
, CODCLO OUT number
, CODMAJ OUT number
, SLDCPT  OUT FLOAT
) AS

BEGIN
  select case
              when exists(select CODAGC1030,CODNAT1030,ORDCPT1030,KLECPT1030 from FL1030
                          where CODAGC1030=AGC_IN and CODNAT1030=NAT_IN and ORDCPT1030=ORD_IN and KLECPT1030=CLE_IN)
              then 1
              else 0
         end into LIGNE_EXIST from dual;

if LIGNE_EXIST = 1 then
  select CODCLO10,SU1030,SLDCPT10 INTO CODCLO,CODMAJ,SLDCPT from FL1030 where CODAGC1030=AGC_IN and CODNAT1030=NAT_IN 
  and ORDCPT1030=ORD_IN and KLECPT1030=CLE_IN;
end if;
if LIGNE_EXIST = 0 then
 CODCLO := 9;
 CODMAJ := 9;
 SLDCPT := 0;
end if;
END;

/
--------------------------------------------------------
--  DDL for Procedure EXIST_IN_FL2999
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EXIST_IN_FL2999" (CPT IN CHAR,LIGNE_EXIST OUT NUMBER) AS

BEGIN
  select case
              when exists(select CODCPT1 from FL2999 where CODCPT1=CPT)
              then 1
              else 0
         end into LIGNE_EXIST from dual;

END;

/
--------------------------------------------------------
--  DDL for Procedure EXIST_IN_FL3099
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EXIST_IN_FL3099" 
(
  DATE_IN IN DATE
, OPE_IN IN CHAR
, AGC_IN IN CHAR
, SER_IN IN CHAR
, ORD_IN IN NUMBER
, NUM_IN IN NUMBER
, LIGNE_EXIST OUT NUMBER
) AS

BEGIN
  select case
    when exists(select DATOPE99,CODOPE99,AGCNUM99,SERNUM99,ORDNUM99,NUMORD99 from FL3099
                where DATOPE99=DATE_IN and CODOPE99=OPE_IN and AGCNUM99=AGC_IN and SERNUM99=SER_IN and 
                ORDNUM99=ORD_IN and NUMORD99=NUM_IN)
         then 1
         else 0
    end into LIGNE_EXIST from dual;
END;

/
--------------------------------------------------------
--  DDL for Procedure EXIST_IN_ME2910
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "EXIST_IN_ME2910" 
(
  MAJ_IN IN CHAR
, AGC_IN IN CHAR
, NAT_IN IN NUMBER
, ORD_IN IN NUMBER
, CLE_IN IN NUMBER
, LIGNE_EXIST OUT NUMBER
) AS

BEGIN
  select case
              when exists(select SU2910M,CODAGC29101M,CODNAT2910M,ORDCPTM,KLECPTM from ME2910
                          where SU2910M=MAJ_IN and CODAGC29101M=AGC_IN and CODNAT2910M=NAT_IN and ORDCPTM=ORD_IN 
                          and KLECPTM=CLE_IN)
              then 1
              else 0
         end into LIGNE_EXIST from dual;
END;

/
--------------------------------------------------------
--  DDL for Procedure ORDFL1090
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ORDFL1090" 
(
  AGC_IN IN CHAR
, SER_IN IN CHAR
, ORD_IN IN NUMBER
, MNT_IN IN NUMBER
, ORD_OUT OUT NUMBER
, RUBTEST_IN IN LONG
, ECR IN OUT int
) AS

CURSOR CUR1090 IS SELECT * FROM FL1090 WHERE AGCNUM90=AGC_IN and SERNUM90=SER_IN and ORDNUM90=ORD_IN and MNTOPE90=MNT_IN;
ligne1090 FL1090%ROWTYPE;
nbr90 NUMBER(2);
ORD_W NUMBER;
RUBTEST90 LONG;

BEGIN
  --DBMS_OUTPUT.ENABLE( 1000000 ) ;
  OPEN CUR1090;
  FETCH CUR1090 INTO ligne1090;
  WHILE CUR1090%FOUND LOOP
    FETCH CUR1090 INTO ligne1090;
  END LOOP;
  nbr90 := CUR1090%ROWCOUNT;
  CLOSE CUR1090;

  if nbr90 = 0 then
     ORD_OUT := ORD_IN;
     ECR := 1;
     return;
  else
    RUBTEST90 := ligne1090.ENGOPE90 || ligne1090.BAQOPE90 || ligne1090.CPTAGC90 || ligne1090.CPTNAT90|| ligne1090.CPTORD90 ||
    ligne1090.CPTCLE90 || ligne1090.DATFLC90 || ligne1090.DATFLD90 || ligne1090.NOMCPT90 || ligne1090.AGYOPE90 ||
    ligne1090.PTTOPE90 || ligne1090.ECHOPE90 || ligne1090.DSCOPE90 || ligne1090.OPEREC90 || ligne1090.REFOPE90 ||
    ligne1090.ACCEFF90;
    --dbms_output.put_line('RUBTESTIN : ' || RUBTEST_IN);
    --dbms_output.put_line('RUBTEST90 : ' || RUBTEST90);
    if RUBTEST_IN = RUBTEST90 then
      ECR := 0;
      return;
    else
      ORD_W := ORD_IN + 1;
      ORDFL1090(ligne1090.AGCNUM90,ligne1090.SERNUM90,ORD_W,ligne1090.MNTOPE90,ORD_OUT,RUBTEST_IN,ECR);
    end if;
  end if;

END ORDFL1090;

/
--------------------------------------------------------
--  DDL for Procedure ORDFL1091
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ORDFL1091" 
(
  AGC_IN IN CHAR
, SER_IN IN CHAR
, ORD_IN IN NUMBER
, MNT_IN IN NUMBER
, ORD_OUT OUT NUMBER
, RUBTEST_IN IN LONG
, ECR IN OUT int
) AS

CURSOR CUR1091 IS SELECT * FROM FL1091 WHERE AGCNUM91=AGC_IN and SERNUM91=SER_IN and ORDNUM91=ORD_IN and 
MNTOPE91=MNT_IN;
ligne1091 FL1091%ROWTYPE;
nbr91 NUMBER(2);
ORD_W NUMBER;
RUBTEST91 LONG;

BEGIN
  --DBMS_OUTPUT.ENABLE( 1000000 ) ;
  OPEN CUR1091;
  FETCH CUR1091 INTO ligne1091;
  WHILE CUR1091%FOUND LOOP
    FETCH CUR1091 INTO ligne1091;
  END LOOP;
  nbr91 := CUR1091%ROWCOUNT;
  CLOSE CUR1091;

  if nbr91 = 0 then
     ORD_OUT := ORD_IN;
     ECR := 1;
     return;
  else
    RUBTEST91 := ligne1091.ENGOPE91 || ligne1091.BAQOPE91 || ligne1091.CPTAGC91 || ligne1091.CPTNAT91|| 
    ligne1091.CPTORD91 || ligne1091.CPTCLE91 || ligne1091.DATFLC91 || ligne1091.DATFLD91 || ligne1091.NOMCPT91 ||
    ligne1091.AGYOPE91 || ligne1091.PTTOPE91 || ligne1091.ECHOPE91 || ligne1091.DSCOPE91 || ligne1091.OPEREC91 ||
    ligne1091.REFOPE91 || ligne1091.ACCEFF91;
    --dbms_output.put_line('RUBTESTIN : ' || RUBTEST_IN);
    --dbms_output.put_line('RUBTEST91 : ' || RUBTEST91);
    if RUBTEST_IN = RUBTEST91 then
      ECR := 0;
      return;
    else
      ORD_W := ORD_IN + 1;
      ORDFL1091(ligne1091.AGCNUM91,ligne1091.SERNUM91,ORD_W,ligne1091.MNTOPE91,ORD_OUT,RUBTEST_IN,ECR);
    end if;
  end if;

END ORDFL1091;

/

--------------------------------------------------------
--  DDL for Procedure AG1003
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "AG1003" AS
CURSOR CUR1003 IS SELECT * FROM FL1003
               where (CODOPE03='C037' or CODOPE03='H461') and (INSMEG03='CRE' or  INSMEG03='DBA')
               order by INSMEG03;
ligne1003 FL1003%ROWTYPE ;
CODCLO number;
CODMAJ number;
SLDCPT FLOAT;
EXT1030 NUMBER;
EXT1000 NUMBER;
ECR1090 NUMBER;
ECR1091 NUMBER;
RUBTEST LONG;
ORDOUT NUMBER(7);
LIB90 CHAR(30);
LIB91 CHAR(30);
SLDCPT1 float;
JCOMPTABLE date;

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR1003 ;
  FETCH CUR1003 INTO ligne1003 ;
  WHILE CUR1003%FOUND LOOP
    EXIST_IN_FL1030(ligne1003.AG1OPE03,ligne1003.NA1OPE03,ligne1003.OR1OPE03,ligne1003.KL1OPE03,EXT1030,
    CODCLO,CODMAJ,SLDCPT);

-- REG3 et REG5
    if (EXT1030 = 0 or (EXT1030 = 1 and (CODMAJ <> 0 or CODCLO = 1))) and ligne1003.INSMEG03 = 'CRE' then
      if EXT1030 = 0 then
        LIB90 := 'CPT A CRD INEXISTANT' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      if EXT1030 = 1 and CODMAJ <> 0 then
        LIB90 := 'CPT A CRDT SUPPRIME' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      if EXT1030 = 1 and CODCLO = 1 then
        LIB90 := 'CPT A CREDIT CLOTURE' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      RUBTEST := LIGNE1003.ENGOPE03 || LIGNE1003.BAQOPE03 || LIGNE1003.AG1OPE03 || LIGNE1003.NA1OPE03 || 
      LIGNE1003.OR1OPE03 || LIGNE1003.KL1OPE03 || 
      TO_DATE(JCOMPTABLE) || '' || '' || '' || LIGNE1003.PTTOPE03 || LIGNE1003.ECHOPE03 || LIB90 || '' || '' || 
      LIGNE1003.ACCEFF03;
      ORDFL1090(LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,LIGNE1003.MNTOPE03,ORDOUT,RUBTEST,ECR1090);
      if ECR1090 = 1 then
        INSERT INTO FL1090 (SU1090,AGCNUM90,SERNUM90,ORDNUM90,MNTOPE90,ENGOPE90,BAQOPE90,CPTAGC90,CPTNAT90,CPTORD90,
        CPTCLE90,DATFLC90,DATFLD90,NOMCPT90,AGYOPE90,PTTOPE90,ECHOPE90,DSCOPE90,OPEREC90,REFOPE90,ACCEFF90,RESEFF90,
        DATREC90,ETAEFF90) values ('0',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,ORDOUT,LIGNE1003.MNTOPE03,'',
        LIGNE1003.BAQOPE03,LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,
        TO_DATE(JCOMPTABLE),'','','','','',LIB90,'','','','','','');
        INSERT INTO FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
        ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,AGYOPE3002,NAYOPE3002,
        ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,
        PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,
        NATOPE3002,TYPOPE3002,FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
        PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002) VALUES ('0','93',TO_DATE(JCOMPTABLE),'T016',
        LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,ORDOUT,LIGNE1003.MNTOPE03,'',LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,
        LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,'','','AUTOM','','','','',LIGNE1003.AGCMEG03,'','','','','',
        'AGIOS CR / CR A REG','','','',LIGNE1003.DATOPE03,'','',LIGNE1003.DATVAL03,'','','',0,08,'','','','','','','','',
        '','','','93','','','','');
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE),MEGMEG03='99' where AGCMEG03=LIGNE1003.AGCMEG03 
        AND CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
      end if;
    end if ;

-- REG4 et REG7
    if (EXT1030 = 0 or (EXT1030 = 1 and (CODMAJ <> 0 or CODCLO = 1))) and ligne1003.INSMEG03 = 'DBA' then
      if EXT1030 = 0 then
        LIB91 := 'CPT A DBT INEXISTANT' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      if EXT1030 = 1 and CODMAJ <> 0 then
        LIB91 := 'CPT A DBT SUPPRIME' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      if EXT1030 = 1 and CODCLO = 1 then
        LIB91 := 'CPT A DEBITE CLOTURE' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      RUBTEST := LIGNE1003.ENGOPE03 || LIGNE1003.BAQOPE03 || LIGNE1003.AG1OPE03 || LIGNE1003.NA1OPE03 || 
      LIGNE1003.OR1OPE03 || LIGNE1003.KL1OPE03 || TO_DATE(JCOMPTABLE) || '' || '' || '' || LIGNE1003.PTTOPE03 || 
      LIGNE1003.ECHOPE03 || LIB91 || '' || '' || LIGNE1003.ACCEFF03;
      ORDFL1091(LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,LIGNE1003.MNTOPE03,ORDOUT,RUBTEST,ECR1091);
      if ECR1091 = 1 then
        INSERT INTO FL1091 (SU1091,AGCNUM91,SERNUM91,ORDNUM91,MNTOPE91,ENGOPE91,BAQOPE91,CPTAGC91,CPTNAT91,
        CPTORD91,CPTCLE91,DATFLC91,DATFLD91,NOMCPT91,AGYOPE91,PTTOPE91,ECHOPE91,DSCOPE91,OPEREC91,REFOPE91,
        ACCEFF91,RESEFF91,DATREC91,ETAEFF91) values ('0',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,ORDOUT,
        LIGNE1003.MNTOPE03,'',LIGNE1003.BAQOPE03,LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,
        LIGNE1003.KL1OPE03,TO_DATE(JCOMPTABLE),'','','','','',LIB91,'','','','','','');
        INSERT INTO FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
        ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,AGYOPE3002,
        NAYOPE3002,ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,COMOPE3002,TPSOPE3002,
        DSCOPE3002,ECHOPE3002,PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,
        RESEFF3002,CATOPE3002,NATOPE3002,TYPOPE3002,FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,
        BNFOPE15,CODAVO3002,ECHU3002,PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002) VALUES 
        ('0','93',TO_DATE(JCOMPTABLE),'T018',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,ORDOUT,LIGNE1003.MNTOPE03,'',
        LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,'','','AUTOM','','','','',
        LIGNE1003.AGCMEG03,'','','','','','AGIOS DB / DB A REG','','','',LIGNE1003.DATOPE03,'','',LIGNE1003.DATVAL03,
        '','','',0,08,'','','','','','','','','','','','93','','','','');
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE),MEGMEG03='98' where AGCMEG03=LIGNE1003.AGCMEG03 
        AND CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
      end if;
    end if ;

-- REG6
    if EXT1030 = 1 and CODMAJ = 0 and CODCLO <> 1 and ligne1003.INSMEG03 = 'CRE' then
      EXIST_IN_FL1000('93',TO_DATE(JCOMPTABLE),'T017',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,EXT1000);
      if EXT1000 = 0 then
        SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = ligne1003.AG1OPE03 and 
        CODNAT1030  = ligne1003.NA1OPE03 AND ORDCPT1030  = ligne1003.OR1OPE03 AND KLECPT1030  = ligne1003.KL1OPE03;
        SLDCPT1 := SLDCPT1 + LIGNE1003.MNTOPE03;
        UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = ligne1003.AG1OPE03 and CODNAT1030  = ligne1003.NA1OPE03 
        AND ORDCPT1030  = ligne1003.OR1OPE03 AND KLECPT1030  = ligne1003.KL1OPE03;
        Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,
        NATCPT98,ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ('0',TO_DATE(JCOMPTABLE),'T017',
        LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,'1','',LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,
        LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,TO_DATE(JCOMPTABLE),'CRE ','0',LIGNE1003.MNTOPE03);
        INSERT INTO FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
        ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,AGYOPE3002,NAYOPE3002,
        ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,
        PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,
        NATOPE3002,TYPOPE3002,FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
        PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002) VALUES ('0','93',TO_DATE(JCOMPTABLE),'T017',
        LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,LIGNE1003.MNTOPE03,'',LIGNE1003.AG1OPE03,
        LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,'','','AUTOM','','','','',LIGNE1003.AGCMEG03,'','','',
        '','','AGIOS CR / CR CLT','','','',LIGNE1003.DATOPE03,'','',LIGNE1003.DATVAL03,'','','',0,08,'','','','','','',
        '','','','','','93','','','','');
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE) where AGCMEG03=LIGNE1003.AGCMEG03 AND 
        CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
      end if;
    end if ;

-- REG8
    if EXT1030 = 1 and CODMAJ = 0 and CODCLO <> 1 and ligne1003.INSMEG03 = 'DBA' then
      EXIST_IN_FL1000('93',TO_DATE(JCOMPTABLE),'T019',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,EXT1000);
      if EXT1000 = 0 then
        SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = ligne1003.AG1OPE03 and 
        CODNAT1030  = ligne1003.NA1OPE03 AND ORDCPT1030  = ligne1003.OR1OPE03 AND KLECPT1030  = ligne1003.KL1OPE03;
        SLDCPT1 := SLDCPT1 - LIGNE1003.MNTOPE03;
        UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = ligne1003.AG1OPE03 and CODNAT1030  = ligne1003.NA1OPE03 
        AND ORDCPT1030  = ligne1003.OR1OPE03 AND KLECPT1030  = ligne1003.KL1OPE03;
        Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,NATCPT98,
        ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ('0',TO_DATE(JCOMPTABLE),'T019',LIGNE1003.AGCNUM03,
        LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,'1','',LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,
        LIGNE1003.KL1OPE03,TO_DATE(JCOMPTABLE),'DBA ','-',LIGNE1003.MNTOPE03);
        INSERT INTO FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
        ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,AGYOPE3002,NAYOPE3002,
        ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,
        PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,
        NATOPE3002,TYPOPE3002,FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
        PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002) VALUES ('0','93',TO_DATE(JCOMPTABLE),'T019',
        LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,LIGNE1003.MNTOPE03,'',LIGNE1003.AG1OPE03,
        LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,'','','AUTOM','','','','',LIGNE1003.AGCMEG03,'','','',
        '','','AGIOS DB / DB CLT','','','',LIGNE1003.DATOPE03,'','',LIGNE1003.DATVAL03,'','','',0,08,'','','','','','',
        '','','','','','93','','','','');
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE) where AGCMEG03=LIGNE1003.AGCMEG03 AND 
        CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
      end if;
    end if;

-- REG9
    if EXT1030 = 1 and ligne1003.INSMEG03 <> 'CRE' and ligne1003.INSMEG03 <> 'DBA' then
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE) where AGCMEG03=LIGNE1003.AGCMEG03 AND 
        CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
    end if;

  FETCH CUR1003 INTO ligne1003 ;
END LOOP ;

close CUR1003;
standard.commit;
END AG1003;

/

--------------------------------------------------------
--  DDL for Procedure APUR_AUT0_T031
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "APUR_AUT0_T031" 
( AGCCLT IN CHAR
, NATCLT IN NUMBER
, ORDCLT IN NUMBER
, CLECLT IN NUMBER
, ENGCLT IN CHAR
, AGCCTX IN CHAR
, NATCTX IN NUMBER
, ORDCTX IN NUMBER
, CLECTX IN NUMBER
, USROPE IN CHAR
) AS
CURSOR  CUR1061 IS select * from FL1061
                   where (CPTAGC61=AGCCLT and CPTNAT61=NATCLT and CPTORD61=ORDCLT and CPTCLE61=CLECLT
                   and ENGOPE61=ENGCLT and SU1061=0);
ligne1061 FL1061%ROWTYPE;

JCOMPTABLE date;

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR1061;
  FETCH CUR1061 INTO ligne1061;
  WHILE CUR1061%FOUND LOOP
      insert into FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
                          ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,
                          AGYOPE3002,NAYOPE3002,ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,
                          COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,
                          FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,NATOPE3002,TYPOPE3002,
                          FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
                          PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002)
             values (0,'93',TO_DATE(JCOMPTABLE),'T031',ligne1061.AGCNUM61,ligne1061.SERNUM61,ligne1061.ORDNUM61,
                     ligne1061.MNTOPE61,ligne1061.ENGOPE61,AGCCTX,NATCTX,ORDCTX,CLECTX,'','',USROPE,
                     ligne1061.CPTAGC61,ligne1061.CPTNAT61,ligne1061.CPTORD61,ligne1061.CPTCLE61,'','','',0,0,0,
                     ligne1061.NOMCPT61,ligne1061.ECHOPE61,ligne1061.PPLINT61,'',ligne1061.DATCRE61,'','','','','',
                     ligne1061.SANEFF61,4,12,3,'','','','','','','','','','','',0,0,0,ligne1061.MNTOPE61);
    FETCH CUR1061 INTO ligne1061;
    END LOOP;
    CLOSE CUR1061;
    standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure APUR_AUT0_T042
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "APUR_AUT0_T042" 
( AGCCLT IN CHAR
, NATCLT IN NUMBER
, ORDCLT IN NUMBER
, CLECLT IN NUMBER
, ENGCLT IN CHAR
, AGCCTX IN CHAR
, NATCTX IN NUMBER
, ORDCTX IN NUMBER
, CLECTX IN NUMBER
, USROPE IN CHAR
) AS
CURSOR  CUR1062 IS select * from FL1062
                   where (CPTAGC62=AGCCLT and CPTNAT62=NATCLT and CPTORD62=ORDCLT and CPTCLE62=CLECLT
                   and ENGOPE62=ENGCLT and SU1062=0);
ligne1062 FL1062%ROWTYPE;

JCOMPTABLE date;

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR1062;
  FETCH CUR1062 INTO ligne1062;
  WHILE CUR1062%FOUND LOOP
      insert into FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
                          ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,
                          AGYOPE3002,NAYOPE3002,ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,
                          COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,
                          FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,NATOPE3002,TYPOPE3002,
                          FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
                          PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002)
             values (0,'93',TO_DATE(JCOMPTABLE),'T042',ligne1062.AGCNUM62,ligne1062.SERNUM62,ligne1062.ORDNUM62,
                     ligne1062.MNTOPE62,ligne1062.ENGOPE62,AGCCTX,NATCTX,ORDCTX,CLECTX,'','',USROPE,
                     ligne1062.CPTAGC62,ligne1062.CPTNAT62,ligne1062.CPTORD62,ligne1062.CPTCLE62,'20','','',0,0,0,
                     ligne1062.NOMCPT62,ligne1062.ECHOPE62,ligne1062.PPLINT62,'',ligne1062.DATCRE62,'','','','','',
                     ligne1062.SANEFF62,4,09,3,'','','','','','','','',ligne1062.ECHU62,'1','','','','','');
    FETCH CUR1062 INTO ligne1062;
    END LOOP;
    CLOSE CUR1062;
    standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure APUR_AUT0_T064
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "APUR_AUT0_T064" 
( AGCCTX IN CHAR
, NATCTX IN NUMBER
, ORDCTX IN NUMBER
, CLECTX IN NUMBER
, ENGCTX IN CHAR
, USROPE IN CHAR
) AS
CURSOR  CUR1066 IS select * from FL1066
                   where (CPTAGC66=AGCCTX and CPTNAT66=NATCTX and CPTORD66=ORDCTX and CPTCLE66=CLECTX
                   and ENGOPE66=ENGCTX and SU1066=0);
ligne1066 FL1066%ROWTYPE;

JCOMPTABLE date;
NOMCPT CHAR(30);

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR1066;
  FETCH CUR1066 INTO ligne1066;
  WHILE CUR1066%FOUND LOOP
      SELECT NOMRSC INTO NOMCPT from FL1030 where CODAGC1030=AGCCTX and CODNAT1030=NATCTX AND ORDCPT1030=ORDCTX AND 
      KLECPT1030=CLECTX;
      insert into FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
                          ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,
                          AGYOPE3002,NAYOPE3002,ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,
                          COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,
                          FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,NATOPE3002,TYPOPE3002,
                          FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
                          PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002)
             values (0,'93',TO_DATE(JCOMPTABLE),'T064',ligne1066.AGCNUM66,ligne1066.SERNUM66,ligne1066.ORDNUM66,
                     ligne1066.MNTOPE66,ligne1066.ENGOPE66,AGCCTX,NATCTX,ORDCTX,CLECTX,'','',USROPE,
                     '','','','','','','',0,0,0,
                     NOMCPT,ligne1066.ECHOPE66,ligne1066.PPLINT66,'','','','','','','',
                     ligne1066.SANEFF66,1,09,3,'','','','','','','','',ligne1066.ECHU66,ligne1066.PFCAGC66,'','','','','');
    FETCH CUR1066 INTO ligne1066;
    END LOOP;
    CLOSE CUR1066;
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

--------------------------------------------------------
--  DDL for Procedure BALANCE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BALANCE" AS

TYPE CURSOR_TYPE IS RECORD (SU30 char(1),AGC30 char(2),NAT30 number(2),ORD30 number(5),KLE30 number(1),SLD30 float);

CURSOR CURBalance   IS  SELECT SU1030,CODAGC1030,CODNAT1030,ORDCPT1030,KLECPT1030, SLDCPT10 FROM FL1030
                    WHERE (SU1030 <>1) and (CODCLO10 <>1) order by CODAGC1030,CODNAT1030,ORDCPT1030,KLECPT1030;
--ligne1030 FL1030%ROWTYPE;
ligne1030 CURSOR_TYPE;
Compteur number :=0;
i number;
EXIST number(1);
TYPE CPT_SLD IS RECORD (CPT char(10),SLD float);
TYPE Cinqcomptes IS TABLE OF CPT_SLD INDEX BY BINARY_INTEGER;
CPT5 Cinqcomptes;
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE FL2999';
  OPEN  CURBalance ;
  FETCH  CURBalance  INTO ligne1030 ;
  WHILE CURBalance%FOUND LOOP
    FOR i IN 1..5
    LOOP
      CPT5(i).CPT := '';
      CPT5(i).SLD := '';
    END LOOP;
    i := 1;
    while CURBalance%FOUND and i <= 5 loop
      CPT5(i).CPT := lpad (ligne1030.AGC30,2,'0') || lpad (ligne1030.NAT30,2,'0') || lpad (ligne1030.ORD30,5,'0') ||
      ligne1030.KLE30;
      CPT5(i).SLD := ligne1030.SLD30;
      Compteur := Compteur + 1;
      i := i + 1;
      FETCH  CURBalance  INTO ligne1030 ;
    end loop;
    EXIST_IN_FL2999(CPT5(1).CPT,EXIST);
    if EXIST = 0 then
      INSERT INTO FL2999 (SU2999,CODCPT1,SLD1,CODCPT2,SLD2,CODCPT3,SLD3,CODCPT4,SLD4,CODCPT5,SLD5,MM2999,JJ2999,CTR2999)
             values ('0',CPT5(1).CPT,CPT5(1).SLD,CPT5(2).CPT,CPT5(2).SLD,CPT5(3).CPT,CPT5(3).SLD,
             CPT5(4).CPT,CPT5(4).SLD,CPT5(5).CPT,CPT5(5).SLD,substr(JCOMPTABLE,4,2),substr(JCOMPTABLE,1,2),Compteur);
    end if;
  end loop;
close  CURBalance ;
standard.commit;
END BALANCE;

/
--------------------------------------------------------
--  DDL for Procedure BFL2999
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BFL2999" (TYPBAL IN CHAR) AS

DEBMOIS date;
FINMOIS date;
ANNPREC char(2);
MOIPREC char(2);
EXIST number ;
JCOMPTABLE date;

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  if TYPBAL = 'D' then
    DEBMOIS := PREM_J_OUV_MOIS(JCOMPTABLE);
    if TO_DATE(JCOMPTABLE) = TO_DATE(DEBMOIS) then
      ANNPREC := substr(add_months(JCOMPTABLE,-1),7,2);
      MOIPREC := substr(add_months(JCOMPTABLE,-1),4,2);
      --dbms_output.put_line('TODATE = ' || TO_DATE(JCOMPTABLE) || '   DEBMOIS = ' || TO_DATE(DEBMOIS));
      EXIST_IN_BALTAB(ANNPREC,MOIPREC,EXIST) ;
      if EXIST = 0 then
        BALANCE;
        INSERT INTO BALTAB (ANNEE,MOIS,TYPBAL)  values (ANNPREC,MOIPREC,'D');
      end if;
    end if;
  end if;

  if TYPBAL = 'F' then
    FINMOIS := DER_J_OUV_MOIS(JCOMPTABLE);
    if TO_DATE(JCOMPTABLE) = TO_DATE(FINMOIS) then
      dbms_output.put_line('TODATE = ' || TO_DATE(JCOMPTABLE) || '   FINMOI = ' || TO_DATE(FINMOIS));
      EXIST_IN_BALTAB(substr(JCOMPTABLE,7,2),substr(JCOMPTABLE,4,2),EXIST) ;
      if EXIST = 0 then
        BALANCE;
        INSERT INTO BALTAB (ANNEE,MOIS,TYPBAL)  values (substr(JCOMPTABLE,7,2),substr(JCOMPTABLE,4,2),'F');
      end if;
    end if;
  end if;
standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure CH1099
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CH1099" AS

CURSOR CUR3098  IS SELECT * FROM FL3098
                WHERE SU3098 = 0 and   MNTOPE98 <> 0;
ligne3098   FL3098%ROWTYPE;
EXT number(1);
BEGIN
  OPEN CUR3098 ;
  FETCH CUR3098 INTO  ligne3098;
  WHILE CUR3098 %FOUND LOOP
    EXIST_IN_FL3099(ligne3098.DATOPE98,ligne3098.CODOPE98,ligne3098.AGCNUM98,ligne3098.SERNUM98,
    ligne3098.ORDNUM98,ligne3098.NUMORD98,EXT);
    if EXT = 0 then
      INSERT INTO FL3099(SU3099,DATOPE99,CODOPE99,AGCNUM99,SERNUM99,ORDNUM99,NUMORD99,FILLER99,AGCCPT99,
      NATCPT99,ORDCPT99,KLECPT99,DATOPE8,ABROPE99,SMNTOPE99,MNTOPE99) values (ligne3098.SU3098,ligne3098.DATOPE98,
      ligne3098.CODOPE98,ligne3098.AGCNUM98,ligne3098.SERNUM98,ligne3098.ORDNUM98,ligne3098.NUMORD98,
      ligne3098.FILLER98,ligne3098.AGCCPT98,ligne3098.NATCPT98,ligne3098.ORDCPT98,ligne3098.KLECPT98,
      ligne3098.DATOPE8,ligne3098.ABROPE98,ligne3098.SMNTOPE98,ligne3098.MNTOPE98);
    end if;
    FETCH CUR3098 INTO ligne3098;
  END LOOP;
  CLOSE CUR3098;
standard.commit;
END CH1099;

/
--------------------------------------------------------
--  DDL for Procedure MAJCNF
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "MAJCNF" (IND IN NUMBER) AS

BEGIN
  UPDATE CNFTAB set CODCNF=IND where IDCNF='SYSTEM';
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure MAJ_FLDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "MAJ_FLDATE" (DATDEB IN DATE, EMP IN CHAR) AS

EXT number(1);

BEGIN
  EXIST_IN_FLDATE(DATDEB,EXT);
  if EXT = 0 then
    INSERT INTO FLDATE (DATOPE,FERDAT,CLODAT,EMPDAT) VALUES (DATDEB,0,0,EMP);
  end if;
  standard.commit;
END MAJ_FLDATE;

/
--------------------------------------------------------
--  DDL for Procedure CNF1019
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CNF1019" AS

CURSOR  CUR1019 IS SELECT * FROM FL1019 WHERE  SU1019=0
                ORDER BY AGXOPE19, NAXOPE19, ORXOPE19, KLXOPE19, CODOPE19, CGLOPE19, REFOPE19;

ligne1019 FL1019%ROWTYPE;
EXT1019 number(1);
ZAGC char(2);
TOTDBI float;
TOTCRE float;
DIFF float;
TOTDBIG float :=0;
TOTCREG float :=0;
DIFFG float;
LIBAGC char(30);
CNF number(1) :=0;
ZOBS char(16);

BEGIN

  EXECUTE IMMEDIATE ' TRUNCATE TABLE FLETAT ';

  OPEN CUR1019 ;
  FETCH CUR1019 INTO  ligne1019;
  WHILE CUR1019 %FOUND LOOP
    ZAGC := ligne1019.AGXOPE19;
    TOTDBI := 0;
    TOTCRE := 0;
    WHILE (CUR1019 %FOUND) and (ZAGC = ligne1019.AGXOPE19) LOOP
      if ligne1019.CODOPE19='T087' or ligne1019.CODOPE19='T089' or ligne1019.CODOPE19='T007' then
        TOTDBI  := TOTDBI  + ligne1019.MNTDBI19;
        TOTDBIG := TOTDBIG + ligne1019.MNTDBI19;
      end if;
      if ligne1019.CODOPE19='T008' then
        TOTCRE  := TOTCRE  + ligne1019.MNTCRE19;
        TOTCREG := TOTCREG + ligne1019.MNTCRE19;
      end if;
      if ligne1019.CODOPE19='T088' or ligne1019.CODOPE19='T090' then
        TOTCRE  := TOTCRE  + ligne1019.MNTDBI19;
        TOTCREG := TOTCREG + ligne1019.MNTDBI19;
      end if;
      FETCH CUR1019 INTO ligne1019;
    END LOOP;
    DIFF  := TOTDBI  - TOTCRE;
    ZOBS := '';
    if DIFF != 0 then
      CNF :=1;
      ZOBS := 'NON BALANCEE ???';
    end if;
    SELECT LIB5503 INTO LIBAGC FROM FL5503 WHERE CODAGC5503=ZAGC;
    INSERT INTO FLETAT (CAGC,CLIB,CTOTDBI,CTOTCRE,CDIFF,COBS) values (ZAGC,LIBAGC,TOTDBI,TOTCRE,ABS(DIFF),ZOBS);
  END LOOP;
  CLOSE CUR1019;
    DIFFG := TOTDBIG - TOTCREG;
    ZOBS := '';
    if DIFFG != 0 then
      CNF :=1;
      ZOBS := 'NON BALANCEE ???';
    end if;
    INSERT INTO FLETAT (CAGC,CLIB,CTOTDBI,CTOTCRE,CDIFF,COBS) values ('TT','',TOTDBIG,TOTCREG,ABS(DIFFG),ZOBS);
    MAJCNF(CNF);
standard.commit;
END CNF1019;

/
--------------------------------------------------------
--  DDL for Procedure CPT3099
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CPT3099" AS
BEGIN

EXECUTE IMMEDIATE 'TRUNCATE  TABLE FL3099_TEMP ';
  insert into FL3099_TEMP (select distinct (AGCCPT99 || lpad (NATCPT99,2,'0') || lpad (ORDCPT99,5,'0') || 
  KLECPT99) from FL3099);
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure CR3097A
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CR3097A" AS

CURSOR CUR3098  IS SELECT * FROM FL3098 WHERE SU3098 = 0;
ligne3098   FL3098%ROWTYPE;
EXIST  number ;
CODCLO number;
CODMAJ number;
SLDCPT  FLOAT;

BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE FL3097';
  OPEN  CUR3098 ;
  FETCH CUR3098 INTO   ligne3098 ;
  WHILE CUR3098%FOUND LOOP
    EXIST_IN_FL1030(ligne3098.AGCCPT98,ligne3098.NATCPT98,ligne3098.ORDCPT98,ligne3098.KLECPT98,EXIST,
    CODCLO,CODMAJ,SLDCPT);
    if  EXIST = 1 and CODMAJ = 0 and CODCLO != 1 then
      ECRITURE_FL3097(ligne3098.SU3098,ligne3098.DATOPE98,ligne3098.AGCCPT98,ligne3098.NATCPT98,
      ligne3098.ORDCPT98,ligne3098.KLECPT98,SLDCPT,ligne3098.CODOPE98);
    end if;
    FETCH CUR3098  INTO ligne3098 ;
  END LOOP;
  CLOSE CUR3098 ;
END CR3097A;

/
--------------------------------------------------------
--  DDL for Procedure CR3097B
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CR3097B" AS
CURSOR CURME1030  IS SELECT * FROM ME1030 WHERE SU1030M = 'M' ;
ligneME1030   ME1030%ROWTYPE;
EXIST number ;
CODCLO number;
CODMAJ number;
SLDCPT float ;

BEGIN
  OPEN CURME1030 ;
  FETCH CURME1030 INTO  ligneME1030 ;
  WHILE  CURME1030%FOUND LOOP
    EXIST_IN_FL1030(ligneME1030.CODAGC1030M,ligneME1030.CODNAT1030M,ligneME1030.ORDCPT1030M,
    ligneME1030.KLECPT1030M,EXIST,CODCLO,CODMAJ,SLDCPT) ;
    if  EXIST = 1  then
      ECRITURE_FL3097('0',ligneME1030.OUVCPT10M,ligneME1030.CODAGC1030M,ligneME1030.CODNAT1030M,
      ligneME1030.ORDCPT1030M,ligneME1030.KLECPT1030M,SLDCPT,ligneME1030.CODOPE29M);
    end if;
    FETCH CURME1030 INTO  ligneME1030 ;
  END LOOP;
  CLOSE CURME1030 ;
END CR3097B;

/
--------------------------------------------------------
--  DDL for Procedure CTXFUS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CTXFUS" AS

CURSOR CUR1000 IS SELECT * FROM FL1000
               WHERE SU3002 = 0 and
               ( (CODOPE3002='T011' or CODOPE3002='T013' or CODOPE3002='T037' or CODOPE3002='T040')  or
                 ((CODOPE3002='T096') and (ENGOPE3002='611') and (PPLINT3002=0))  or
                 ((CODOPE3002='T096') and (ENGOPE3002='631' or ENGOPE3002='632' or ENGOPE3002='633' or 
                 ENGOPE3002='634') and (PPLINT3002<>0) and (ECHU3002='0')) );

ligne1000   FL1000%ROWTYPE;
EXT1000 number(1);

CURSOR  CUR1019 IS SELECT * FROM FL1019
                WHERE  SU1019=0 and CGLOPE19=45020 and MEGMEG19<>'93';

ligne1019 FL1019%ROWTYPE;
EXT1019 number(1);

SGN char(1);
DSC char(30);
DEST char(2);
ORDW char(29);
AGY char(2):=null;
NAY number(2):=null;
ORY number(5):=null;
KLY number(1):=null;
MNT float;

BEGIN

  EXECUTE IMMEDIATE ' TRUNCATE TABLE FW3000 ';

  OPEN CUR1000 ;
  FETCH CUR1000 INTO  ligne1000;
  WHILE CUR1000 %FOUND LOOP
    DSC := ligne1000.DSCOPE3002;
    if ligne1000.CODOPE3002='T096' then
      DEST := '90';
    end if;
    if (ligne1000.CODOPE3002='T011' or ligne1000.CODOPE3002='T013' or ligne1000.CODOPE3002='T037' or 
    ligne1000.CODOPE3002='T040') and (ligne1000.MEGOPE3002 is not null) then
      DEST := ligne1000.MEGOPE3002;
    end if;
    if (ligne1000.CODOPE3002='T011' or ligne1000.CODOPE3002='T013' or ligne1000.CODOPE3002='T037' or 
    ligne1000.CODOPE3002='T040') and (ligne1000.MEGOPE3002 is null) then
      DEST := ligne1000.AGCNUM3002;
    end if;
    if ligne1000.CODOPE3002='T096' or ligne1000.CODOPE3002='T013' or ligne1000.CODOPE3002='T037' then
      SGN := 'D';
    end if;
    if ligne1000.CODOPE3002='T011' or ligne1000.CODOPE3002='T040' then
      SGN := 'C';
    end if;
    if (ligne1000.ENGOPE3002='661' or  ligne1000.ENGOPE3002='662' or ligne1000.ENGOPE3002='663' or 
    ligne1000.ENGOPE3002='641' or ligne1000.ENGOPE3002='642' or ligne1000.ENGOPE3002='643' or 
    ligne1000.ENGOPE3002='644')
        and (ligne1000.ECHU3002='0') and
        ((ligne1000.PPLINT3002=0 or ligne1000.PPLINT3002=2) or ((ligne1000.PPLINT3002=1) and 
        (substr(ligne1000.ECHOPE3002,7,2) <> substr(ligne1000.DATOPE3002,7,2)))) then
      SGN := 'D';
      DSC := 'REJET EFFET AU PFC';
      DEST := '90';
      ORDW := 'CONTENTIEUX';
    end if;

    INSERT INTO FW3000 (SUW300,CODAGCW,DATOPEW,CODOPEW,AGCNUMW,SERNUMW,ORDNUMW,SGNMNTW,MNTOPEW,ENGOPEW,AGXOPEW,
    NAXOPEW,ORXOPEW,KLXOPEW,CODMRCW,AGYOPEW,NAYOPEW,ORYOPEW,KLYOPEW,MEGOPEW,PTTOPEW,BAQOPEW,DSCOPEW,CATOPEW,
    CODDST2W,CODDST4W,CODETAW,BNFOPEW,VRSOPEW,ECHUW,PFCAGCW,ORDOPEW,RESEFFW) values (0,'93',ligne1000.DATOPE3002,
    ligne1000.CODOPE3002,ligne1000.AGCNUM3002,ligne1000.SERNUM3002,ligne1000.ORDNUM3002,SGN,ligne1000.MNTOPE3002,
    ligne1000.ENGOPE3002,ligne1000.AGXOPE3002,ligne1000.NAXOPE3002,ligne1000.ORXOPE3002,ligne1000.KLXOPE3002,
    ligne1000.CODMRC3002,ligne1000.AGYOPE3002,ligne1000.NAYOPE3002,ligne1000.ORYOPE3002,ligne1000.KLYOPE3002,
    ligne1000.MEGOPE3002,ligne1000.PTTOPE3002,ligne1000.BAQOPE3002,DSC,1,DEST,'',2,'','','','',ORDW,
    ligne1000.RESEFF3002);
    FETCH CUR1000 INTO ligne1000;
  END LOOP;
  CLOSE CUR1000;
  standard.commit;

  OPEN CUR1019 ;
  FETCH CUR1019 INTO  ligne1019;
  WHILE CUR1019 %FOUND LOOP
    if ligne1019.CODOPE19='T089' then
      SGN := 'C';
    else
      SGN := 'D';
    end if;
    if ligne1019.CODOPE19='T089' or ligne1019.CODOPE19='T090' then
      AGY := ligne1019.AGYOPE19;
      NAY := ligne1019.NAYOPE19;
      ORY := ligne1019.ORYOPE19;
      KLY := ligne1019.KLYOPE19;
    end if;
    if ligne1019.CODOPE19='T008' then
      MNT := ligne1019.MNTCRE19;
    else
      MNT := ligne1019.MNTDBI19;
    end if;

    INSERT INTO FW3000 (SUW300,CODAGCW,DATOPEW,CODOPEW,AGCNUMW,SERNUMW,ORDNUMW,SGNMNTW,MNTOPEW,ENGOPEW,AGXOPEW,
    NAXOPEW,ORXOPEW,KLXOPEW,CODMRCW,AGYOPEW,NAYOPEW,ORYOPEW,KLYOPEW,MEGOPEW,PTTOPEW,BAQOPEW,DSCOPEW,CATOPEW,
    CODDST2W,CODDST4W,CODETAW,BNFOPEW,VRSOPEW,ECHUW,PFCAGCW,ORDOPEW,RESEFFW) values (0,'93',ligne1019.DATOPE19,
    ligne1019.CODOPE19,substr(lpad (ligne1019.REFOPE19,10,'0'),1,2),substr(lpad (ligne1019.REFOPE19,10,'0'),3,1),
    to_number(substr(lpad (ligne1019.REFOPE19,10,'0'),4,7)),SGN,MNT,'','','','','','',AGY,NAY,ORY,KLY,
    ligne1019.MEGOPE19,'','',ligne1019.LIBOPE19,5,ligne1019.MEGMEG19,'',2,'','','','','','');
    FETCH CUR1019 INTO ligne1019;
  END LOOP;
  CLOSE CUR1019;
  standard.commit;
END CTXFUS;

/
--------------------------------------------------------
--  DDL for Procedure CTXISM_CTXCLO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CTXISM_CTXCLO" AS
BEGIN

FOR i IN (SELECT null FROM user_tables WHERE table_name = 'FL1003') LOOP
  EXECUTE IMMEDIATE 'TRUNCATE TABLE FL1003';
  EXECUTE IMMEDIATE 'ALTER TABLE FL1003 RENAME TO FL1002' ;
END LOOP;

FOR i IN (SELECT null FROM user_tables WHERE table_name = 'FL4003') LOOP
  EXECUTE IMMEDIATE 'TRUNCATE TABLE FL4003';
  EXECUTE IMMEDIATE 'ALTER TABLE FL4003 RENAME TO FL4002' ;
END LOOP;

EXECUTE IMMEDIATE 'TRUNCATE  TABLE FL3098 ';
EXECUTE IMMEDIATE 'TRUNCATE  TABLE FL2999 ';

END CTXISM_CTXCLO;

/
--------------------------------------------------------
--  DDL for Procedure CTXISM_CTXISMD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CTXISM_CTXISMD" IS

BEGIN

FOR i IN (SELECT null FROM user_tables WHERE table_name = 'FL1002') LOOP
  EXECUTE IMMEDIATE 'ALTER TABLE  FL1002  RENAME TO FL1003 ';
END LOOP;

FOR i IN (SELECT null FROM user_tables WHERE table_name = 'FL4002') LOOP
  EXECUTE IMMEDIATE 'ALTER TABLE   FL4002  RENAME TO  FL4003' ;
END LOOP;

EXECUTE IMMEDIATE ' TRUNCATE TABLE FL1000 ';
EXECUTE IMMEDIATE 'TRUNCATE  TABLE FL1019 ';
EXECUTE IMMEDIATE 'TRUNCATE  TABLE ME1030 ';
EXECUTE IMMEDIATE 'TRUNCATE  TABLE ME2910 ';

END CTXISM_CTXISMD;

/
--------------------------------------------------------
--  DDL for Procedure CTXISM_CTXISMF
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CTXISM_CTXISMF" AS
BEGIN
/*EXECUTE IMMEDIATE 'TRUNCATE TABLE FL4003';
EXECUTE IMMEDIATE 'ALTER TABLE FL4003 RENAME TO FL4002' ; */
 NULL;
END CTXISM_CTXISMF;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_FL1061_AAPUR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DELETE_FL1061_AAPUR" 
( AGCCLT IN CHAR
, NATCLT IN NUMBER
, ORDCLT IN NUMBER
, CLECLT IN NUMBER
, ENGCLT IN CHAR
) AS
BEGIN
delete from FL1061_AAPUR where CPTAGC61A=AGCCLT and CPTNAT61A=NATCLT and CPTORD61A=ORDCLT
            and CPTCLE61A=CLECLT and ENGOPE61A=ENGCLT;
standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_FL1062_AAPUR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DELETE_FL1062_AAPUR" 
( AGCCLT IN CHAR
, NATCLT IN NUMBER
, ORDCLT IN NUMBER
, CLECLT IN NUMBER
, ENGCLT IN CHAR
) AS
BEGIN
delete from FL1062_AAPUR where CPTAGC62A=AGCCLT and CPTNAT62A=NATCLT and CPTORD62A=ORDCLT
            and CPTCLE62A=CLECLT and ENGOPE62A=ENGCLT;
standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_FL1066_AAPUR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DELETE_FL1066_AAPUR" 
( AGCCLT IN CHAR
, NATCLT IN NUMBER
, ORDCLT IN NUMBER
, CLECLT IN NUMBER
, ENGCLT IN CHAR
, CODOPE IN CHAR
) AS
BEGIN
if CODOPE = 'T096' then
   delete from FL1066_AAPUR_96 where CPTAGC66A=AGCCLT and CPTNAT66A=NATCLT and CPTORD66A=ORDCLT
            and CPTCLE66A=CLECLT and ENGOPE66A=ENGCLT;
end if;
if CODOPE = 'T064' then
   delete from FL1066_AAPUR_64 where CPTAGC66A=AGCCLT and CPTNAT66A=NATCLT and CPTORD66A=ORDCLT
            and CPTCLE66A=CLECLT and ENGOPE66A=ENGCLT;
end if;

standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELFIC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DELFIC" AS
BEGIN

EXECUTE IMMEDIATE 'DELETE FROM FL1061 WHERE SU1061=1';
EXECUTE IMMEDIATE 'DELETE FROM FL1062 WHERE SU1062=1';
EXECUTE IMMEDIATE 'DELETE FROM FL1066 WHERE SU1066=1';
EXECUTE IMMEDIATE 'DELETE FROM FL1071 WHERE SU1071=1';
EXECUTE IMMEDIATE 'DELETE FROM FL1073 WHERE SU1073=1';
EXECUTE IMMEDIATE 'DELETE FROM FL1090 WHERE SU1090=1';
EXECUTE IMMEDIATE 'DELETE FROM FL1091 WHERE SU1091=1';
EXECUTE IMMEDIATE 'DELETE FROM FL3195 WHERE SU3195=1';

END;

/
--------------------------------------------------------
--  DDL for Procedure ECHU1061
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ECHU1061" AS

CURSOR CUR1061 IS SELECT * FROM FL1061 WHERE SU1061 = 0;
ligne1061 FL1061%ROWTYPE;
JCOMPTABLE date;

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR1061;
  FETCH CUR1061 INTO ligne1061;

  WHILE CUR1061%FOUND LOOP

    if ((ligne1061.ECHOPE61 < TO_DATE(JCOMPTABLE)) or ((ligne1061.ECHOPE61 <= TO_DATE(JCOMPTABLE)) and 
    (ligne1061.ENGOPE61 In ('661','661','663','664','641','642')))) then
      if ligne1061.ECHU61 != 0 then
        UPDATE FL1061 set ECHU61= 0 where AGCNUM61=ligne1061.AGCNUM61 and SERNUM61=ligne1061.SERNUM61 and 
        ORDNUM61=ligne1061.ORDNUM61;
      end if;
    else
      if ligne1061.ECHU61 != 1 then
        UPDATE FL1061 set ECHU61= 1 where AGCNUM61=ligne1061.AGCNUM61 and SERNUM61=ligne1061.SERNUM61 and 
        ORDNUM61=ligne1061.ORDNUM61;
      end if;
    end if;

    FETCH CUR1061 INTO ligne1061;
  END LOOP;
  CLOSE CUR1061;
  standard.commit;
END ECHU1061;

/
--------------------------------------------------------
--  DDL for Procedure ECHU1062
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ECHU1062" AS

CURSOR CUR1062 IS SELECT * FROM FL1062 WHERE SU1062 = 0;
ligne1062 FL1062%ROWTYPE;
JCOMPTABLE date;

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR1062;
  FETCH CUR1062 INTO ligne1062;

  WHILE CUR1062%FOUND LOOP

    if ((ligne1062.ECHOPE62 < TO_DATE(JCOMPTABLE)) or ((ligne1062.ECHOPE62 <= TO_DATE(JCOMPTABLE)) and 
    (ligne1062.ENGOPE62 In ('661','662','663','664','641','642')))) then
      if ligne1062.ECHU62 != 0 then
        UPDATE FL1062 set ECHU62= 0 where AGCNUM62=ligne1062.AGCNUM62 and SERNUM62=ligne1062.SERNUM62 and
        ORDNUM62=ligne1062.ORDNUM62;
      end if;
    else
      if ligne1062.ECHU62 != 1 then
        UPDATE FL1062 set ECHU62= 1 where AGCNUM62=ligne1062.AGCNUM62 and SERNUM62=ligne1062.SERNUM62 and
        ORDNUM62=ligne1062.ORDNUM62;
      end if;
    end if;

    FETCH CUR1062 INTO ligne1062;
  END LOOP;
  CLOSE CUR1062;
  standard.commit;
END ECHU1062;

/
--------------------------------------------------------
--  DDL for Procedure FORMATXXXX
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMATXXXX" AS

CURSOR CURXXXX  IS SELECT * FROM BALTAB;
ligneXXXX   BALTAB%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FLXXXX';
  OPEN CURXXXX ;
  FETCH CURXXXX INTO  ligneXXXX;
  WHILE CURXXXX %FOUND LOOP
    INSERT INTO LIGNE_FLXXXX (LIGNEXXXX) values
    (rpad(nvl(ligneXXXX.ANNEE,' '),2,' ') || rpad(nvl(ligneXXXX.MOIS,' '),2,' ') || rpad(nvl(ligneXXXX.TYPBAL,' '),
    1,' '));
    FETCH CURXXXX INTO ligneXXXX;
  END LOOP;
  CLOSE CURXXXX;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1000
--------------------------------------------------------
set define off;

create or replace PROCEDURE "FORMAT1000" AS
CURSOR CUR1000  IS SELECT * FROM FL1000;
ligne1000   FL1000%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1000';
  OPEN CUR1000 ;
  FETCH CUR1000 INTO  ligne1000;
  WHILE CUR1000 %FOUND LOOP
    if  ligne1000.CODOPE3002 = 'T010' or  ligne1000.CODOPE3002 = 'T011' or  ligne1000.CODOPE3002 = 'T092' or  ligne1000.CODOPE3002 = 'T009' or  ligne1000.CODOPE3002 = 'T013' then
       INSERT INTO LIGNE_FL1000 (LIGNE1000) values (ligne1000.SU3002 || ligne1000.CODAGC3002 || 
       TO_CHAR(ligne1000.DATOPE3002,'YYMMDD') || ligne1000.CODOPE3002 || 
       rpad(nvl(ligne1000.AGCNUM3002,' '),2,' ') || rpad(nvl(ligne1000.SERNUM3002,' '),1,' ') || 
       lpad(ligne1000.ORDNUM3002,7,0) || lpad(ligne1000.MNTOPE3002*1000,12,0) || 
       rpad(nvl(ligne1000.ENGOPE3002,' '),3,' ') || rpad(nvl(ligne1000.AGXOPE3002,' '),2,' ') ||
	   (CASE  WHEN (ligne1000.NAXOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAXOPE3002,2,0) END) || 
     (CASE  WHEN (ligne1000.ORXOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORXOPE3002,5,0) END) || 
     (CASE  WHEN (ligne1000.KLXOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLXOPE3002) END) || 
     (CASE  WHEN (ligne1000.CODMRC3002 is null) THEN  '     ' ELSE lpad(ligne1000.CODMRC3002,5,0) END) || 
     rpad(nvl(ligne1000.TRMOPE3002,' '),2,' ') || rpad(nvl(ligne1000.USROPE3002,' '),5,' ') || 
     rpad(nvl(ligne1000.AGYOPE3002,' '),2,' ') ||
	   (CASE  WHEN (ligne1000.NAYOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAYOPE3002,2,0) END) || 
     (CASE  WHEN (ligne1000.ORYOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORYOPE3002,5,0) END) || 
     (CASE  WHEN (ligne1000.KLYOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLYOPE3002) END) || 
     rpad(nvl(ligne1000.MEGOPE3002,' '),2,' ') || 
     (CASE  WHEN (ligne1000.PTTOPE3002 is null) THEN  '    ' ELSE lpad(ligne1000.PTTOPE3002,4,0) END) || 
     rpad(nvl(ligne1000.BAQOPE3002,' '),6,' ') || 
     (CASE  WHEN (ligne1000.FRAOPE3002 is null) THEN  '      ' ELSE lpad(ligne1000.FRAOPE3002*1000,6,0) END) || 
     (CASE  WHEN (ligne1000.COMOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.COMOPE3002*1000,9,0) END) ||
     (CASE  WHEN (ligne1000.TPSOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.TPSOPE3002*1000,9,0) END) || 
     rpad(nvl(ligne1000.DSCOPE3002,' '),30,' ') || 
     (CASE  WHEN (ligne1000.ECHOPE3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.ECHOPE3002,'YYMMDD') END) || 
     (CASE  WHEN (ligne1000.PPLINT3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.PPLINT3002) END) || 
     (CASE  WHEN (ligne1000.ACCEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.ACCEFF3002) END) || 
     (CASE  WHEN (ligne1000.CREEFF3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.CREEFF3002,'YYMMDD') END) || 
     '     ' || ' ' || 
     (CASE  WHEN (ligne1000.DATVAL3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.DATVAL3002,'YYMMDD') END) || 
     ' ' || (CASE  WHEN (ligne1000.AVIOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.AVIOPE3002) END) || 
     (CASE  WHEN (ligne1000.RESEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.RESEFF3002) END) || 
     (CASE  WHEN (ligne1000.CATOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.CATOPE3002) END) || 
     (CASE  WHEN (ligne1000.NATOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NATOPE3002,2,0) END) || 
     (CASE  WHEN (ligne1000.TYPOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.TYPOPE3002) END) || 
     ' ' || rpad(nvl(ligne1000.REFOPE3002,' '),10,' ') || 
     (CASE  WHEN (ligne1000.BLKOPE3002 is null) THEN  '            ' ELSE lpad(ligne1000.BLKOPE3002*1000,12,0) END) || 
     rpad(nvl(ligne1000.VRSOPE20,' '),20,' ') || rpad(nvl(ligne1000.BNFOPE17,' '),17,' ') || 
     rpad(nvl(ligne1000.CODAVO3002,' '),3,' '));
    end if;
    if  ligne1000.CODOPE3002 = 'T096' or  ligne1000.CODOPE3002 = 'T064' then
       INSERT INTO LIGNE_FL1000 (LIGNE1000) values (ligne1000.SU3002 || 
       ligne1000.CODAGC3002 || TO_CHAR(ligne1000.DATOPE3002,'YYMMDD') || ligne1000.CODOPE3002 || 
       rpad(nvl(ligne1000.AGCNUM3002,' '),2,' ') || rpad(nvl(ligne1000.SERNUM3002,' '),1,' ') || 
       lpad(ligne1000.ORDNUM3002,7,0) || lpad(ligne1000.MNTOPE3002*1000,12,0) || 
       rpad(nvl(ligne1000.ENGOPE3002,' '),3,' ') || rpad(nvl(ligne1000.AGXOPE3002,' '),2,' ') || 
       (CASE  WHEN (ligne1000.NAXOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAXOPE3002,2,0) END) || 
       (CASE  WHEN (ligne1000.ORXOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORXOPE3002,5,0) END) || 
       (CASE  WHEN (ligne1000.KLXOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLXOPE3002) END) || 
       (CASE  WHEN (ligne1000.CODMRC3002 is null) THEN  '     ' ELSE lpad(ligne1000.CODMRC3002,5,0) END) || 
       rpad(nvl(ligne1000.TRMOPE3002,' '),2,' ') || rpad(nvl(ligne1000.USROPE3002,' '),5,' ') || 
       rpad(nvl(ligne1000.AGYOPE3002,' '),2,' ') || 
       (CASE  WHEN (ligne1000.NAYOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAYOPE3002,2,0) END) || 
       (CASE  WHEN (ligne1000.ORYOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORYOPE3002,5,0) END) || 
       (CASE  WHEN (ligne1000.KLYOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLYOPE3002) END) || 
       rpad(nvl(ligne1000.MEGOPE3002,' '),2,' ') || 
       (CASE  WHEN (ligne1000.PTTOPE3002 is null) THEN  '    ' ELSE lpad(ligne1000.PTTOPE3002,4,0) END) || 
       rpad(nvl(ligne1000.BAQOPE3002,' '),6,' ') || 
       (CASE  WHEN (ligne1000.FRAOPE3002 is null) THEN  '      ' ELSE lpad(ligne1000.FRAOPE3002*1000,6,0) END) || 
       (CASE  WHEN (ligne1000.COMOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.COMOPE3002*1000,9,0) END) || 
       (CASE  WHEN (ligne1000.TPSOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.TPSOPE3002*1000,9,0) END) || 
       rpad(nvl(ligne1000.DSCOPE3002,' '),30,' ') || 
       (CASE  WHEN (ligne1000.ECHOPE3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.ECHOPE3002,'YYMMDD') END) || 
       (CASE  WHEN (ligne1000.PPLINT3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.PPLINT3002) END) || 
       (CASE  WHEN (ligne1000.ACCEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.ACCEFF3002) END) || 
       (CASE  WHEN (ligne1000.CREEFF3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.CREEFF3002,'YYMMDD') END) || 
       '     ' || ' ' || 
       (CASE  WHEN (ligne1000.DATVAL3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.DATVAL3002,'YYMMDD') END) || 
       ' ' || (CASE  WHEN (ligne1000.AVIOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.AVIOPE3002) END) || 
       (CASE  WHEN (ligne1000.RESEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.RESEFF3002) END) || 
       (CASE  WHEN (ligne1000.CATOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.CATOPE3002) END) || 
       (CASE  WHEN (ligne1000.NATOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NATOPE3002,2,0) END) || 
       (CASE  WHEN (ligne1000.TYPOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.TYPOPE3002) END) || 
       ' ' || rpad(nvl(ligne1000.REFOPE3002,' '),10,' ') || 
       (CASE  WHEN (ligne1000.BLKOPE3002 is null) THEN  '            ' ELSE lpad(ligne1000.BLKOPE3002*1000,12,0) END) || 
       rpad(nvl(ligne1000.VRSOPE18,' '),18,' ') || rpad(nvl(ligne1000.ECHU3002,' '),1,' ') || 
       rpad(nvl(ligne1000.PFCAGC3002,' '),1,' ') || rpad(nvl(ligne1000.BNFOPE17,' '),17,' ') || 
       rpad(nvl(ligne1000.CODAVO3002,' '),3,' '));
    end if;
    if  ligne1000.CODOPE3002 = 'T035' or  ligne1000.CODOPE3002 = 'T036' or  ligne1000.CODOPE3002 = 'T037' or  ligne1000.CODOPE3002 = 'T038' or  ligne1000.CODOPE3002 = 'T039' or  ligne1000.CODOPE3002 = 'T040' then
       INSERT INTO LIGNE_FL1000 (LIGNE1000) values (ligne1000.SU3002 || 
       ligne1000.CODAGC3002 || TO_CHAR(ligne1000.DATOPE3002,'YYMMDD') || ligne1000.CODOPE3002 || 
       rpad(nvl(ligne1000.AGCNUM3002,' '),2,' ') || rpad(nvl(ligne1000.SERNUM3002,' '),1,' ') || 
       lpad(ligne1000.ORDNUM3002,7,0) || lpad(ligne1000.MNTOPE3002*1000,12,0) || 
       rpad(nvl(ligne1000.ENGOPE3002,' '),3,' ') || 
       rpad(nvl(ligne1000.AGXOPE3002,' '),2,' ') || 
       (CASE  WHEN (ligne1000.NAXOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAXOPE3002,2,0) END) || 
       (CASE  WHEN (ligne1000.ORXOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORXOPE3002,5,0) END) || 
       (CASE  WHEN (ligne1000.KLXOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLXOPE3002) END)|| 
       (CASE  WHEN (ligne1000.CODMRC3002 is null) THEN  '     ' ELSE lpad(ligne1000.CODMRC3002,5,0) END) || 
       rpad(nvl(ligne1000.TRMOPE3002,' '),2,' ') || rpad(nvl(ligne1000.USROPE3002,' '),5,' ') || 
       rpad(nvl(ligne1000.AGYOPE3002,' '),2,' ') || 
       (CASE  WHEN (ligne1000.NAYOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAYOPE3002,2,0) END) || 
       (CASE  WHEN (ligne1000.ORYOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORYOPE3002,5,0) END) || 
       (CASE  WHEN (ligne1000.KLYOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLYOPE3002) END) || 
       rpad(nvl(ligne1000.MEGOPE3002,' '),2,' ') || 
       (CASE  WHEN (ligne1000.PTTOPE3002 is null) THEN  '    ' ELSE lpad(ligne1000.PTTOPE3002,4,0) END) || 
       rpad(nvl(ligne1000.BAQOPE3002,' '),6,' ') || 
       (CASE  WHEN (ligne1000.FRAOPE3002 is null) THEN  '      ' ELSE lpad(ligne1000.FRAOPE3002*1000,6,0) END) || 
       (CASE  WHEN (ligne1000.COMOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.COMOPE3002*1000,9,0) END) || 
       (CASE  WHEN (ligne1000.TPSOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.TPSOPE3002*1000,9,0) END) || 
       rpad(nvl(ligne1000.DSCOPE3002,' '),30,' ') || 
       (CASE  WHEN (ligne1000.ECHOPE3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.ECHOPE3002,'YYMMDD') END) || 
       (CASE  WHEN (ligne1000.PPLINT3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.PPLINT3002) END) || 
       (CASE  WHEN (ligne1000.ACCEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.ACCEFF3002) END) || 
       (CASE  WHEN (ligne1000.CREEFF3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.CREEFF3002,'YYMMDD') END) || 
       '     ' || ' ' || 
       (CASE  WHEN (ligne1000.DATVAL3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.DATVAL3002,'YYMMDD') END) || 
       ' ' || (CASE  WHEN (ligne1000.AVIOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.AVIOPE3002) END) || 
       (CASE  WHEN (ligne1000.RESEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.RESEFF3002) END) || 
       (CASE  WHEN (ligne1000.CATOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.CATOPE3002) END) || 
       (CASE  WHEN (ligne1000.NATOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NATOPE3002,2,0) END) || 
       (CASE  WHEN (ligne1000.TYPOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.TYPOPE3002) END) || 
       ' ' || rpad(nvl(ligne1000.REFOPE3002,' '),10,' ') || 
       (CASE  WHEN (ligne1000.BLKOPE3002 is null) THEN  '            ' ELSE lpad(ligne1000.BLKOPE3002*1000,12,0) END) || 
       rpad(nvl(ligne1000.VRSOPE20,' '),20,' ') || rpad(nvl(ligne1000.BNFOPE15,' '),15,' ') || 
       rpad(nvl(ligne1000.AGZREC3002,' '),2,' ') || rpad(nvl(ligne1000.CODAVO3002,' '),3,' '));
    end if;
    if  ligne1000.CODOPE3002 = 'T031' then
       INSERT INTO LIGNE_FL1000 (LIGNE1000) values (ligne1000.SU3002 || 
       ligne1000.CODAGC3002 || TO_CHAR(ligne1000.DATOPE3002,'YYMMDD') || ligne1000.CODOPE3002 || 
       rpad(nvl(ligne1000.AGCNUM3002,' '),2,' ') || rpad(nvl(ligne1000.SERNUM3002,' '),1,' ') || 
       lpad(ligne1000.ORDNUM3002,7,0) || lpad(ligne1000.MNTOPE3002*1000,12,0) || 
       rpad(nvl(ligne1000.ENGOPE3002,' '),3,' ') || 
       rpad(nvl(ligne1000.AGXOPE3002,' '),2,' ') || 
       (CASE  WHEN (ligne1000.NAXOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAXOPE3002,2,0) END) || 
       (CASE  WHEN (ligne1000.ORXOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORXOPE3002,5,0) END) || 
       (CASE  WHEN (ligne1000.KLXOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLXOPE3002) END) || 
       (CASE  WHEN (ligne1000.CODMRC3002 is null) THEN  '     ' ELSE lpad(ligne1000.CODMRC3002,5,0) END) || 
       rpad(nvl(ligne1000.TRMOPE3002,' '),2,' ') || rpad(nvl(ligne1000.USROPE3002,' '),5,' ') || 
       rpad(nvl(ligne1000.AGYOPE3002,' '),2,' ') || 
       (CASE  WHEN (ligne1000.NAYOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAYOPE3002,2,0) END) || 
       (CASE  WHEN (ligne1000.ORYOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORYOPE3002,5,0) END) || 
       (CASE  WHEN (ligne1000.KLYOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLYOPE3002) END) || 
       rpad(nvl(ligne1000.MEGOPE3002,' '),2,' ') || 
       (CASE  WHEN (ligne1000.PTTOPE3002 is null) THEN  '    ' ELSE lpad(ligne1000.PTTOPE3002,4,0) END) || 
       rpad(nvl(ligne1000.BAQOPE3002,' '),6,' ') || 
       (CASE  WHEN (ligne1000.FRAOPE3002 is null) THEN  '      ' ELSE lpad(ligne1000.FRAOPE3002*1000,6,0) END) || 
       (CASE  WHEN (ligne1000.COMOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.COMOPE3002*1000,9,0) END) || 
       (CASE  WHEN (ligne1000.TPSOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.TPSOPE3002*1000,9,0) END) || 
       rpad(nvl(ligne1000.DSCOPE3002,' '),30,' ') || 
       (CASE  WHEN (ligne1000.ECHOPE3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.ECHOPE3002,'YYMMDD') END) || 
       (CASE  WHEN (ligne1000.PPLINT3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.PPLINT3002) END) || 
       (CASE  WHEN (ligne1000.ACCEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.ACCEFF3002) END) || 
       (CASE  WHEN (ligne1000.CREEFF3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.CREEFF3002,'YYMMDD') END) 
       || '     ' || ' ' || 
       (CASE  WHEN (ligne1000.DATVAL3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.DATVAL3002,'YYMMDD') END) || 
       ' ' || (CASE  WHEN (ligne1000.AVIOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.AVIOPE3002) END) || 
       (CASE  WHEN (ligne1000.RESEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.RESEFF3002) END) || 
       (CASE  WHEN (ligne1000.CATOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.CATOPE3002) END) || 
       (CASE  WHEN (ligne1000.NATOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NATOPE3002,2,0) END) || 
       (CASE  WHEN (ligne1000.TYPOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.TYPOPE3002) END) || 
       ' ' || rpad(nvl(ligne1000.REFOPE3002,' '),10,' ') || 
       (CASE  WHEN (ligne1000.INTPRE3002 is null) THEN  '         ' ELSE lpad(ligne1000.INTPRE3002*1000,9,0) END) || 
       (CASE  WHEN (ligne1000.INTCOU3002 is null) THEN  '         ' ELSE lpad(ligne1000.INTCOU3002*1000,9,0) END) || 
       (CASE  WHEN (ligne1000.MNTCHG3002 is null) THEN  '         ' ELSE lpad(ligne1000.MNTCHG3002*1000,9,0) END) || 
       rpad(nvl(ligne1000.CODAVO3002,' '),3,' ') || 
       (CASE  WHEN (ligne1000.MNTIMP3002 is null) THEN  '            ' ELSE lpad(ligne1000.MNTIMP3002*1000,12,0) END) || 
       '          ');
    end if;
    if  ligne1000.CODOPE3002 = 'T042' then
       INSERT INTO LIGNE_FL1000 (LIGNE1000) values (ligne1000.SU3002 || ligne1000.CODAGC3002 || TO_CHAR(ligne1000.DATOPE3002,'YYMMDD') || ligne1000.CODOPE3002 || rpad(nvl(ligne1000.AGCNUM3002,' '),2,' ') || rpad(nvl(ligne1000.SERNUM3002,' '),1,' ') || lpad(ligne1000.ORDNUM3002,7,0) || lpad(ligne1000.MNTOPE3002*1000,12,0) || rpad(nvl(ligne1000.ENGOPE3002,' '),3,' ') || rpad(nvl(ligne1000.AGXOPE3002,' '),2,' ') || (CASE  WHEN (ligne1000.NAXOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAXOPE3002,2,0) END) || (CASE  WHEN (ligne1000.ORXOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORXOPE3002,5,0) END) || (CASE  WHEN (ligne1000.KLXOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLXOPE3002) END) || (CASE  WHEN (ligne1000.CODMRC3002 is null) THEN  '     ' ELSE lpad(ligne1000.CODMRC3002,5,0) END) || rpad(nvl(ligne1000.TRMOPE3002,' '),2,' ') || rpad(nvl(ligne1000.USROPE3002,' '),5,' ') || rpad(nvl(ligne1000.AGYOPE3002,' '),2,' ') || (CASE  WHEN (ligne1000.NAYOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAYOPE3002,2,0) END) || (CASE  WHEN (ligne1000.ORYOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORYOPE3002,5,0) END) || (CASE  WHEN (ligne1000.KLYOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLYOPE3002) END) || rpad(nvl(ligne1000.MEGOPE3002,' '),2,' ') || (CASE  WHEN (ligne1000.PTTOPE3002 is null) THEN  '    ' ELSE lpad(ligne1000.PTTOPE3002,4,0) END) || rpad(nvl(ligne1000.BAQOPE3002,' '),6,' ') || (CASE  WHEN (ligne1000.FRAOPE3002 is null) THEN  '      ' ELSE lpad(ligne1000.FRAOPE3002*1000,6,0) END) ||
	   (CASE  WHEN (ligne1000.COMOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.COMOPE3002*1000,9,0) END) || (CASE  WHEN (ligne1000.TPSOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.TPSOPE3002*1000,9,0) END) || rpad(nvl(ligne1000.DSCOPE3002,' '),30,' ') || (CASE  WHEN (ligne1000.ECHOPE3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.ECHOPE3002,'YYMMDD') END) || (CASE  WHEN (ligne1000.PPLINT3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.PPLINT3002) END) || (CASE  WHEN (ligne1000.ACCEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.ACCEFF3002) END) || (CASE  WHEN (ligne1000.CREEFF3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.CREEFF3002,'YYMMDD') END) || '     ' || ' ' ||
	   (CASE  WHEN (ligne1000.DATVAL3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.DATVAL3002,'YYMMDD') END) || ' ' || (CASE  WHEN (ligne1000.AVIOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.AVIOPE3002) END) || (CASE  WHEN (ligne1000.RESEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.RESEFF3002) END) || (CASE  WHEN (ligne1000.CATOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.CATOPE3002) END) || (CASE  WHEN (ligne1000.NATOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NATOPE3002,2,0) END) || (CASE  WHEN (ligne1000.TYPOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.TYPOPE3002) END) || ' ' || rpad(nvl(ligne1000.REFOPE3002,' '),10,' ') || (CASE  WHEN (ligne1000.INTPRE3002 is null) THEN  '         ' ELSE lpad(ligne1000.INTPRE3002*1000,9,0) END) || (CASE  WHEN (ligne1000.INTCOU3002 is null) THEN  '         ' ELSE lpad(ligne1000.INTCOU3002*1000,9,0) END) || (CASE  WHEN (ligne1000.MNTCHG3002 is null) THEN  '         ' ELSE lpad(ligne1000.MNTCHG3002*1000,9,0) END) || rpad(nvl(ligne1000.CODAVO3002,' '),3,' ') || rpad(nvl(ligne1000.ECHU3002,' '),1,' ') || rpad(nvl(ligne1000.PFCAGC3002,' '),1,' ') || '                    ');
    end if;
    if  ligne1000.CODOPE3002 = 'T021' then
       INSERT INTO LIGNE_FL1000 (LIGNE1000) values (ligne1000.SU3002 || ligne1000.CODAGC3002 || TO_CHAR(ligne1000.DATOPE3002,'YYMMDD') || ligne1000.CODOPE3002 || rpad(nvl(ligne1000.AGCNUM3002,' '),2,' ') || rpad(nvl(ligne1000.SERNUM3002,' '),1,' ') || lpad(ligne1000.ORDNUM3002,7,0) || lpad(ligne1000.MNTOPE3002*1000,12,0) || rpad(nvl(ligne1000.ENGOPE3002,' '),3,' ') || rpad(nvl(ligne1000.AGXOPE3002,' '),2,' ') || (CASE  WHEN (ligne1000.NAXOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAXOPE3002,2,0) END) || (CASE  WHEN (ligne1000.ORXOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORXOPE3002,5,0) END) || (CASE  WHEN (ligne1000.KLXOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLXOPE3002) END) || (CASE  WHEN (ligne1000.CODMRC3002 is null) THEN  '     ' ELSE lpad(ligne1000.CODMRC3002,5,0) END) || rpad(nvl(ligne1000.TRMOPE3002,' '),2,' ') || rpad(nvl(ligne1000.USROPE3002,' '),5,' ') || rpad(nvl(ligne1000.AGYOPE3002,' '),2,' ') || (CASE  WHEN (ligne1000.NAYOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAYOPE3002,2,0) END) || (CASE  WHEN (ligne1000.ORYOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORYOPE3002,5,0) END) || (CASE  WHEN (ligne1000.KLYOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLYOPE3002) END) || rpad(nvl(ligne1000.MEGOPE3002,' '),2,' ') || (CASE  WHEN (ligne1000.PTTOPE3002 is null) THEN  '    ' ELSE lpad(ligne1000.PTTOPE3002,4,0) END) || rpad(nvl(ligne1000.BAQOPE3002,' '),6,' ') || (CASE  WHEN (ligne1000.FRAOPE3002 is null) THEN  '      ' ELSE lpad(ligne1000.FRAOPE3002*1000,6,0) END) || (CASE  WHEN (ligne1000.COMOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.COMOPE3002*1000,9,0) END) || (CASE  WHEN (ligne1000.TPSOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.TPSOPE3002*1000,9,0) END) || rpad(nvl(ligne1000.DSCOPE3002,' '),30,' ') || (CASE  WHEN (ligne1000.ECHOPE3002 is null) THEN  '      '
	   ELSE TO_CHAR(ligne1000.ECHOPE3002,'YYMMDD') END) || (CASE  WHEN (ligne1000.PPLINT3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.PPLINT3002) END) || (CASE  WHEN (ligne1000.ACCEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.ACCEFF3002) END) || (CASE  WHEN (ligne1000.CREEFF3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.CREEFF3002,'YYMMDD') END) || '     ' || ' ' ||
	   (CASE  WHEN (ligne1000.DATVAL3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.DATVAL3002,'YYMMDD') END) || ' ' || (CASE  WHEN (ligne1000.AVIOPE3002 is null)
	   THEN  ' ' ELSE TO_CHAR(ligne1000.AVIOPE3002) END) || (CASE  WHEN (ligne1000.RESEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.RESEFF3002) END) || (CASE  WHEN (ligne1000.CATOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.CATOPE3002) END) || (CASE  WHEN (ligne1000.NATOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NATOPE3002,2,0) END) || (CASE  WHEN (ligne1000.TYPOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.TYPOPE3002) END) || ' ' || rpad(nvl(ligne1000.REFOPE3002,' '),10,' ') || (CASE  WHEN (ligne1000.INTPRE3002 is null) THEN  '         ' ELSE lpad(ligne1000.INTPRE3002*1000,9,0) END) || (CASE  WHEN (ligne1000.INTCOU3002 is null) THEN  '         ' ELSE lpad(ligne1000.INTCOU3002*1000,9,0) END) || (CASE  WHEN (ligne1000.MNTCHG3002 is null) THEN  '         ' ELSE lpad(ligne1000.MNTCHG3002*1000,9,0) END) || rpad(nvl(ligne1000.CODAVO3002,' '),3,' ') || '                      ');
    end if;
    if  ligne1000.CODOPE3002 = 'T059' or  ligne1000.CODOPE3002 = 'T060' or  ligne1000.CODOPE3002 = 'T061' or  ligne1000.CODOPE3002 = 'T062' or  ligne1000.CODOPE3002 = 'T063' then
       INSERT INTO LIGNE_FL1000 (LIGNE1000) values (ligne1000.SU3002 || ligne1000.CODAGC3002 || 
       TO_CHAR(ligne1000.DATOPE3002,'YYMMDD') || ligne1000.CODOPE3002 || 
       rpad(nvl(ligne1000.AGCNUM3002,' '),2,' ') || rpad(nvl(ligne1000.SERNUM3002,' '),1,' ') || 
       lpad(ligne1000.ORDNUM3002,7,0) || lpad(ligne1000.MNTOPE3002*1000,12,0) || 
       rpad(nvl(ligne1000.ENGOPE3002,' '),3,' ') || rpad(nvl(ligne1000.AGXOPE3002,' '),2,' ') ||
	   (CASE  WHEN (ligne1000.NAXOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAXOPE3002,2,0) END) || 
     (CASE  WHEN (ligne1000.ORXOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORXOPE3002,5,0) END) || 
     (CASE  WHEN (ligne1000.KLXOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLXOPE3002) END) || 
     (CASE  WHEN (ligne1000.CODMRC3002 is null) THEN  '     ' ELSE lpad(ligne1000.CODMRC3002,5,0) END) || 
     rpad(nvl(ligne1000.TRMOPE3002,' '),2,' ') || rpad(nvl(ligne1000.USROPE3002,' '),5,' ') || 
     rpad(nvl(ligne1000.AGYOPE3002,' '),2,' ') ||
	   (CASE  WHEN (ligne1000.NAYOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NAYOPE3002,2,0) END) || 
     (CASE  WHEN (ligne1000.ORYOPE3002 is null) THEN  '     ' ELSE lpad(ligne1000.ORYOPE3002,5,0) END) || 
     (CASE  WHEN (ligne1000.KLYOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.KLYOPE3002) END) || 
     rpad(nvl(ligne1000.MEGOPE3002,' '),2,' ') || 
     (CASE  WHEN (ligne1000.PTTOPE3002 is null) THEN  '    ' ELSE lpad(ligne1000.PTTOPE3002,4,0) END) || 
     rpad(nvl(ligne1000.BAQOPE3002,' '),6,' ') || 
     (CASE  WHEN (ligne1000.FRAOPE3002 is null) THEN  '      ' ELSE lpad(ligne1000.FRAOPE3002*1000,6,0) END) || 
     (CASE  WHEN (ligne1000.COMOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.COMOPE3002*1000,9,0) END) ||
     (CASE  WHEN (ligne1000.TPSOPE3002 is null) THEN  '         ' ELSE lpad(ligne1000.TPSOPE3002*1000,9,0) END) || 
     rpad(nvl(ligne1000.DSCOPE3002,' '),30,' ') || 
     (CASE  WHEN (ligne1000.ECHOPE3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.ECHOPE3002,'YYMMDD') END) || 
     (CASE  WHEN (ligne1000.PPLINT3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.PPLINT3002) END) || 
     (CASE  WHEN (ligne1000.ACCEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.ACCEFF3002) END) || 
     (CASE  WHEN (ligne1000.CREEFF3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.CREEFF3002,'YYMMDD') END) || 
     '     ' || ' ' || 
     (CASE  WHEN (ligne1000.DATVAL3002 is null) THEN  '      ' ELSE TO_CHAR(ligne1000.DATVAL3002,'YYMMDD') END) || 
     ' ' || (CASE  WHEN (ligne1000.AVIOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.AVIOPE3002) END) || 
     (CASE  WHEN (ligne1000.RESEFF3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.RESEFF3002) END) || 
     (CASE  WHEN (ligne1000.CATOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.CATOPE3002) END) || 
     (CASE  WHEN (ligne1000.NATOPE3002 is null) THEN  '  ' ELSE lpad(ligne1000.NATOPE3002,2,0) END) || 
     (CASE  WHEN (ligne1000.TYPOPE3002 is null) THEN  ' ' ELSE TO_CHAR(ligne1000.TYPOPE3002) END) || 
     ' ' || rpad(nvl(ligne1000.REFOPE3002,' '),10,' ') || 
     (CASE  WHEN (ligne1000.BLKOPE3002 is null) THEN  '            ' ELSE lpad(ligne1000.BLKOPE3002*1000,12,0) END) || 
     rpad(nvl(ligne1000.VRSOPE18,' '),18,' ') ||
     rpad(nvl(ligne1000.ECHU3002,' '),1,' ') || 
     rpad(nvl(ligne1000.PFCAGC3002,' '),1,' ') || 
     rpad(nvl(ligne1000.BNFOPE15,' '),15,' ') || 
     rpad(nvl(ligne1000.AGZREC3002,' '),2,' ') || 
     rpad(nvl(ligne1000.CODAVO3002,' '),3,' '));
    end if;

    FETCH CUR1000 INTO ligne1000;
  END LOOP;
  CLOSE CUR1000;
  standard.commit;
END;
/
--------------------------------------------------------
--  DDL for Procedure FORMAT1002
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1002" AS

CURSOR CUR1002  IS SELECT * FROM LIGNE_FL1002;
ligne1002txt   LIGNE_FL1002%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE FL1002';
  OPEN CUR1002 ;
  FETCH CUR1002 INTO  ligne1002txt;
  WHILE CUR1002 %FOUND LOOP
    INSERT INTO FL1002
    (SU1003,AGCMEG03,CODAGC03,DATOPE03,CODOPE03,AGCNUM03,SERNUM03,ORDNUM03,ENGOPE03,MNTOPE03,
     AG1OPE03,NA1OPE03,OR1OPE03,KL1OPE03,INSMEG03,MEGMEG03,PTTOPE03,BAQOPE03,AGYOPE03,INFMEG03,
     DATMEG03,DSCOPE03,ECHOPE03,ACCEFF03,CREEFF03,TYPESC03,LIBOPE03,USROPE03,TRMOPE03,TIMOPE03,
     DATVAL03,AGCREF03,SERREF03,ORDREF03,NUMBRD03,NOMCPT03,PTTCPT03,CODESC03,CHAINE03,NBREFF03,
     TAUTVA03,FILLER03)
    values ((CASE  WHEN (substr(ligne1002txt.LIGNE1002,1,1)=' ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,1,1) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,2,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,2,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,4,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,4,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,6,6)='      ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,10,2) ||
            '/' || substr(ligne1002txt.LIGNE1002,8,2) || '/' || substr(ligne1002txt.LIGNE1002,6,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,12,4)='    ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,12,4) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,16,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,16,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,18,1)=' ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,18,1) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,19,7)='       ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,19,7) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,26,3)='   ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,26,3) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,29,12)='            ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,29,12)/1000 END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,41,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,41,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,43,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,43,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,45,5)='     ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,45,5) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,50,1)=' ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,50,1) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,51,3)='   ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,51,3) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,54,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,54,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,56,4)='    ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,56,4) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,60,6)='      ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,60,6) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,66,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,66,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,68,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,68,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,70,6)='      ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,74,2) || '/' ||
            substr(ligne1002txt.LIGNE1002,72,2) || '/' || substr(ligne1002txt.LIGNE1002,70,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,76,30)='                              ') THEN  null ELSE 
            substr(ligne1002txt.LIGNE1002,76,30) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,106,6)='      ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,110,2) || '/' || 
            substr(ligne1002txt.LIGNE1002,108,2) || '/' || substr(ligne1002txt.LIGNE1002,106,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,112,1)=' ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,112,1) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,113,6)='      ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,117,2) 
            || '/' || substr(ligne1002txt.LIGNE1002,115,2) || '/' || substr(ligne1002txt.LIGNE1002,113,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,119,1)=' ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,119,1) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,120,20)='                    ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,120,20) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,140,5)='     ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,140,5) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,145,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,145,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,147,5)='     ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,147,5) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,152,6)='      ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,156,2) || '/' || 
            substr(ligne1002txt.LIGNE1002,154,2) || '/' || substr(ligne1002txt.LIGNE1002,152,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,158,2)='  ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,158,2) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,160,1)=' ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,160,1) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,161,7)='       ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,161,7) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,168,7)='       ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,168,7) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,175,30)='                              ') THEN  null ELSE 
            substr(ligne1002txt.LIGNE1002,175,30) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,205,4)='    ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,205,4) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,209,1)=' ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,209,1) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,210,1)=' ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,210,1) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,211,4)='    ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,211,4) END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,215,6)='      ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,215,6)/1000 END),
            (CASE  WHEN (substr(ligne1002txt.LIGNE1002,221,10)='          ') THEN  null ELSE substr(ligne1002txt.LIGNE1002,221,10) END));
    FETCH CUR1002 INTO ligne1002txt;
  END LOOP;
  CLOSE CUR1002;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1003
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1003" AS

CURSOR CUR1003  IS SELECT * FROM FL1003;
ligne1003   FL1003%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1003';
  OPEN CUR1003 ;
  FETCH CUR1003 INTO  ligne1003;
  WHILE CUR1003 %FOUND LOOP
    INSERT INTO LIGNE_FL1003 (LIGNE1003) values (ligne1003.SU1003 ||
rpad(nvl(ligne1003.AGCMEG03,' '),2,' ') ||
rpad(nvl(ligne1003.CODAGC03,' '),2,' ') ||
(CASE  WHEN (ligne1003.DATOPE03 is null) THEN  '      ' ELSE TO_CHAR(ligne1003.DATOPE03,'YYMMDD') END) ||
rpad(nvl(ligne1003.CODOPE03,' '),4,' ') ||
rpad(nvl(ligne1003.AGCNUM03,' '),2,' ') ||
rpad(nvl(ligne1003.SERNUM03,' '),1,' ') ||
(CASE  WHEN (ligne1003.ORDNUM03 is null) THEN  '       ' ELSE lpad(ligne1003.ORDNUM03,7,0) END) ||
rpad(nvl(ligne1003.ENGOPE03,' '),3,' ') ||
(CASE  WHEN (ligne1003.MNTOPE03 is null) THEN  '            ' ELSE lpad(ligne1003.MNTOPE03*1000,12,0) END) ||
rpad(nvl(ligne1003.AG1OPE03,' '),2,' ') ||
(CASE  WHEN (ligne1003.NA1OPE03 is null) THEN  '  ' ELSE lpad(ligne1003.NA1OPE03,2,0) END) ||
(CASE  WHEN (ligne1003.OR1OPE03 is null) THEN  '     ' ELSE lpad(ligne1003.OR1OPE03,5,0) END) ||
(CASE  WHEN (ligne1003.KL1OPE03 is null) THEN  ' ' ELSE TO_CHAR(ligne1003.KL1OPE03) END) ||
rpad(nvl(ligne1003.INSMEG03,' '),3,' ') ||
rpad(nvl(ligne1003.MEGMEG03,' '),2,' ') ||
(CASE  WHEN (ligne1003.PTTOPE03 is null) THEN  '    ' ELSE lpad(ligne1003.PTTOPE03,4,0) END) ||
rpad(nvl(ligne1003.BAQOPE03,' '),6,' ') ||
rpad(nvl(ligne1003.AGYOPE03,' '),2,' ') ||
(CASE  WHEN (ligne1003.INFMEG03 is null) THEN  '  ' ELSE lpad(ligne1003.INFMEG03,2,0) END) ||
(CASE  WHEN (ligne1003.DATMEG03 is null) THEN  '      ' ELSE TO_CHAR(ligne1003.DATMEG03,'YYMMDD') END) ||
rpad(nvl(ligne1003.DSCOPE03,' '),30,' ') ||
(CASE  WHEN (ligne1003.ECHOPE03 is null) THEN  '      ' ELSE TO_CHAR(ligne1003.ECHOPE03,'YYMMDD') END) ||
(CASE  WHEN (ligne1003.ACCEFF03 is null) THEN  ' ' ELSE TO_CHAR(ligne1003.ACCEFF03) END) ||
(CASE  WHEN (ligne1003.CREEFF03 is null) THEN  '      ' ELSE TO_CHAR(ligne1003.CREEFF03,'YYMMDD') END) ||
(CASE  WHEN (ligne1003.TYPESC03 is null) THEN  ' ' ELSE TO_CHAR(ligne1003.TYPESC03) END) ||
rpad(nvl(ligne1003.LIBOPE03,' '),20,' ') ||
rpad(nvl(ligne1003.USROPE03,' '),5,' ') ||
(CASE  WHEN (ligne1003.TRMOPE03 is null) THEN  '  ' ELSE lpad(ligne1003.TRMOPE03,2,0) END) ||
(CASE  WHEN (ligne1003.TIMOPE03 is null) THEN  '     ' ELSE lpad(ligne1003.TIMOPE03,5,0) END) ||
(CASE  WHEN (ligne1003.DATVAL03 is null) THEN  '      ' ELSE TO_CHAR(ligne1003.DATVAL03,'YYMMDD') END) ||
rpad(nvl(ligne1003.AGCREF03,' '),2,' ') ||
rpad(nvl(ligne1003.SERREF03,' '),1,' ') ||
(CASE  WHEN (ligne1003.ORDREF03 is null) THEN  '       ' ELSE lpad(ligne1003.ORDREF03,7,0) END) ||
(CASE  WHEN (ligne1003.NUMBRD03 is null) THEN  '       ' ELSE lpad(ligne1003.NUMBRD03,7,0) END) ||
rpad(nvl(ligne1003.NOMCPT03,' '),30,' ') ||
(CASE  WHEN (ligne1003.PTTCPT03 is null) THEN  '    ' ELSE lpad(ligne1003.PTTCPT03,4,0) END) ||
(CASE  WHEN (ligne1003.CODESC03 is null) THEN  ' ' ELSE TO_CHAR(ligne1003.CODESC03) END) ||
(CASE  WHEN (ligne1003.CHAINE03 is null) THEN  ' ' ELSE TO_CHAR(ligne1003.CHAINE03) END) ||
(CASE  WHEN (ligne1003.NBREFF03 is null) THEN  '    ' ELSE lpad(ligne1003.NBREFF03,4,0) END) ||
(CASE  WHEN (ligne1003.TAUTVA03 is null) THEN  '      ' ELSE lpad(ligne1003.TAUTVA03*1000,6,0) END) ||
rpad(nvl(ligne1003.FILLER03,' '),10,' ')
);
    FETCH CUR1003 INTO ligne1003;
  END LOOP;
  CLOSE CUR1003;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1019
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1019" AS

CURSOR CUR1019  IS SELECT * FROM FL1019;
ligne1019   FL1019%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1019';
  OPEN CUR1019 ;
  FETCH CUR1019 INTO  ligne1019;
  WHILE CUR1019 %FOUND LOOP
    if  ligne1019.CODOPE19 = 'T087' or  ligne1019.CODOPE19 = 'T088' or  ligne1019.CODOPE19 = 'T089' or  ligne1019.CODOPE19 = 'T090' then
       INSERT INTO LIGNE_FL1019 LIGNE1019 values (ligne1019.SU1019 || ligne1019.CODAGC19 || 
       TO_CHAR(ligne1019.DATOPE19,'YYMMDD') || 
       ligne1019.CODOPE19 || lpad(ligne1019.REFOPE19,10,0) || rpad(nvl(ligne1019.AGXOPE19,' '),2,' ') || 
       (CASE  WHEN (ligne1019.NAXOPE19 is null) THEN  '  ' ELSE lpad(ligne1019.NAXOPE19,2,0) END) || 
       (CASE  WHEN (ligne1019.ORXOPE19 is null) THEN  '     ' ELSE lpad(ligne1019.ORXOPE19,5,0) END) || 
       (CASE  WHEN (ligne1019.KLXOPE19 is null) THEN  ' ' ELSE TO_CHAR(ligne1019.KLXOPE19) END) || 
       (CASE  WHEN (ligne1019.CGLOPE19 is null) THEN  '     ' ELSE lpad(ligne1019.CGLOPE19,5,0) END) || 
       rpad(nvl(ligne1019.MEGOPE19,' '),2,' ') || rpad(nvl(ligne1019.MEGMEG19,' '),2,' ') || 
       (CASE  WHEN (ligne1019.MNTDBI19 is null) THEN  '            ' ELSE lpad(ligne1019.MNTDBI19*1000,12,0) END) || 
       (CASE  WHEN (ligne1019.MNTCRE19 is null) THEN  '            ' ELSE lpad(ligne1019.MNTCRE19*1000,12,0) END) || 
       (CASE  WHEN (ligne1019.DATVAL19 is null) THEN  '      ' ELSE TO_CHAR(ligne1019.DATVAL19,'YYMMDD') END) || 
       rpad(nvl(ligne1019.LIBOPE19,' '),19,' ') || rpad(nvl(ligne1019.AGYOPE19,' '),2,' ') || (CASE  WHEN (ligne1019.NAYOPE19 is null) THEN  '  ' ELSE lpad(ligne1019.NAYOPE19,2,0) END) || (CASE  WHEN (ligne1019.ORYOPE19 is null) THEN  '     ' ELSE lpad(ligne1019.ORYOPE19,5,0) END) || (CASE  WHEN (ligne1019.KLYOPE19 is null) THEN  ' ' ELSE TO_CHAR(ligne1019.KLYOPE19) END) || ' ' || (CASE  WHEN (ligne1019.USROPE19 is null) THEN  '     ' ELSE lpad(ligne1019.USROPE19,5,0) END) || (CASE  WHEN (ligne1019.TRMOPE19 is null) THEN  '  ' ELSE lpad(ligne1019.TRMOPE19,2,0) END) || '     ' || rpad(nvl(ligne1019.PNTOPE19,' '),6,' ') || rpad(nvl(ligne1019.ABROPE19,' '),4,' '));
    end if;
    if  ligne1019.CODOPE19 = 'T007' or  ligne1019.CODOPE19 = 'T008' then
       INSERT INTO LIGNE_FL1019 LIGNE1019 values (ligne1019.SU1019 || ligne1019.CODAGC19 || 
       TO_CHAR(ligne1019.DATOPE19,'YYMMDD') || ligne1019.CODOPE19 || rpad(nvl(ligne1019.AGCOPE19,' '),2,' ') || 
       rpad(nvl(ligne1019.SEROPE19,' '),1,' ') || lpad(ligne1019.ORDOPE19,7,0) || rpad(nvl(ligne1019.AGXOPE19,' '),2,' ') || 
       (CASE  WHEN (ligne1019.NAXOPE19 is null) THEN  '  ' ELSE lpad(ligne1019.NAXOPE19,2,0) END) || 
       (CASE  WHEN (ligne1019.ORXOPE19 is null) THEN  '     ' ELSE lpad(ligne1019.ORXOPE19,5,0) END) || 
       (CASE  WHEN (ligne1019.KLXOPE19 is null) THEN  ' ' ELSE TO_CHAR(ligne1019.KLXOPE19) END) || 
       (CASE  WHEN (ligne1019.CGLOPE19 is null) THEN  '     ' ELSE lpad(ligne1019.CGLOPE19,5,0) END) || 
       rpad(nvl(ligne1019.MEGOPE19,' '),2,' ') || rpad(nvl(ligne1019.MEGMEG19,' '),2,' ') || 
       (CASE  WHEN (ligne1019.MNTDBI19 is null) THEN  '            ' ELSE lpad(ligne1019.MNTDBI19*1000,12,0) END) || 
       (CASE  WHEN (ligne1019.MNTCRE19 is null) THEN  '            ' ELSE lpad(ligne1019.MNTCRE19*1000,12,0) END) || 
       (CASE  WHEN (ligne1019.DATVAL19 is null) THEN  '      ' ELSE TO_CHAR(ligne1019.DATVAL19,'YYMMDD') END) || 
       rpad(nvl(ligne1019.LIBOPE29,' '),29,' ') || ' ' || (CASE  WHEN (ligne1019.USROPE19 is null) THEN  '     ' ELSE 
       lpad(ligne1019.USROPE19,5,0) END) || (CASE  WHEN (ligne1019.TRMOPE19 is null) THEN  '  ' ELSE 
       lpad(ligne1019.TRMOPE19,2,0) END) || '     ' || rpad(nvl(ligne1019.PNTOPE19,' '),6,' ') || 
       rpad(nvl(ligne1019.ABROPE19,' '),4,' '));
    end if;
    FETCH CUR1019 INTO ligne1019;
  END LOOP;
  CLOSE CUR1019;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1030
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1030" AS

CURSOR CUR1030  IS SELECT * FROM FL1030;
ligne1030   FL1030%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1030';
  OPEN CUR1030 ;
  FETCH CUR1030 INTO  ligne1030;
  WHILE CUR1030 %FOUND LOOP
    INSERT INTO LIGNE_FL1030 (LIGNE1030) values (ligne1030.SU1030 ||
rpad(nvl(ligne1030.CODAGC1030,' '),2,' ') ||
(CASE  WHEN (ligne1030.CODNAT1030 is null) THEN  '  ' ELSE lpad(ligne1030.CODNAT1030,2,0) END) ||
(CASE  WHEN (ligne1030.ORDCPT1030 is null) THEN  '     ' ELSE lpad(ligne1030.ORDCPT1030,5,0) END) ||
(CASE  WHEN (ligne1030.KLECPT1030 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.KLECPT1030) END) ||
rpad(nvl(ligne1030.DVSCPT1030,' '),3,' ') ||
(CASE  WHEN (ligne1030.CODACT1030 is null) THEN  '    ' ELSE lpad(ligne1030.CODACT1030,4,0) END) ||
rpad(nvl(ligne1030.CGLCPT1030,' '),6,' ') ||
(CASE  WHEN (ligne1030.CODPTT1030A is null) THEN  '    ' ELSE lpad(ligne1030.CODPTT1030A,4,0) END) ||
rpad(nvl(ligne1030.CODPAY1030,' '),2,' ') ||
(CASE  WHEN (ligne1030.CATCLT1030 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CATCLT1030) END) ||
(CASE  WHEN (ligne1030.CODDOC1030 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CODDOC1030) END) ||
rpad(nvl(ligne1030.ORDDOC1030,' '),8,' ') ||
(CASE  WHEN (ligne1030.DATLIV1030 is null) THEN  '      ' ELSE TO_CHAR(ligne1030.DATLIV1030,'YYMMDD') END) ||
rpad(nvl(ligne1030.LIELIV10,' '),10,' ') ||
(CASE  WHEN (ligne1030.CODDOC1030A is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CODDOC1030A) END) ||
(CASE  WHEN (ligne1030.CODPTT1030B is null) THEN  '    ' ELSE lpad(ligne1030.CODPTT1030B,4,0) END) ||
rpad(nvl(ligne1030.BIDE1030,' '),5,' ') ||
rpad(nvl(ligne1030.NOMRSC,' '),30,' ') ||
rpad(nvl(ligne1030.ADRPRS,' '),46,' ') ||
(CASE  WHEN (ligne1030.EMPOUV10 is null) THEN  '     ' ELSE lpad(ligne1030.EMPOUV10,5,0) END) ||
(CASE  WHEN (ligne1030.DNECPT10 is null) THEN  '        ' ELSE lpad(ligne1030.DNECPT10,8,0) END) ||
(CASE  WHEN (ligne1030.SRVCPT10 is null) THEN  '  ' ELSE lpad(ligne1030.SRVCPT10,2,0) END) ||
(CASE  WHEN (ligne1030.SLDCPT10 is null) THEN  '            ' ELSE (CASE  WHEN (ligne1030.SLDCPT10 <0) THEN  
('-' || lpad(ligne1030.SLDCPT10*(-1000),11,0)) ELSE lpad(ligne1030.SLDCPT10*1000,12,0) END) END) ||
rpad(nvl(ligne1030.SLCCPT10,' '),12,' ') ||
(CASE  WHEN (ligne1030.CODUTL10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CODUTL10) END) ||
rpad(nvl(ligne1030.PPLAGC30,' '),2,' ') ||
(CASE  WHEN (ligne1030.PPLNAT30 is null) THEN  '  ' ELSE lpad(ligne1030.PPLNAT30,2,0) END) ||
(CASE  WHEN (ligne1030.PPLORD30 is null) THEN  '     ' ELSE lpad(ligne1030.PPLORD30,5,0) END) ||
(CASE  WHEN (ligne1030.PPLCLE30 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.PPLCLE30) END) ||
(CASE  WHEN (ligne1030.CLASSE30 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CLASSE30) END) ||
(CASE  WHEN (ligne1030.PRFL10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.PRFL10) END) ||
(CASE  WHEN (ligne1030.PRFM10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.PRFM10) END) ||
(CASE  WHEN (ligne1030.PRFN10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.PRFN10) END) ||
(CASE  WHEN (ligne1030.DBICPT10 is null) THEN  '  ' ELSE lpad(ligne1030.DBICPT10,2,0) END) ||
rpad(nvl(ligne1030.BIDCPT30,' '),1,' ') ||
(CASE  WHEN (ligne1030.NBCDVC10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.NBCDVC10) END) ||
(CASE  WHEN (ligne1030.PRGSEC10 is null) THEN  '  ' ELSE lpad(ligne1030.PRGSEC10,2,0) END) ||
(CASE  WHEN (ligne1030.DATSEC10 is null) THEN  '      ' ELSE TO_CHAR(ligne1030.DATSEC10,'YYMMDD') END) ||
(CASE  WHEN (ligne1030.INTCHQ10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.INTCHQ10) END) ||
(CASE  WHEN (ligne1030.OUVCPT10 is null) THEN  '      ' ELSE TO_CHAR(ligne1030.OUVCPT10,'YYMMDD') END) ||
(CASE  WHEN (ligne1030.CLOCPT10 is null) THEN  '      ' ELSE TO_CHAR(ligne1030.CLOCPT10,'YYMMDD') END) ||
rpad(nvl(ligne1030.SEXCPT10,' '),1,' ') ||
(CASE  WHEN (ligne1030.NAICPT10 is null) THEN  '      ' ELSE TO_CHAR(ligne1030.NAICPT10,'YYMMDD') END) ||
(CASE  WHEN (ligne1030.SARCPT10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.SARCPT10) END) ||
(CASE  WHEN (ligne1030.JNTCPT10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.JNTCPT10) END) ||
rpad(nvl(ligne1030.FRMCPT10,' '),4,' ') ||
(CASE  WHEN (ligne1030.INDCHO10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.INDCHO10) END) ||
(CASE  WHEN (ligne1030.INDEFO10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.INDEFO10) END) ||
rpad(nvl(ligne1030.ADRPRF30,' '),30,' ') ||
rpad(nvl(ligne1030.CODAVO10,' '),3,' ') ||
rpad(nvl(ligne1030.COTSGN10,' '),3,' ') ||
(CASE  WHEN (ligne1030.COTCRC10 is null) THEN  '            ' ELSE lpad(ligne1030.COTCRC10*1000,12,0) END) ||
(CASE  WHEN (ligne1030.NBRIMC10 is null) THEN  '   ' ELSE lpad(ligne1030.NBRIMC10,3,0) END) ||
(CASE  WHEN (ligne1030.MTFOUV10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.MTFOUV10) END) ||
(CASE  WHEN (ligne1030.CODCLO10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CODCLO10) END) ||
(CASE  WHEN (ligne1030.NIVCPT10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.NIVCPT10) END) ||
(CASE  WHEN (ligne1030.MTFCLO10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.MTFCLO10) END) ||
(CASE  WHEN (ligne1030.FONCPT10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.FONCPT10) END) ||
(CASE  WHEN (ligne1030.INDTEL10 is null) THEN  '  ' ELSE lpad(ligne1030.INDTEL10,2,0) END) ||
(CASE  WHEN (ligne1030.TELCPT10 is null) THEN  '      ' ELSE lpad(ligne1030.TELCPT10,6,0) END) ||
(CASE  WHEN (ligne1030.NBRIMF10 is null) THEN  '   ' ELSE lpad(ligne1030.NBRIMF10,3,0) END) ||
(CASE  WHEN (ligne1030.PTTRGC30 is null) THEN  '    ' ELSE lpad(ligne1030.PTTRGC30,4,0) END) ||
(CASE  WHEN (ligne1030.NBRMCR10 is null) THEN  '    ' ELSE lpad(ligne1030.NBRMCR10,4,0) END) ||
rpad(nvl(ligne1030.INVADR10,' '),1,' ') ||
rpad(nvl(ligne1030.AGOCPT10,' '),1,' ') ||
(CASE  WHEN (ligne1030.SLDAMY10 is null) THEN  '            ' ELSE lpad(ligne1030.SLDAMY10*1000,12,0) END) ||
(CASE  WHEN (ligne1030.UTLCPT10 is null) THEN  '        ' ELSE lpad(ligne1030.UTLCPT10*1000,8,0) END) ||
(CASE  WHEN (ligne1030.BLKCPT10 is null) THEN  '            ' ELSE lpad(ligne1030.BLKCPT10*1000,12,0) END) ||
(CASE  WHEN (ligne1030.SLDMMY10 is null) THEN  '            ' ELSE lpad(ligne1030.SLDMMY10*1000,12,0) END) ||
(CASE  WHEN (ligne1030.SLDMMX10 is null) THEN  '            ' ELSE lpad(ligne1030.SLDMMX10*1000,12,0) END) ||
(CASE  WHEN (ligne1030.SLDMMI10 is null) THEN  '            ' ELSE lpad(ligne1030.SLDMMI10*1000,12,0) END) ||
(CASE  WHEN (ligne1030.MVDMOI10 is null) THEN  '            ' ELSE lpad(ligne1030.MVDMOI10*1000,12,0) END) ||
rpad(nvl(ligne1030.CODOPE29,' '),4,' ') ||
(CASE  WHEN (ligne1030.MVCANN10 is null) THEN  '         ' ELSE lpad(ligne1030.MVCANN10*1000,9,0) END) ||
rpad(nvl(ligne1030.CHQCPT10,' '),19,' ') ||
rpad(nvl(ligne1030.INDRCS10,' '),1,' ') ||
(CASE  WHEN (ligne1030.INFRCS10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.INFRCS10) END) ||
rpad(nvl(ligne1030.NUMRCS10,' '),6,' ') ||
rpad(nvl(ligne1030.ANNRCS10,' '),4,' ') ||
(CASE  WHEN (ligne1030.CCACPT10 is null) THEN  '     ' ELSE lpad(ligne1030.CCACPT10,5,0) END) ||
(CASE  WHEN (ligne1030.NUMBCT10 is null) THEN  '       ' ELSE lpad(ligne1030.NUMBCT10,7,0) END) ||
(CASE  WHEN (ligne1030.DATBCT10 is null) THEN  '      ' ELSE TO_CHAR(ligne1030.DATBCT10,'YYMMDD') END) ||
rpad(nvl(ligne1030.PRFP10,' '),1,' ') ||
rpad(nvl(ligne1030.PRFQ10,' '),1,' ') ||
rpad(nvl(ligne1030.PRFJJ10,' '),1,' ') ||
(CASE  WHEN (ligne1030.MATBCT30 is null) THEN  '      ' ELSE lpad(ligne1030.MATBCT30,6,0) END) ||
rpad(nvl(ligne1030.QLTGRN10,' '),1,' ') ||
rpad(nvl(ligne1030.OPTCHQ10,' '),1,' ') ||
(CASE  WHEN (ligne1030.EFFCPT10 is null) THEN  ' ' ELSE TO_CHAR(ligne1030.EFFCPT10) END) ||
rpad(nvl(ligne1030.NOMRPR10,' '),30,' ') ||
(CASE  WHEN (ligne1030.NUMANL10 is null) THEN  '      ' ELSE lpad(ligne1030.NUMANL10,6,0) END) ||
rpad(nvl(ligne1030.INFCMP10,' '),1,' ') ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR1030 INTO ligne1030;
  END LOOP;
  CLOSE CUR1030;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1030M
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1030M" AS

CURSOR CUR1030  IS SELECT * FROM ME1030 order by SU1030M, CODAGC1030M, CODNAT1030M, ORDCPT1030M, KLECPT1030M;
ligne1030   ME1030%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_ME1030';
  OPEN CUR1030 ;
  FETCH CUR1030 INTO  ligne1030;
  WHILE CUR1030 %FOUND LOOP
    INSERT INTO LIGNE_ME1030 (LIGNE1030M) values (ligne1030.SU1030M ||
rpad(nvl(ligne1030.CODAGC1030M,' '),2,' ') ||
(CASE  WHEN (ligne1030.CODNAT1030M is null) THEN  '  ' ELSE lpad(ligne1030.CODNAT1030M,2,0) END) ||
(CASE  WHEN (ligne1030.ORDCPT1030M is null) THEN  '     ' ELSE lpad(ligne1030.ORDCPT1030M,5,0) END) ||
(CASE  WHEN (ligne1030.KLECPT1030M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.KLECPT1030M) END) ||
rpad(nvl(ligne1030.DVSCPT1030M,' '),3,' ') ||
(CASE  WHEN (ligne1030.CODACT1030M is null) THEN  '    ' ELSE lpad(ligne1030.CODACT1030M,4,0) END) ||
rpad(nvl(ligne1030.CGLCPT1030M,' '),6,' ') ||
(CASE  WHEN (ligne1030.CODPTT1030AM is null) THEN  '    ' ELSE lpad(ligne1030.CODPTT1030AM,4,0) END) ||
rpad(nvl(ligne1030.CODPAY1030M,' '),2,' ') ||
(CASE  WHEN (ligne1030.CATCLT1030M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CATCLT1030M) END) ||
(CASE  WHEN (ligne1030.CODDOC1030M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CODDOC1030M) END) ||
rpad(nvl(ligne1030.ORDDOC1030M,' '),8,' ') ||
(CASE  WHEN (ligne1030.DATLIV1030M is null) THEN  '      ' ELSE TO_CHAR(ligne1030.DATLIV1030M,'YYMMDD') END) ||
rpad(nvl(ligne1030.LIELIV10M,' '),10,' ') ||
(CASE  WHEN (ligne1030.CODDOC1030AM is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CODDOC1030AM) END) ||
(CASE  WHEN (ligne1030.CODPTT1030BM is null) THEN  '    ' ELSE lpad(ligne1030.CODPTT1030BM,4,0) END) ||
rpad(nvl(ligne1030.BIDE1030M,' '),5,' ') ||
rpad(nvl(ligne1030.NOMRSCM,' '),30,' ') ||
rpad(nvl(ligne1030.ADRPRSM,' '),46,' ') ||
(CASE  WHEN (ligne1030.EMPOUV10M is null) THEN  '     ' ELSE lpad(ligne1030.EMPOUV10M,5,0) END) ||
(CASE  WHEN (ligne1030.DNECPT10M is null) THEN  '        ' ELSE lpad(ligne1030.DNECPT10M,8,0) END) ||
(CASE  WHEN (ligne1030.SRVCPT10M is null) THEN  '  ' ELSE lpad(ligne1030.SRVCPT10M,2,0) END) ||
(CASE  WHEN (ligne1030.SLDCPT10M is null) THEN  '            ' ELSE (CASE  WHEN (ligne1030.SLDCPT10M <0) THEN  
('-' || lpad(ligne1030.SLDCPT10M*(-1000),11,0)) ELSE lpad(ligne1030.SLDCPT10M*1000,12,0) END) END) ||
rpad(nvl(ligne1030.SLCCPT10M,' '),12,' ') ||
(CASE  WHEN (ligne1030.CODUTL10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CODUTL10M) END) ||
rpad(nvl(ligne1030.PPLAGC30M,' '),2,' ') ||
(CASE  WHEN (ligne1030.PPLNAT30M is null) THEN  '  ' ELSE lpad(ligne1030.PPLNAT30M,2,0) END) ||
(CASE  WHEN (ligne1030.PPLORD30M is null) THEN  '     ' ELSE lpad(ligne1030.PPLORD30M,5,0) END) ||
(CASE  WHEN (ligne1030.PPLCLE30M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.PPLCLE30M) END) ||
(CASE  WHEN (ligne1030.CLASSE30M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CLASSE30M) END) ||
(CASE  WHEN (ligne1030.PRFL10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.PRFL10M) END) ||
(CASE  WHEN (ligne1030.PRFM10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.PRFM10M) END) ||
(CASE  WHEN (ligne1030.PRFN10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.PRFN10M) END) ||
(CASE  WHEN (ligne1030.DBICPT10M is null) THEN  '  ' ELSE lpad(ligne1030.DBICPT10M,2,0) END) ||
rpad(nvl(ligne1030.BIDCPT30M,' '),1,' ') ||
(CASE  WHEN (ligne1030.NBCDVC10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.NBCDVC10M) END) ||
(CASE  WHEN (ligne1030.PRGSEC10M is null) THEN  '  ' ELSE lpad(ligne1030.PRGSEC10M,2,0) END) ||
(CASE  WHEN (ligne1030.DATSEC10M is null) THEN  '      ' ELSE TO_CHAR(ligne1030.DATSEC10M,'YYMMDD') END) ||
(CASE  WHEN (ligne1030.INTCHQ10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.INTCHQ10M) END) ||
(CASE  WHEN (ligne1030.OUVCPT10M is null) THEN  '      ' ELSE TO_CHAR(ligne1030.OUVCPT10M,'YYMMDD') END) ||
(CASE  WHEN (ligne1030.CLOCPT10M is null) THEN  '      ' ELSE TO_CHAR(ligne1030.CLOCPT10M,'YYMMDD') END) ||
rpad(nvl(ligne1030.SEXCPT10M,' '),1,' ') ||
(CASE  WHEN (ligne1030.NAICPT10M is null) THEN  '      ' ELSE TO_CHAR(ligne1030.NAICPT10M,'YYMMDD') END) ||
(CASE  WHEN (ligne1030.SARCPT10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.SARCPT10M) END) ||
(CASE  WHEN (ligne1030.JNTCPT10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.JNTCPT10M) END) ||
rpad(nvl(ligne1030.FRMCPT10M,' '),4,' ') ||
(CASE  WHEN (ligne1030.INDCHO10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.INDCHO10M) END) ||
(CASE  WHEN (ligne1030.INDEFO10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.INDEFO10M) END) ||
rpad(nvl(ligne1030.ADRPRF30M,' '),30,' ') ||
rpad(nvl(ligne1030.CODAVO10M,' '),3,' ') ||
rpad(nvl(ligne1030.COTSGN10M,' '),3,' ') ||
(CASE  WHEN (ligne1030.COTCRC10M is null) THEN  '            ' ELSE lpad(ligne1030.COTCRC10M*1000,12,0) END) ||
(CASE  WHEN (ligne1030.NBRIMC10M is null) THEN  '   ' ELSE lpad(ligne1030.NBRIMC10M,3,0) END) ||
(CASE  WHEN (ligne1030.MTFOUV10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.MTFOUV10M) END) ||
(CASE  WHEN (ligne1030.CODCLO10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.CODCLO10M) END) ||
(CASE  WHEN (ligne1030.NIVCPT10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.NIVCPT10M) END) ||
(CASE  WHEN (ligne1030.MTFCLO10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.MTFCLO10M) END) ||
(CASE  WHEN (ligne1030.FONCPT10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.FONCPT10M) END) ||
(CASE  WHEN (ligne1030.INDTEL10M is null) THEN  '  ' ELSE lpad(ligne1030.INDTEL10M,2,0) END) ||
(CASE  WHEN (ligne1030.TELCPT10M is null) THEN  '      ' ELSE lpad(ligne1030.TELCPT10M,6,0) END) ||
(CASE  WHEN (ligne1030.NBRIMF10M is null) THEN  '   ' ELSE lpad(ligne1030.NBRIMF10M,3,0) END) ||
(CASE  WHEN (ligne1030.PTTRGC30M is null) THEN  '    ' ELSE lpad(ligne1030.PTTRGC30M,4,0) END) ||
(CASE  WHEN (ligne1030.NBRMCR10M is null) THEN  '    ' ELSE lpad(ligne1030.NBRMCR10M,4,0) END) ||
rpad(nvl(ligne1030.INVADR10M,' '),1,' ') ||
rpad(nvl(ligne1030.AGOCPT10M,' '),1,' ') ||
(CASE  WHEN (ligne1030.SLDAMY10M is null) THEN  '            ' ELSE lpad(ligne1030.SLDAMY10M*1000,12,0) END) ||
(CASE  WHEN (ligne1030.UTLCPT10M is null) THEN  '        ' ELSE lpad(ligne1030.UTLCPT10M*1000,8,0) END) ||
(CASE  WHEN (ligne1030.BLKCPT10M is null) THEN  '            ' ELSE lpad(ligne1030.BLKCPT10M*1000,12,0) END) ||
(CASE  WHEN (ligne1030.SLDMMY10M is null) THEN  '            ' ELSE lpad(ligne1030.SLDMMY10M*1000,12,0) END) ||
(CASE  WHEN (ligne1030.SLDMMX10M is null) THEN  '            ' ELSE lpad(ligne1030.SLDMMX10M*1000,12,0) END) ||
(CASE  WHEN (ligne1030.SLDMMI10M is null) THEN  '            ' ELSE lpad(ligne1030.SLDMMI10M*1000,12,0) END) ||
(CASE  WHEN (ligne1030.MVDMOI10M is null) THEN  '            ' ELSE lpad(ligne1030.MVDMOI10M*1000,12,0) END) ||
rpad(nvl(ligne1030.CODOPE29M,' '),4,' ') ||
(CASE  WHEN (ligne1030.MVCANN10M is null) THEN  '         ' ELSE lpad(ligne1030.MVCANN10M*1000,9,0) END) ||
rpad(nvl(ligne1030.CHQCPT10M,' '),19,' ') ||
rpad(nvl(ligne1030.INDRCS10M,' '),1,' ') ||
(CASE  WHEN (ligne1030.INFRCS10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.INFRCS10M) END) ||
rpad(nvl(ligne1030.NUMRCS10M,' '),6,' ') ||
rpad(nvl(ligne1030.ANNRCS10M,' '),4,' ') ||
(CASE  WHEN (ligne1030.CCACPT10M is null) THEN  '     ' ELSE lpad(ligne1030.CCACPT10M,5,0) END) ||
(CASE  WHEN (ligne1030.NUMBCT10M is null) THEN  '       ' ELSE lpad(ligne1030.NUMBCT10M,7,0) END) ||
(CASE  WHEN (ligne1030.DATBCT10M is null) THEN  '      ' ELSE TO_CHAR(ligne1030.DATBCT10M,'YYMMDD') END) ||
rpad(nvl(ligne1030.PRFP10M,' '),1,' ') ||
rpad(nvl(ligne1030.PRFQ10M,' '),1,' ') ||
rpad(nvl(ligne1030.PRFJJ10M,' '),1,' ') ||
(CASE  WHEN (ligne1030.MATBCT30M is null) THEN  '      ' ELSE lpad(ligne1030.MATBCT30M,6,0) END) ||
rpad(nvl(ligne1030.QLTGRN10M,' '),1,' ') ||
rpad(nvl(ligne1030.OPTCHQ10M,' '),1,' ') ||
(CASE  WHEN (ligne1030.EFFCPT10M is null) THEN  ' ' ELSE TO_CHAR(ligne1030.EFFCPT10M) END) ||
rpad(nvl(ligne1030.NOMRPR10M,' '),30,' ') ||
(CASE  WHEN (ligne1030.NUMANL10M is null) THEN  '      ' ELSE lpad(ligne1030.NUMANL10M,6,0) END) ||
rpad(nvl(ligne1030.INFCMP10M,' '),1,' ')
);
    FETCH CUR1030 INTO ligne1030;
  END LOOP;
  CLOSE CUR1030;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1061
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1061" AS

CURSOR CUR1061  IS SELECT * FROM FL1061;
ligne1061   FL1061%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1061';
  OPEN CUR1061 ;
  FETCH CUR1061 INTO  ligne1061;
  WHILE CUR1061 %FOUND LOOP
    INSERT INTO LIGNE_FL1061 (LIGNE1061) values (
ligne1061.SU1061 ||
rpad(nvl(ligne1061.AGCNUM61,' '),2,' ') ||
rpad(nvl(ligne1061.SERNUM61,' '),1,' ') ||
(CASE  WHEN (ligne1061.ORDNUM61 is null) THEN  '       ' ELSE lpad(ligne1061.ORDNUM61,7,0) END) ||
(CASE  WHEN (ligne1061.MNTOPE61 is null) THEN  '            ' ELSE lpad(ligne1061.MNTOPE61*1000,12,0) END) ||
rpad(nvl(ligne1061.ENGOPE61,' '),3,' ') ||
rpad(nvl(ligne1061.CPTAGC61,' '),2,' ') ||
(CASE  WHEN (ligne1061.CPTNAT61 is null) THEN  '  ' ELSE lpad(ligne1061.CPTNAT61,2,0) END) ||
(CASE  WHEN (ligne1061.CPTORD61 is null) THEN  '     ' ELSE lpad(ligne1061.CPTORD61,5,0) END) ||
(CASE  WHEN (ligne1061.CPTCLE61 is null) THEN  ' ' ELSE TO_CHAR(ligne1061.CPTCLE61) END) ||
rpad(nvl(ligne1061.NOMCPT61,' '),21,' ') ||
(CASE  WHEN (ligne1061.SANEFF61 is null) THEN  ' ' ELSE TO_CHAR(ligne1061.SANEFF61) END) ||
rpad(nvl(ligne1061.AGHRACS,' '),2,' ') ||
(CASE  WHEN (ligne1061.DATREC61 is null) THEN  '      ' ELSE TO_CHAR(ligne1061.DATREC61,'YYMMDD') END) ||
(CASE  WHEN (ligne1061.ECHOPE61 is null) THEN  '      ' ELSE TO_CHAR(ligne1061.ECHOPE61,'YYMMDD') END) ||
(CASE  WHEN (ligne1061.DATCRE61 is null) THEN  '      ' ELSE TO_CHAR(ligne1061.DATCRE61,'YYMMDD') END) ||
(CASE  WHEN (ligne1061.PPLINT61 is null) THEN  ' ' ELSE TO_CHAR(ligne1061.PPLINT61) END) ||
(CASE  WHEN (ligne1061.TAUTVA61 is null) THEN  '      ' ELSE lpad(ligne1061.TAUTVA61*10000,6,0) END) ||
rpad(nvl(ligne1061.SECHOPE61,' '),2,' ') ||
rpad(nvl(ligne1061.FILLER61,' '),10,' ') ||
(CASE  WHEN (ligne1061.TAUINT61 is null) THEN  '      ' ELSE lpad(ligne1061.TAUINT61*10000,6,0) END) ||
(CASE  WHEN (ligne1061.TAUCPC61 is null) THEN  '     ' ELSE lpad(ligne1061.TAUCPC61*10000,5,0) END) ||
(CASE  WHEN (ligne1061.NBREFF61 is null) THEN  '    ' ELSE lpad(ligne1061.NBREFF61,4,0) END) ||
(CASE  WHEN (ligne1061.TAUMRC61 is null) THEN  '      ' ELSE lpad(ligne1061.TAUMRC61*10000,6,0) END) ||
(CASE  WHEN (ligne1061.ECHU61 is null) THEN  ' ' ELSE TO_CHAR(ligne1061.ECHU61) END) ||
(CASE  WHEN (ligne1061.PRCAGC61 is null) THEN  ' ' ELSE TO_CHAR(ligne1061.PRCAGC61) END) ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR1061 INTO ligne1061;
  END LOOP;
  CLOSE CUR1061;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1062
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1062" AS

CURSOR CUR1062  IS SELECT * FROM FL1062;
ligne1062   FL1062%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1062';
  OPEN CUR1062 ;
  FETCH CUR1062 INTO  ligne1062;
  WHILE CUR1062 %FOUND LOOP
    INSERT INTO LIGNE_FL1062 (LIGNE1062) values (ligne1062.SU1062 ||
rpad(nvl(ligne1062.AGCNUM62,' '),2,' ') ||
rpad(nvl(ligne1062.SERNUM62,' '),1,' ') ||
(CASE  WHEN (ligne1062.ORDNUM62 is null) THEN  '       ' ELSE lpad(ligne1062.ORDNUM62,7,0) END) ||
(CASE  WHEN (ligne1062.MNTOPE62 is null) THEN  '            ' ELSE lpad(ligne1062.MNTOPE62*1000,12,0) END) ||
rpad(nvl(ligne1062.ENGOPE62,' '),3,' ') ||
rpad(nvl(ligne1062.CPTAGC62,' '),2,' ') ||
(CASE  WHEN (ligne1062.CPTNAT62 is null) THEN  '  ' ELSE lpad(ligne1062.CPTNAT62,2,0) END) ||
(CASE  WHEN (ligne1062.CPTORD62 is null) THEN  '     ' ELSE lpad(ligne1062.CPTORD62,5,0) END) ||
(CASE  WHEN (ligne1062.CPTCLE62 is null) THEN  ' ' ELSE TO_CHAR(ligne1062.CPTCLE62) END) ||
rpad(nvl(ligne1062.NOMCPT62,' '),21,' ') ||
(CASE  WHEN (ligne1062.SANEFF62 is null) THEN  ' ' ELSE TO_CHAR(ligne1062.SANEFF62) END) ||
rpad(nvl(ligne1062.AGHRACS1,' '),2,' ') ||
(CASE  WHEN (ligne1062.DATREC62 is null) THEN  '      ' ELSE TO_CHAR(ligne1062.DATREC62,'YYMMDD') END) ||
(CASE  WHEN (ligne1062.ECHOPE62 is null) THEN  '      ' ELSE TO_CHAR(ligne1062.ECHOPE62,'YYMMDD') END) ||
(CASE  WHEN (ligne1062.DATCRE62 is null) THEN  '      ' ELSE TO_CHAR(ligne1062.DATCRE62,'YYMMDD') END) ||
(CASE  WHEN (ligne1062.PPLINT62 is null) THEN  ' ' ELSE TO_CHAR(ligne1062.PPLINT62) END) ||
(CASE  WHEN (ligne1062.TAUTVA62 is null) THEN  '      ' ELSE lpad(ligne1062.TAUTVA62*10000,6,0) END) ||
(CASE  WHEN (ligne1062.DATREM62 is null) THEN  '      ' ELSE TO_CHAR(ligne1062.DATREM62,'YYMMDD') END) ||
(CASE  WHEN (ligne1062.DATENT62 is null) THEN  '      ' ELSE TO_CHAR(ligne1062.DATENT62,'YYMMDD') END) ||
(CASE  WHEN (ligne1062.TAUINT62 is null) THEN  '      ' ELSE lpad(ligne1062.TAUINT62*10000,6,0) END) ||
(CASE  WHEN (ligne1062.TAUCPC62 is null) THEN  '     ' ELSE lpad(ligne1062.TAUCPC62*10000,5,0) END) ||
(CASE  WHEN (ligne1062.NBREFF62 is null) THEN  '    ' ELSE lpad(ligne1062.NBREFF62,4,0) END) ||
(CASE  WHEN (ligne1062.TAUMRC62 is null) THEN  '      ' ELSE lpad(ligne1062.TAUMRC62*10000,6,0) END) ||
(CASE  WHEN (ligne1062.ECHU62 is null) THEN  ' ' ELSE TO_CHAR(ligne1062.ECHU62) END) ||
(CASE  WHEN (ligne1062.PFCAGC62 is null) THEN  ' ' ELSE TO_CHAR(ligne1062.PFCAGC62) END) ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR1062 INTO ligne1062;
  END LOOP;
  CLOSE CUR1062;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1066
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1066" AS

CURSOR CUR1066  IS SELECT * FROM FL1066;
ligne1066   FL1066%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1066';
  OPEN CUR1066 ;
  FETCH CUR1066 INTO  ligne1066;
  WHILE CUR1066 %FOUND LOOP
    INSERT INTO LIGNE_FL1066 (LIGNE1066) values (ligne1066.SU1066 ||
rpad(nvl(ligne1066.AGCNUM66,' '),2,' ') ||
rpad(nvl(ligne1066.SERNUM66,' '),1,' ') ||
(CASE  WHEN (ligne1066.ORDNUM66 is null) THEN  '       ' ELSE lpad(ligne1066.ORDNUM66,7,0) END) ||
(CASE  WHEN (ligne1066.MNTOPE66 is null) THEN  '            ' ELSE lpad(ligne1066.MNTOPE66*1000,12,0) END) ||
rpad(nvl(ligne1066.ENGOPE66,' '),3,' ') ||
rpad(nvl(ligne1066.BAQOPE66,' '),6,' ') ||
rpad(nvl(ligne1066.CPTAGC66,' '),2,' ') ||
(CASE  WHEN (ligne1066.CPTNAT66 is null) THEN  '  ' ELSE lpad(ligne1066.CPTNAT66,2,0) END) ||
(CASE  WHEN (ligne1066.CPTORD66 is null) THEN  '     ' ELSE lpad(ligne1066.CPTORD66,5,0) END) ||
(CASE  WHEN (ligne1066.CPTCLE66 is null) THEN  ' ' ELSE TO_CHAR(ligne1066.CPTCLE66) END) ||
(CASE  WHEN (ligne1066.DATFLC66 is null) THEN  '      ' ELSE TO_CHAR(ligne1066.DATFLC66,'YYMMDD') END) ||
(CASE  WHEN (ligne1066.DATFLD66 is null) THEN  '      ' ELSE TO_CHAR(ligne1066.DATFLD66,'YYMMDD') END) ||
rpad(nvl(ligne1066.NOMCPT66,' '),30,' ') ||
rpad(nvl(ligne1066.AGYOPE66,' '),2,' ') ||
(CASE  WHEN (ligne1066.PTTOPE66 is null) THEN  '    ' ELSE lpad(ligne1066.PTTOPE66,4,0) END) ||
(CASE  WHEN (ligne1066.ECHOPE66 is null) THEN  '      ' ELSE TO_CHAR(ligne1066.ECHOPE66,'YYMMDD') END) ||
rpad(nvl(ligne1066.DSCOPE66,' '),30,' ') ||
(CASE  WHEN (ligne1066.DATREC66 is null) THEN  '      ' ELSE TO_CHAR(ligne1066.DATREC66,'YYMMDD') END) ||
(CASE  WHEN (ligne1066.PPLINT66 is null) THEN  ' ' ELSE TO_CHAR(ligne1066.PPLINT66) END) ||
(CASE  WHEN (ligne1066.ECHU66 is null) THEN  ' ' ELSE TO_CHAR(ligne1066.ECHU66) END) ||
(CASE  WHEN (ligne1066.PFCAGC66 is null) THEN  ' ' ELSE TO_CHAR(ligne1066.PFCAGC66) END) ||
rpad(nvl(ligne1066.AGHRACS66,' '),2,' ') ||
rpad(nvl(ligne1066.FILLER66,' '),1,' ') ||
(CASE  WHEN (ligne1066.ACCEFF66 is null) THEN  ' ' ELSE TO_CHAR(ligne1066.ACCEFF66) END) ||
(CASE  WHEN (ligne1066.RESEFF66 is null) THEN  ' ' ELSE TO_CHAR(ligne1066.RESEFF66) END) ||
(CASE  WHEN (ligne1066.DATRES66 is null) THEN  '      ' ELSE TO_CHAR(ligne1066.DATRES66,'YYMMDD') END) ||
rpad(nvl(ligne1066.ETAEFF66,' '),2,' ') ||
(CASE  WHEN (ligne1066.SANEFF66 is null) THEN  ' ' ELSE TO_CHAR(ligne1066.SANEFF66) END) ||
(CASE  WHEN (ligne1066.TAUMRC66 is null) THEN  '      ' ELSE lpad(ligne1066.TAUMRC66*10000,6,0) END) ||
(CASE  WHEN (ligne1066.TAUINT66 is null) THEN  '      ' ELSE lpad(ligne1066.TAUINT66*10000,6,0) END) ||
(CASE  WHEN (ligne1066.TAUTVA66 is null) THEN  '      ' ELSE lpad(ligne1066.TAUTVA66*10000,6,0) END) ||
(CASE  WHEN (ligne1066.TAUCPC66 is null) THEN  '     ' ELSE lpad(ligne1066.TAUCPC66*10000,5,0) END) ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR1066 INTO ligne1066;
  END LOOP;
  CLOSE CUR1066;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1071
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1071" AS

CURSOR CUR1071  IS SELECT * FROM FL1071;
ligne1071   FL1071%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1071';
  OPEN CUR1071 ;
  FETCH CUR1071 INTO  ligne1071;
  WHILE CUR1071 %FOUND LOOP
    INSERT INTO LIGNE_FL1071 (LIGNE1071) values (ligne1071.SU1071 ||
rpad(nvl(ligne1071.AGCNUM71,' '),2,' ') ||
rpad(nvl(ligne1071.SERNUM71,' '),1,' ') ||
(CASE  WHEN (ligne1071.ORDNUM71 is null) THEN  '       ' ELSE lpad(ligne1071.ORDNUM71,7,0) END) ||
(CASE  WHEN (ligne1071.MNTOPE71 is null) THEN  '            ' ELSE lpad(ligne1071.MNTOPE71*1000,12,0) END) ||
rpad(nvl(ligne1071.ENGOPE71,' '),3,' ') ||
rpad(nvl(ligne1071.CPTAGC71,' '),2,' ') ||
(CASE  WHEN (ligne1071.CPTNAT71 is null) THEN  '  ' ELSE lpad(ligne1071.CPTNAT71,2,0) END) ||
(CASE  WHEN (ligne1071.CPTORD71 is null) THEN  '     ' ELSE lpad(ligne1071.CPTORD71,5,0) END) ||
(CASE  WHEN (ligne1071.CPTCLE71 is null) THEN  ' ' ELSE TO_CHAR(ligne1071.CPTCLE71) END) ||
rpad(nvl(ligne1071.NOMCPT71,' '),24,' ') ||
(CASE  WHEN (ligne1071.DATREC71 is null) THEN  '      ' ELSE TO_CHAR(ligne1071.DATREC71,'YYMMDD') END) ||
(CASE  WHEN (ligne1071.ECHOPE71 is null) THEN  '      ' ELSE TO_CHAR(ligne1071.ECHOPE71,'YYMMDD') END) ||
(CASE  WHEN (ligne1071.DATCRE71 is null) THEN  '      ' ELSE TO_CHAR(ligne1071.DATCRE71,'YYMMDD') END) ||
(CASE  WHEN (ligne1071.PPLINT71 is null) THEN  ' ' ELSE TO_CHAR(ligne1071.PPLINT71) END) ||
rpad(nvl(ligne1071.MEGMEG71,' '),2,' ') ||
rpad(nvl(ligne1071.CODOPE71,' '),4,' ') ||
rpad(nvl(ligne1071.FILLER71,' '),35,' ') ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR1071 INTO ligne1071;
  END LOOP;
  CLOSE CUR1071;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1073
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1073" AS

CURSOR CUR1073  IS SELECT * FROM FL1073;
ligne1073   FL1073%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1073';
  OPEN CUR1073 ;
  FETCH CUR1073 INTO  ligne1073;
  WHILE CUR1073 %FOUND LOOP
    INSERT INTO LIGNE_FL1073 (LIGNE1073) values (ligne1073.SU1073 ||
rpad(nvl(ligne1073.AGCNUM73,' '),2,' ') ||
rpad(nvl(ligne1073.SERNUM73,' '),1,' ') ||
(CASE  WHEN (ligne1073.ORDNUM73 is null) THEN  '       ' ELSE lpad(ligne1073.ORDNUM73,7,0) END) ||
(CASE  WHEN (ligne1073.MNTOPE73 is null) THEN  '            ' ELSE lpad(ligne1073.MNTOPE73*1000,12,0) END) ||
rpad(nvl(ligne1073.ENGOPE73,' '),3,' ') ||
rpad(nvl(ligne1073.BAQOPE73,' '),6,' ') ||
rpad(nvl(ligne1073.CPTAGC73,' '),2,' ') ||
(CASE  WHEN (ligne1073.CPTNAT73 is null) THEN  '  ' ELSE lpad(ligne1073.CPTNAT73,2,0) END) ||
(CASE  WHEN (ligne1073.CPTORD73 is null) THEN  '     ' ELSE lpad(ligne1073.CPTORD73,5,0) END) ||
(CASE  WHEN (ligne1073.CPTCLE73 is null) THEN  ' ' ELSE TO_CHAR(ligne1073.CPTCLE73) END) ||
(CASE  WHEN (ligne1073.DATFLC73 is null) THEN  '      ' ELSE TO_CHAR(ligne1073.DATFLC73,'YYMMDD') END) ||
(CASE  WHEN (ligne1073.DATFLD73 is null) THEN  '      ' ELSE TO_CHAR(ligne1073.DATFLD73,'YYMMDD') END) ||
rpad(nvl(ligne1073.NOMCPT73,' '),30,' ') ||
rpad(nvl(ligne1073.AGYOPE73,' '),2,' ') ||
(CASE  WHEN (ligne1073.PTTOPE73 is null) THEN  '    ' ELSE lpad(ligne1073.PTTOPE73,4,0) END) ||
(CASE  WHEN (ligne1073.ECHOPE73 is null) THEN  '      ' ELSE TO_CHAR(ligne1073.ECHOPE73,'YYMMDD') END) ||
rpad(nvl(ligne1073.DSCOPE73,' '),30,' ') ||
(CASE  WHEN (ligne1073.DATDCP73 is null) THEN  '      ' ELSE TO_CHAR(ligne1073.DATDCP73,'YYMMDD') END) ||
(CASE  WHEN (ligne1073.BLKOPE73 is null) THEN  '      ' ELSE lpad(ligne1073.BLKOPE73,6,0) END) ||
(CASE  WHEN (ligne1073.ACCEFF73 is null) THEN  ' ' ELSE TO_CHAR(ligne1073.ACCEFF73) END) ||
(CASE  WHEN (ligne1073.RESEFF73 is null) THEN  ' ' ELSE TO_CHAR(ligne1073.RESEFF73) END) ||
(CASE  WHEN (ligne1073.DATRES73 is null) THEN  '      ' ELSE TO_CHAR(ligne1073.DATRES73,'YYMMDD') END) ||
rpad(nvl(ligne1073.ETAEFF73,' '),2,' ') ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR1073 INTO ligne1073;
  END LOOP;
  CLOSE CUR1073;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1090
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1090" AS

CURSOR CUR1090  IS SELECT * FROM FL1090;
ligne1090   FL1090%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1090';
  OPEN CUR1090 ;
  FETCH CUR1090 INTO  ligne1090;
  WHILE CUR1090 %FOUND LOOP
    INSERT INTO LIGNE_FL1090 (LIGNE1090) values (ligne1090.SU1090 ||
rpad(nvl(ligne1090.AGCNUM90,' '),2,' ') ||
rpad(nvl(ligne1090.SERNUM90,' '),1,' ') ||
(CASE  WHEN (ligne1090.ORDNUM90 is null) THEN  '       ' ELSE lpad(ligne1090.ORDNUM90,7,0) END) ||
(CASE  WHEN (ligne1090.MNTOPE90 is null) THEN  '            ' ELSE lpad(ligne1090.MNTOPE90*1000,12,0) END) ||
rpad(nvl(ligne1090.ENGOPE90,' '),3,' ') ||
rpad(nvl(ligne1090.BAQOPE90,' '),6,' ') ||
rpad(nvl(ligne1090.CPTAGC90,' '),2,' ') ||
(CASE  WHEN (ligne1090.CPTNAT90 is null) THEN  '  ' ELSE lpad(ligne1090.CPTNAT90,2,0) END) ||
(CASE  WHEN (ligne1090.CPTORD90 is null) THEN  '     ' ELSE lpad(ligne1090.CPTORD90,5,0) END) ||
(CASE  WHEN (ligne1090.CPTCLE90 is null) THEN  ' ' ELSE TO_CHAR(ligne1090.CPTCLE90) END) ||
(CASE  WHEN (ligne1090.DATFLC90 is null) THEN  '      ' ELSE TO_CHAR(ligne1090.DATFLC90,'YYMMDD') END) ||
(CASE  WHEN (ligne1090.DATFLD90 is null) THEN  '      ' ELSE TO_CHAR(ligne1090.DATFLD90,'YYMMDD') END) ||
rpad(nvl(ligne1090.NOMCPT90,' '),30,' ') ||
rpad(nvl(ligne1090.AGYOPE90,' '),2,' ') ||
(CASE  WHEN (ligne1090.PTTOPE90 is null) THEN  '    ' ELSE lpad(ligne1090.PTTOPE90,4,0) END) ||
(CASE  WHEN (ligne1090.ECHOPE90 is null) THEN  '      ' ELSE TO_CHAR(ligne1090.ECHOPE90,'YYMMDD') END) ||
rpad(nvl(ligne1090.DSCOPE90,' '),30,' ') ||
rpad(nvl(ligne1090.OPEREC90,' '),4,' ') ||
rpad(nvl(ligne1090.REFOPE90,' '),8,' ') ||
(CASE  WHEN (ligne1090.ACCEFF90 is null) THEN  ' ' ELSE TO_CHAR(ligne1090.ACCEFF90) END) ||
(CASE  WHEN (ligne1090.RESEFF90 is null) THEN  ' ' ELSE TO_CHAR(ligne1090.RESEFF90) END) ||
(CASE  WHEN (ligne1090.DATREC90 is null) THEN  '      ' ELSE TO_CHAR(ligne1090.DATREC90,'YYMMDD') END) ||
rpad(nvl(ligne1090.ETAEFF90,' '),2,' ') ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR1090 INTO ligne1090;
  END LOOP;
  CLOSE CUR1090;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT1091
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT1091" AS

CURSOR CUR1091  IS SELECT * FROM FL1091;
ligne1091   FL1091%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL1091';
  OPEN CUR1091 ;
  FETCH CUR1091 INTO  ligne1091;
  WHILE CUR1091 %FOUND LOOP
    INSERT INTO LIGNE_FL1091 (LIGNE1091) values (ligne1091.SU1091 ||
rpad(nvl(ligne1091.AGCNUM91,' '),2,' ') ||
rpad(nvl(ligne1091.SERNUM91,' '),1,' ') ||
(CASE  WHEN (ligne1091.ORDNUM91 is null) THEN  '       ' ELSE lpad(ligne1091.ORDNUM91,7,0) END) ||
(CASE  WHEN (ligne1091.MNTOPE91 is null) THEN  '            ' ELSE lpad(ligne1091.MNTOPE91*1000,12,0) END) ||
rpad(nvl(ligne1091.ENGOPE91,' '),3,' ') ||
rpad(nvl(ligne1091.BAQOPE91,' '),6,' ') ||
rpad(nvl(ligne1091.CPTAGC91,' '),2,' ') ||
(CASE  WHEN (ligne1091.CPTNAT91 is null) THEN  '  ' ELSE lpad(ligne1091.CPTNAT91,2,0) END) ||
(CASE  WHEN (ligne1091.CPTORD91 is null) THEN  '     ' ELSE lpad(ligne1091.CPTORD91,5,0) END) ||
(CASE  WHEN (ligne1091.CPTCLE91 is null) THEN  ' ' ELSE TO_CHAR(ligne1091.CPTCLE91) END) ||
(CASE  WHEN (ligne1091.DATFLC91 is null) THEN  '      ' ELSE TO_CHAR(ligne1091.DATFLC91,'YYMMDD') END) ||
(CASE  WHEN (ligne1091.DATFLD91 is null) THEN  '      ' ELSE TO_CHAR(ligne1091.DATFLD91,'YYMMDD') END) ||
rpad(nvl(ligne1091.NOMCPT91,' '),30,' ') ||
rpad(nvl(ligne1091.AGYOPE91,' '),2,' ') ||
(CASE  WHEN (ligne1091.PTTOPE91 is null) THEN  '    ' ELSE lpad(ligne1091.PTTOPE91,4,0) END) ||
(CASE  WHEN (ligne1091.ECHOPE91 is null) THEN  '      ' ELSE TO_CHAR(ligne1091.ECHOPE91,'YYMMDD') END) ||
rpad(nvl(ligne1091.DSCOPE91,' '),30,' ') ||
rpad(nvl(ligne1091.OPEREC91,' '),4,' ') ||
rpad(nvl(ligne1091.REFOPE91,' '),8,' ') ||
(CASE  WHEN (ligne1091.ACCEFF91 is null) THEN  ' ' ELSE TO_CHAR(ligne1091.ACCEFF91) END) ||
(CASE  WHEN (ligne1091.RESEFF91 is null) THEN  ' ' ELSE TO_CHAR(ligne1091.RESEFF91) END) ||
(CASE  WHEN (ligne1091.DATREC91 is null) THEN  '      ' ELSE TO_CHAR(ligne1091.DATREC91,'YYMMDD') END) ||
rpad(nvl(ligne1091.ETAEFF91,' '),2,' ') ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR1091 INTO ligne1091;
  END LOOP;
  CLOSE CUR1091;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT2910M
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT2910M" AS

CURSOR CUR2910  IS SELECT * FROM ME2910 order by SU2910M, CODAGC29101M, CODNAT2910M, ORDCPTM, KLECPTM;
ligne2910   ME2910%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_ME2910';
  OPEN CUR2910 ;
  FETCH CUR2910 INTO  ligne2910;
  WHILE CUR2910 %FOUND LOOP
    INSERT INTO LIGNE_ME2910 (LIGNE2910M) values (ligne2910.SU2910M ||
rpad(nvl(ligne2910.CODAGC29101M,' '),2,' ') ||
(CASE  WHEN (ligne2910.CODNAT2910M is null) THEN  '  ' ELSE lpad(ligne2910.CODNAT2910M,2,0) END) ||
(CASE  WHEN (ligne2910.ORDCPTM is null) THEN  '     ' ELSE lpad(ligne2910.ORDCPTM,5,0) END) ||
(CASE  WHEN (ligne2910.KLECPTM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.KLECPTM) END) ||
rpad(nvl(ligne2910.DVSCPTM,' '),3,' ') ||
(CASE  WHEN (ligne2910.CODACT2910M is null) THEN  '    ' ELSE lpad(ligne2910.CODACT2910M,4,0) END) ||
(CASE  WHEN (ligne2910.CGLCPTM is null) THEN  '      ' ELSE TO_CHAR(ligne2910.CGLCPTM,'YYMMDD') END) ||
(CASE  WHEN (ligne2910.CODPTT2910AM is null) THEN  '    ' ELSE lpad(ligne2910.CODPTT2910AM,4,0) END) ||
rpad(nvl(ligne2910.CODPAY2910M,' '),2,' ') ||
(CASE  WHEN (ligne2910.CATCLT2910M is null) THEN  ' ' ELSE TO_CHAR(ligne2910.CATCLT2910M) END) ||
(CASE  WHEN (ligne2910.CODDOC2910M is null) THEN  ' ' ELSE TO_CHAR(ligne2910.CODDOC2910M) END) ||
rpad(nvl(ligne2910.ORDDOC2910M,' '),8,' ') ||
(CASE  WHEN (ligne2910.DATLIVM is null) THEN  '      ' ELSE TO_CHAR(ligne2910.DATLIVM,'YYMMDD') END) ||
rpad(nvl(ligne2910.LIELIVM,' '),10,' ') ||
(CASE  WHEN (ligne2910.CODPTT2910BM is null) THEN  '    ' ELSE lpad(ligne2910.CODPTT2910BM,4,0) END) ||
(CASE  WHEN (ligne2910.NUMANLM is null) THEN  '      ' ELSE lpad(ligne2910.NUMANLM,6,0) END) ||
rpad(nvl(ligne2910.NOMCPTM,' '),30,' ') ||
rpad(nvl(ligne2910.ADRCPTM,' '),46,' ') ||
(CASE  WHEN (ligne2910.EMPOUVM is null) THEN  '     ' ELSE lpad(ligne2910.EMPOUVM,5,0) END) ||
(CASE  WHEN (ligne2910.DNECPTM is null) THEN  '        ' ELSE lpad(ligne2910.DNECPTM,8,0) END) ||
rpad(nvl(ligne2910.ASSCPTM,' '),1,' ') ||
(CASE  WHEN (ligne2910.SRVCPTM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.SRVCPTM) END) ||
'            ' ||
rpad(nvl(ligne2910.SLCCPT1M,' '),12,' ') ||
(CASE  WHEN (ligne2910.CODUTLM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.CODUTLM) END) ||
(CASE  WHEN (ligne2910.PRFAM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFAM) END) ||
(CASE  WHEN (ligne2910.PRFBM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFBM) END) ||
(CASE  WHEN (ligne2910.PRFCM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFCM) END) ||
(CASE  WHEN (ligne2910.PRFDM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFDM) END) ||
(CASE  WHEN (ligne2910.PRFEM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFEM) END) ||
(CASE  WHEN (ligne2910.PRFFM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFFM) END) ||
(CASE  WHEN (ligne2910.PRFGM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFGM) END) ||
(CASE  WHEN (ligne2910.PRFHM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFHM) END) ||
(CASE  WHEN (ligne2910.PRFIM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFIM) END) ||
(CASE  WHEN (ligne2910.PRFJM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFJM) END) ||
(CASE  WHEN (ligne2910.PRFKM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFKM) END) ||
(CASE  WHEN (ligne2910.PRFLM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFLM) END) ||
(CASE  WHEN (ligne2910.PRFMM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFMM) END) ||
(CASE  WHEN (ligne2910.PRFNM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFNM) END) ||
(CASE  WHEN (ligne2910.DBICPTM is null) THEN  '  ' ELSE lpad(ligne2910.DBICPTM,2,0) END) ||
rpad(nvl(ligne2910.BIDCPTM,' '),1,' ') ||
(CASE  WHEN (ligne2910.NBCDVCM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.NBCDVCM) END) ||
(CASE  WHEN (ligne2910.PRGSECM is null) THEN  '  ' ELSE lpad(ligne2910.PRGSECM,2,0) END) ||
(CASE  WHEN (ligne2910.DATSECM is null) THEN  '      ' ELSE TO_CHAR(ligne2910.DATSECM,'YYMMDD') END) ||
(CASE  WHEN (ligne2910.INTCHQM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.INTCHQM) END) ||
(CASE  WHEN (ligne2910.OUVCPTM is null) THEN  '      ' ELSE TO_CHAR(ligne2910.OUVCPTM,'YYMMDD') END) ||
(CASE  WHEN (ligne2910.CLOCPTM is null) THEN  '      ' ELSE TO_CHAR(ligne2910.CLOCPTM,'YYMMDD') END) ||
rpad(nvl(ligne2910.SEXCPTM,' '),1,' ') ||
(CASE  WHEN (ligne2910.NAICPTM is null) THEN  '      ' ELSE TO_CHAR(ligne2910.NAICPTM,'YYMMDD') END) ||
(CASE  WHEN (ligne2910.SARCPTM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.SARCPTM) END) ||
(CASE  WHEN (ligne2910.JNTCPTM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.JNTCPTM) END) ||
rpad(nvl(ligne2910.FRMCPTM,' '),4,' ') ||
(CASE  WHEN (ligne2910.INDCHOM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.INDCHOM) END) ||
(CASE  WHEN (ligne2910.INDEFOM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.INDEFOM) END) ||
(CASE  WHEN (ligne2910.MV1CREM is null) THEN  '            ' ELSE lpad(ligne2910.MV1CREM*1000,12,0) END) ||
(CASE  WHEN (ligne2910.ENCSGNM is null) THEN  '            ' ELSE lpad(ligne2910.ENCSGNM*1000,12,0) END) ||
(CASE  WHEN (ligne2910.COTSGNM is null) THEN  '            ' ELSE lpad(ligne2910.COTSGNM*1000,12,0) END) ||
(CASE  WHEN (ligne2910.COTCRCM is null) THEN  '            ' ELSE lpad(ligne2910.COTCRCM*1000,12,0) END) ||
(CASE  WHEN (ligne2910.NBRIMCM is null) THEN  '   ' ELSE lpad(ligne2910.NBRIMCM,3,0) END) ||
(CASE  WHEN (ligne2910.MTFOUVM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.MTFOUVM) END) ||
(CASE  WHEN (ligne2910.CODCLOM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.CODCLOM) END) ||
(CASE  WHEN (ligne2910.NIVCPTM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.NIVCPTM) END) ||
(CASE  WHEN (ligne2910.MTFCLOM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.MTFCLOM) END) ||
(CASE  WHEN (ligne2910.FONCPTM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.FONCPTM) END) ||
(CASE  WHEN (ligne2910.INDTELM is null) THEN  '  ' ELSE lpad(ligne2910.INDTELM,2,0) END) ||
(CASE  WHEN (ligne2910.TELCPTM is null) THEN  '      ' ELSE lpad(ligne2910.TELCPTM,6,0) END) ||
(CASE  WHEN (ligne2910.NBRIMFM is null) THEN  '   ' ELSE lpad(ligne2910.NBRIMFM,3,0) END) ||
(CASE  WHEN (ligne2910.NBRMDBM is null) THEN  '    ' ELSE lpad(ligne2910.NBRMDBM,4,0) END) ||
(CASE  WHEN (ligne2910.NBRMCRM is null) THEN  '    ' ELSE lpad(ligne2910.NBRMCRM,4,0) END) ||
rpad(nvl(ligne2910.INVADRM,' '),1,' ') ||
rpad(nvl(ligne2910.AGOCPTM,' '),1,' ') ||
(CASE  WHEN (ligne2910.SLDAMYM is null) THEN  '            ' ELSE lpad(ligne2910.SLDAMYM*1000,12,0) END) ||
(CASE  WHEN (ligne2910.UTLCPTM is null) THEN  '     ' ELSE lpad(ligne2910.UTLCPTM*1000,5,0) END) ||
(CASE  WHEN (ligne2910.BLKCPTM is null) THEN  '            ' ELSE lpad(ligne2910.BLKCPTM*1000,12,0) END) ||
rpad(nvl(ligne2910.SLDMMYM,' '),20,' ') ||
(CASE  WHEN (ligne2910.DATLIV8M is null) THEN  '        ' ELSE TO_CHAR(ligne2910.DATLIV8M,'YYYYMMDD') END) ||
(CASE  WHEN (ligne2910.NAICPT8M is null) THEN  '        ' ELSE TO_CHAR(ligne2910.NAICPT8M,'YYYYMMDD') END) ||
(CASE  WHEN (ligne2910.MVDMOIM is null) THEN  '            ' ELSE lpad(ligne2910.MVDMOIM*1000,12,0) END) ||
(CASE  WHEN (ligne2910.MVCANNM is null) THEN  '             ' ELSE lpad(ligne2910.MVDMOIM*1000,13,0) END) ||
rpad(nvl(ligne2910.CHQCPTM,' '),19,' ') ||
rpad(nvl(ligne2910.INDRCSM,' '),1,' ') ||
(CASE  WHEN (ligne2910.INFRCSM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.INFRCSM) END) ||
rpad(nvl(ligne2910.NUMRCSM,' '),6,' ') ||
rpad(nvl(ligne2910.ANNRCSM,' '),4,' ') ||
(CASE  WHEN (ligne2910.CCACPTM is null) THEN  '     ' ELSE lpad(ligne2910.CCACPTM,5,0) END) ||
(CASE  WHEN (ligne2910.NUMBCTM is null) THEN  '       ' ELSE lpad(ligne2910.NUMBCTM,7,0) END) ||
(CASE  WHEN (ligne2910.DATBCTM is null) THEN  '      ' ELSE TO_CHAR(ligne2910.DATBCTM,'YYMMDD') END) ||
(CASE  WHEN (ligne2910.PRFPM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFPM) END) ||
(CASE  WHEN (ligne2910.PRFQM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFQM) END) ||
(CASE  WHEN (ligne2910.PRFJJM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PRFJJM) END) ||
(CASE  WHEN (ligne2910.OPTPELM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.OPTPELM) END) ||
(CASE  WHEN (ligne2910.PERPELM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.PERPELM) END) ||
(CASE  WHEN (ligne2910.DURPELM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.DURPELM) END) ||
(CASE  WHEN (ligne2910.CDMSGTM is null) THEN  '   ' ELSE lpad(ligne2910.CDMSGTM,3,0) END) ||
rpad(nvl(ligne2910.QLTGRNM,' '),1,' ') ||
(CASE  WHEN (ligne2910.OPTCHQM is null) THEN  ' ' ELSE TO_CHAR(ligne2910.OPTCHQM) END) ||
rpad(nvl(ligne2910.EFFCPTM,' '),1,' ') ||
(CASE  WHEN (ligne2910.MVCMOIM is null) THEN  '            ' ELSE lpad(ligne2910.MVCMOIM*1000,12,0) END) ||
rpad(nvl(ligne2910.FILM,' '),3,' ') ||
(CASE  WHEN (ligne2910.USROPEM is null) THEN  '     ' ELSE lpad(ligne2910.USROPEM,5,0) END) ||
(CASE  WHEN (ligne2910.OPEDATM is null) THEN  '      ' ELSE TO_CHAR(ligne2910.OPEDATM,'YYMMDD') END) ||
(CASE  WHEN (ligne2910.TIMOPEM is null) THEN  '     ' ELSE lpad(ligne2910.TIMOPEM,5,0) END) ||
rpad(nvl(ligne2910.CODOPE29MM,' '),4,' ') ||
rpad(nvl(ligne2910.FILCMPM,' '),1,' ') ||
rpad(nvl(ligne2910.INFCMPM,' '),1,' ')
);
    FETCH CUR2910 INTO ligne2910;
  END LOOP;
  CLOSE CUR2910;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT2999
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT2999" AS

CURSOR CUR2999  IS SELECT * FROM FL2999;
ligne2999   FL2999%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL2999';
  OPEN CUR2999 ;
  FETCH CUR2999 INTO  ligne2999;
  WHILE CUR2999 %FOUND LOOP
    INSERT INTO LIGNE_FL2999 (LIGNE2999) values (ligne2999.SU2999 ||
rpad(nvl(ligne2999.CODCPT1,' '),10,' ') ||
(CASE  WHEN (ligne2999.SLD1 is null) THEN  '            ' ELSE lpad(ligne2999.SLD1*1000,12,0) END) ||
rpad(nvl(ligne2999.CODCPT2,' '),10,' ') ||
(CASE  WHEN (ligne2999.SLD2 is null) THEN  '            ' ELSE lpad(ligne2999.SLD2*1000,12,0) END) ||
rpad(nvl(ligne2999.CODCPT3,' '),10,' ') ||
(CASE  WHEN (ligne2999.SLD3 is null) THEN  '            ' ELSE lpad(ligne2999.SLD3*1000,12,0) END) ||
rpad(nvl(ligne2999.CODCPT4,' '),10,' ') ||
(CASE  WHEN (ligne2999.SLD4 is null) THEN  '            ' ELSE lpad(ligne2999.SLD4*1000,12,0) END) ||
rpad(nvl(ligne2999.CODCPT5,' '),10,' ') ||
(CASE  WHEN (ligne2999.SLD5 is null) THEN  '            ' ELSE lpad(ligne2999.SLD5*1000,12,0) END) ||
(CASE  WHEN (ligne2999.MM2999 is null) THEN  '  ' ELSE lpad(ligne2999.MM2999,2,0) END) ||
(CASE  WHEN (ligne2999.JJ2999 is null) THEN  '  ' ELSE lpad(ligne2999.JJ2999,2,0) END) ||
(CASE  WHEN (ligne2999.CTR2999 is null) THEN  '     ' ELSE lpad(ligne2999.CTR2999,2,0) END)
);
    FETCH CUR2999 INTO ligne2999;
  END LOOP;
  CLOSE CUR2999;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT3097
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT3097" AS

CURSOR CUR3097  IS SELECT * FROM FL3097;
ligne3097   FL3097%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL3097';
  OPEN CUR3097 ;
  FETCH CUR3097 INTO  ligne3097;
  WHILE CUR3097 %FOUND LOOP
    INSERT INTO LIGNE_FL3097 (LIGNE3097) values (
ligne3097.SU3097 ||
(CASE  WHEN (ligne3097.DAT3097 is null) THEN  '      ' ELSE TO_CHAR(ligne3097.DAT3097,'YYMMDD') END) ||
rpad(nvl(ligne3097.AGCCPT97,' '),2,' ') ||
(CASE  WHEN (ligne3097.NATCPT97 is null) THEN  '  ' ELSE lpad(ligne3097.NATCPT97,2,0) END) ||
(CASE  WHEN (ligne3097.ORDCPT97 is null) THEN  '     ' ELSE lpad(ligne3097.ORDCPT97,5,0) END) ||
(CASE  WHEN (ligne3097.KLECPT97 is null) THEN  ' ' ELSE TO_CHAR(ligne3097.KLECPT97) END) ||
(CASE  WHEN (ligne3097.SLD3097 is null) THEN  '            ' ELSE (CASE  WHEN (ligne3097.SLD3097 <0) THEN 
('-' || lpad(ligne3097.SLD3097*(-1000),11,0)) ELSE lpad(ligne3097.SLD3097*1000,12,0) END) END) ||
rpad(nvl(ligne3097.CODOPE97,' '),4,' ') ||
rpad(nvl(ligne3097.FILLER97,' '),23,' ')
);
    FETCH CUR3097 INTO ligne3097;
  END LOOP;
  CLOSE CUR3097;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT3098
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT3098" AS

CURSOR CUR3098  IS SELECT * FROM FL3098;
ligne3098   FL3098%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL3098';
  OPEN CUR3098 ;
  FETCH CUR3098 INTO  ligne3098;
  WHILE CUR3098 %FOUND LOOP
    INSERT INTO LIGNE_FL3098 (LIGNE3098) values (ligne3098.SU3098 ||
(CASE  WHEN (ligne3098.DATOPE98 is null) THEN  '      ' ELSE TO_CHAR(ligne3098.DATOPE98,'YYMMDD') END) ||
rpad(nvl(ligne3098.CODOPE98,' '),4,' ') ||
rpad(nvl(ligne3098.AGCNUM98,' '),2,' ') ||
rpad(nvl(ligne3098.SERNUM98,' '),1,' ') ||
(CASE  WHEN (ligne3098.ORDNUM98 is null) THEN  '       ' ELSE lpad(ligne3098.ORDNUM98,7,0) END) ||
(CASE  WHEN (ligne3098.NUMORD98 is null) THEN  ' ' ELSE TO_CHAR(ligne3098.NUMORD98) END) ||
rpad(nvl(ligne3098.FILLER98,' '),2,' ') ||
rpad(nvl(ligne3098.AGCCPT98,' '),2,' ') ||
(CASE  WHEN (ligne3098.NATCPT98 is null) THEN  '  ' ELSE lpad(ligne3098.NATCPT98,2,0) END) ||
(CASE  WHEN (ligne3098.ORDCPT98 is null) THEN  '     ' ELSE lpad(ligne3098.ORDCPT98,5,0) END) ||
(CASE  WHEN (ligne3098.KLECPT98 is null) THEN  ' ' ELSE TO_CHAR(ligne3098.KLECPT98) END) ||
(CASE  WHEN (ligne3098.DATOPE8 is null) THEN  '      ' ELSE TO_CHAR(ligne3098.DATOPE8,'YYMMDD') END) ||
rpad(nvl(ligne3098.ABROPE98,' '),4,' ') ||
(CASE  WHEN (ligne3098.MNTOPE98 is null) THEN  '            ' ELSE (CASE  WHEN (ligne3098.SMNTOPE98='-') THEN 
('-' || lpad(ligne3098.MNTOPE98*1000,11,0)) ELSE lpad(ligne3098.MNTOPE98*1000,12,0) END) END)
);
    FETCH CUR3098 INTO ligne3098;
  END LOOP;
  CLOSE CUR3098;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT3099
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT3099" AS

CURSOR CUR3099  IS SELECT * FROM FL3099;
ligne3099   FL3099%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL3099';
  OPEN CUR3099 ;
  FETCH CUR3099 INTO  ligne3099;
  WHILE CUR3099 %FOUND LOOP
    INSERT INTO LIGNE_FL3099 (LIGNE3099) values (ligne3099.SU3099 ||
(CASE  WHEN (ligne3099.DATOPE99 is null) THEN  '      ' ELSE TO_CHAR(ligne3099.DATOPE99,'YYMMDD') END) ||
rpad(nvl(ligne3099.CODOPE99,' '),4,' ') ||
rpad(nvl(ligne3099.AGCNUM99,' '),2,' ') ||
rpad(nvl(ligne3099.SERNUM99,' '),1,' ') ||
(CASE  WHEN (ligne3099.ORDNUM99 is null) THEN  '       ' ELSE lpad(ligne3099.ORDNUM99,7,0) END) ||
(CASE  WHEN (ligne3099.NUMORD99 is null) THEN  ' ' ELSE TO_CHAR(ligne3099.NUMORD99) END) ||
rpad(nvl(ligne3099.FILLER99,' '),2,' ') ||
rpad(nvl(ligne3099.AGCCPT99,' '),2,' ') ||
(CASE  WHEN (ligne3099.NATCPT99 is null) THEN  '  ' ELSE lpad(ligne3099.NATCPT99,2,0) END) ||
(CASE  WHEN (ligne3099.ORDCPT99 is null) THEN  '     ' ELSE lpad(ligne3099.ORDCPT99,5,0) END) ||
(CASE  WHEN (ligne3099.KLECPT99 is null) THEN  ' ' ELSE TO_CHAR(ligne3099.KLECPT99) END) ||
(CASE  WHEN (ligne3099.DATOPE8 is null) THEN  '      ' ELSE TO_CHAR(ligne3099.DATOPE8,'YYMMDD') END) ||
rpad(nvl(ligne3099.ABROPE99,' '),4,' ') ||
(CASE  WHEN (ligne3099.MNTOPE99 is null) THEN  '            ' ELSE (CASE  WHEN (ligne3099.SMNTOPE99='-') THEN 
('-' || lpad(ligne3099.MNTOPE99*1000,11,0)) ELSE lpad(ligne3099.MNTOPE99*1000,12,0) END) END) ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR3099 INTO ligne3099;
  END LOOP;
  CLOSE CUR3099;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT3195
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT3195" AS

CURSOR CUR3195  IS SELECT * FROM FL3195;
ligne3195   FL3195%ROWTYPE;
EXT number(1);
JCOMPTABLE date;
BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL3195';
  OPEN CUR3195 ;
  FETCH CUR3195 INTO  ligne3195;
  WHILE CUR3195 %FOUND LOOP
    INSERT INTO LIGNE_FL3195 (LIGNE3195) values (ligne3195.SU3195 ||
rpad(nvl(ligne3195.AGCNUM95,' '),2,' ') ||
rpad(nvl(ligne3195.SERNUM95,' '),1,' ') ||
(CASE  WHEN (ligne3195.ORDNUM95 is null) THEN  '       ' ELSE lpad(ligne3195.ORDNUM95,7,0) END) ||
(CASE  WHEN (ligne3195.MNTOPE95 is null) THEN  '            ' ELSE lpad(ligne3195.MNTOPE95*1000,12,0) END) ||
rpad(nvl(ligne3195.NATOPE95,' '),3,' ') ||
(CASE  WHEN (ligne3195.DATMEG95 is null) THEN  '      ' ELSE TO_CHAR(ligne3195.DATMEG95,'YYMMDD') END) ||
rpad(nvl(ligne3195.AGCEMT95,' '),2,' ') ||
(CASE  WHEN (ligne3195.DATOPE95 is null) THEN  '      ' ELSE TO_CHAR(ligne3195.DATOPE95,'YYMMDD') END) ||
rpad(nvl(ligne3195.AGXOPE95,' '),2,' ') ||
(CASE  WHEN (ligne3195.NAXOPE95 is null) THEN  '  ' ELSE lpad(ligne3195.NAXOPE95,2,0) END) ||
(CASE  WHEN (ligne3195.ORXOPE95 is null) THEN  '     ' ELSE lpad(ligne3195.ORXOPE95,5,0) END) ||
rpad(nvl(ligne3195.KLXOPE95,' '),1,' ') ||
rpad(nvl(ligne3195.DSCOPE95,' '),30,' ') ||
rpad(nvl(ligne3195.CODOPE95,' '),4,' ') ||
rpad(nvl(ligne3195.REFBAS95,' '),10,' ') ||
rpad(nvl(ligne3195.FIL3195,' '),6,' ') ||
'93' || TO_CHAR(JCOMPTABLE,'YYMMDD')
);
    FETCH CUR3195 INTO ligne3195;
  END LOOP;
  CLOSE CUR3195;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT4002
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT4002" AS

CURSOR CUR4002  IS SELECT * FROM LIGNE_FL4002;
ligne4002txt   LIGNE_FL4002%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE FL4002';
  OPEN CUR4002 ;
  FETCH CUR4002 INTO  ligne4002txt;
  WHILE CUR4002 %FOUND LOOP
    INSERT INTO FL4002
    (SU4003,CODAGC4003,AGCMEG4003,DATMEG4003,CODOPE4003,AGCNUM4003,SERNUM4003,ORDNUM4003,CODDV14003,CODDV24003,
    DVSOPE4003,AGXOPE4003,NAXOPE4003,ORXOPE4003,KLXOPE4003,MNTDV14003,MNTDV24003,MNTOPE4003,BAQOPE4003,ETASOR4003,
    OPEMEG4003,AGYOPE4003,NAYOPE4003,ORYOPE4003,KLYOPE4003,ANSAGC4003,ANSSER4003,ANSORD4003,INSMEG4003,DSCOPE4003,
    USROPE4003,FILLER4003,DATVAL4003,DATOPE4003,NATOPE4003,TYPOPE4003,MEGINF4003,ABR4003,IND14003,IND24003,
    COM4003,TPS4003,INDINS,REJET,BIDON4003)
    values ((CASE  WHEN (substr(ligne4002txt.LIGNE4002,1,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,1,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,2,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,2,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,4,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,4,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,6,6)='      ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,10,2) || 
            '/' || substr(ligne4002txt.LIGNE4002,8,2) || '/' || substr(ligne4002txt.LIGNE4002,6,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,12,4)='    ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,12,4) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,16,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,16,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,18,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,18,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,19,7)='       ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,19,7) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,26,3)='   ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,26,3) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,29,3)='   ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,29,3) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,32,3)='   ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,32,3) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,35,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,35,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,37,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,37,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,39,5)='     ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,39,5) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,40,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,40,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,45,12)='            ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,45,12)/1000 END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,57,12)='            ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,57,12)/1000 END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,69,12)='            ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,69,12)/1000 END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,81,6)='      ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,81,6) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,87,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,87,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,89,4)='    ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,89,4) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,93,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,93,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,95,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,95,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,97,5)='     ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,97,5) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,102,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,102,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,103,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,103,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,105,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,105,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,106,7)='       ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,106,7) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,113,3)='   ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,113,3) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,116,30)='                              ') THEN  null ELSE 
            substr(ligne4002txt.LIGNE4002,116,30) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,146,5)='     ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,146,5) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,151,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,151,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,152,6)='      ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,156,2) || '/' ||
            substr(ligne4002txt.LIGNE4002,154,2) || '/' || substr(ligne4002txt.LIGNE4002,152,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,158,6)='      ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,162,2) || '/' || 
            substr(ligne4002txt.LIGNE4002,160,2) || '/' || substr(ligne4002txt.LIGNE4002,158,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,164,2)='  ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,164,2) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,166,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,166,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,167,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,167,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,168,4)='    ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,168,4) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,172,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,172,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,173,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,173,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,174,12)='            ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,174,12)/1000 END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,186,12)='            ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,186,12)/1000 END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,198,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,198,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,199,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,199,1) END),
            (CASE  WHEN (substr(ligne4002txt.LIGNE4002,200,1)=' ') THEN  null ELSE substr(ligne4002txt.LIGNE4002,200,1) END));
    FETCH CUR4002 INTO ligne4002txt;
  END LOOP;
  CLOSE CUR4002;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure FORMAT4003
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "FORMAT4003" AS

CURSOR CUR4003  IS SELECT * FROM FL4003;
ligne4003   FL4003%ROWTYPE;
EXT number(1);
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE LIGNE_FL4003';
  OPEN CUR4003 ;
  FETCH CUR4003 INTO  ligne4003;
  WHILE CUR4003 %FOUND LOOP
    INSERT INTO LIGNE_FL4003 (LIGNE4003) values (ligne4003.SU4003 ||
rpad(nvl(ligne4003.CODAGC4003,' '),2,' ') ||
rpad(nvl(ligne4003.AGCMEG4003,' '),2,' ') ||
(CASE  WHEN (ligne4003.DATMEG4003 is null) THEN  '      ' ELSE TO_CHAR(ligne4003.DATMEG4003,'YYMMDD') END) ||
rpad(nvl(ligne4003.CODOPE4003,' '),4,' ') ||
rpad(nvl(ligne4003.AGCNUM4003,' '),2,' ') ||
rpad(nvl(ligne4003.SERNUM4003,' '),1,' ') ||
(CASE  WHEN (ligne4003.ORDNUM4003 is null) THEN  '       ' ELSE lpad(ligne4003.ORDNUM4003,7,0) END) ||
rpad(nvl(ligne4003.CODDV14003,' '),3,' ') ||
rpad(nvl(ligne4003.CODDV24003,' '),3,' ') ||
rpad(nvl(ligne4003.DVSOPE4003,' '),3,' ')||
rpad(nvl(ligne4003.AGXOPE4003,' '),2,' ') ||
(CASE  WHEN (ligne4003.NAXOPE4003 is null) THEN  '  ' ELSE lpad(ligne4003.NAXOPE4003,2,0) END) ||
(CASE  WHEN (ligne4003.ORXOPE4003 is null) THEN  '     ' ELSE lpad(ligne4003.ORXOPE4003,5,0) END) ||
rpad(nvl(ligne4003.KLXOPE4003,' '),1,' ') ||
(CASE  WHEN (ligne4003.MNTDV14003 is null) THEN  '            ' ELSE lpad(ligne4003.MNTDV14003*1000,12,0) END) ||
(CASE  WHEN (ligne4003.MNTDV24003 is null) THEN  '            ' ELSE lpad(ligne4003.MNTDV24003*1000,12,0) END) ||
(CASE  WHEN (ligne4003.MNTOPE4003 is null) THEN  '            ' ELSE lpad(ligne4003.MNTOPE4003*1000,12,0) END) ||
rpad(nvl(ligne4003.BAQOPE4003,' '),6,' ') ||
(CASE  WHEN (ligne4003.ETASOR4003 is null) THEN  '  ' ELSE lpad(ligne4003.ETASOR4003,2,0) END) ||
rpad(nvl(ligne4003.OPEMEG4003,' '),4,' ') ||
rpad(nvl(ligne4003.AGYOPE4003,' '),2,' ') ||
(CASE  WHEN (ligne4003.NAYOPE4003 is null) THEN  '  ' ELSE lpad(ligne4003.NAYOPE4003,2,0) END) ||
(CASE  WHEN (ligne4003.ORYOPE4003 is null) THEN  '     ' ELSE lpad(ligne4003.ORYOPE4003,5,0) END) ||
rpad(nvl(ligne4003.KLYOPE4003,' '),1,' ') ||
rpad(nvl(ligne4003.ANSAGC4003,' '),2,' ') ||
rpad(nvl(ligne4003.ANSSER4003,' '),1,' ') ||
(CASE  WHEN (ligne4003.ANSORD4003 is null) THEN  '       ' ELSE lpad(ligne4003.ANSORD4003,7,0) END) ||
rpad(nvl(ligne4003.INSMEG4003,' '),3,' ') ||
rpad(nvl(ligne4003.DSCOPE4003,' '),30,' ') ||
(CASE  WHEN (ligne4003.USROPE4003 is null) THEN  '     ' ELSE lpad(ligne4003.USROPE4003,5,0) END) ||
rpad(nvl(ligne4003.FILLER4003,' '),1,' ') ||
(CASE  WHEN (ligne4003.DATVAL4003 is null) THEN  '      ' ELSE TO_CHAR(ligne4003.DATVAL4003,'YYMMDD') END) ||
(CASE  WHEN (ligne4003.DATOPE4003 is null) THEN  '      ' ELSE TO_CHAR(ligne4003.DATOPE4003,'YYMMDD') END) ||
(CASE  WHEN (ligne4003.NATOPE4003 is null) THEN  '  ' ELSE lpad(ligne4003.NATOPE4003,2,0) END) ||
(CASE  WHEN (ligne4003.TYPOPE4003 is null) THEN  ' ' ELSE TO_CHAR(ligne4003.TYPOPE4003) END) ||
rpad(nvl(ligne4003.MEGINF4003,' '),1,' ') ||
rpad(nvl(ligne4003.ABR4003,' '),4,' ') ||
(CASE  WHEN (ligne4003.IND14003 is null) THEN  ' ' ELSE TO_CHAR(ligne4003.IND14003) END) ||
(CASE  WHEN (ligne4003.IND24003 is null) THEN  ' ' ELSE TO_CHAR(ligne4003.IND24003) END) ||
(CASE  WHEN (ligne4003.COM4003 is null) THEN  '            ' ELSE lpad(ligne4003.COM4003*1000,12,0) END) ||
(CASE  WHEN (ligne4003.TPS4003 is null) THEN  '            ' ELSE lpad(ligne4003.TPS4003*1000,12,0) END) ||
(CASE  WHEN (ligne4003.INDINS is null) THEN  ' ' ELSE TO_CHAR(ligne4003.INDINS) END) ||
rpad(nvl(ligne4003.REJET,' '),1,' ') ||
rpad(nvl(ligne4003.BIDON4003,' '),1,' ')
);
    FETCH CUR4003 INTO ligne4003;
  END LOOP;
  CLOSE CUR4003;
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure INIT_FL1061_TEMP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INIT_FL1061_TEMP" IS

BEGIN
EXECUTE IMMEDIATE ' TRUNCATE TABLE FL1061_TEMP ';
standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure INIT_FL1062_TEMP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INIT_FL1062_TEMP" IS

BEGIN
EXECUTE IMMEDIATE ' TRUNCATE TABLE FL1062_TEMP ';
standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure INIT_FL1066_TEMP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INIT_FL1066_TEMP" (OPE_IN IN CHAR) AS

BEGIN
if OPE_IN = 'T096' then
   EXECUTE IMMEDIATE ' TRUNCATE TABLE FL1066_TEMP_96 ';
end if;
if OPE_IN = 'T064' then
   EXECUTE IMMEDIATE ' TRUNCATE TABLE FL1066_TEMP_64 ';
end if;

standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure INIT_ME1030
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INIT_ME1030" IS

BEGIN

EXECUTE IMMEDIATE 'TRUNCATE  TABLE ME1030 ';

END;

/
--------------------------------------------------------
--  DDL for Procedure MEGAUT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "MEGAUT" AS
CURSOR CUR1003 IS SELECT * FROM FL1003 where  INSMEG03 >= 'TRC'
               order by INSMEG03 ;
ligne1003 FL1003%ROWTYPE ;
CODCLO number;
CODMAJ number;
SLDCPT FLOAT;
EXT1030 NUMBER;
EXT1000 NUMBER;
ECR1090 NUMBER;
ECR1091 NUMBER;
RUBTEST LONG;
ORDOUT NUMBER(7);
LIB90 CHAR(30);
LIB91 CHAR(30);
SLDCPT1 float;
JCOMPTABLE date;

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR1003 ;
  FETCH CUR1003 INTO ligne1003 ;
  WHILE CUR1003%FOUND LOOP
    EXIST_IN_FL1030(ligne1003.AG1OPE03,ligne1003.NA1OPE03,ligne1003.OR1OPE03,ligne1003.KL1OPE03,EXT1030,CODCLO,CODMAJ,SLDCPT);

-- REG3 et REG5
    if (EXT1030 = 0 or (EXT1030 = 1 and (CODMAJ <> 0 or CODCLO = 1))) and ligne1003.INSMEG03 = 'TRC' then
      if EXT1030 = 0 then
        LIB90 := 'CPT A CRD INEXISTANT' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || lpad (ligne1003.OR1OPE03,5,'0') || 
        ligne1003.KL1OPE03;
      end if;
      if EXT1030 = 1 and CODMAJ <> 0 then
        LIB90 := 'CPT A CRDT SUPPRIME' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || lpad (ligne1003.OR1OPE03,5,'0') ||
        ligne1003.KL1OPE03;
      end if;
      if EXT1030 = 1 and CODCLO = 1 then
        LIB90 := 'CPT A CREDIT CLOTURE' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      RUBTEST := LIGNE1003.ENGOPE03 || LIGNE1003.BAQOPE03 || LIGNE1003.AG1OPE03 || LIGNE1003.NA1OPE03 || 
      LIGNE1003.OR1OPE03 || LIGNE1003.KL1OPE03 || TO_DATE(JCOMPTABLE) || '' || '' || '' || LIGNE1003.PTTOPE03 || 
      LIGNE1003.ECHOPE03 || LIB90 || '' || '' || LIGNE1003.ACCEFF03;
      ORDFL1090(LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,LIGNE1003.MNTOPE03,ORDOUT,RUBTEST,ECR1090);
      if ECR1090 = 1 then
        INSERT INTO FL1090 (SU1090,AGCNUM90,SERNUM90,ORDNUM90,MNTOPE90,ENGOPE90,BAQOPE90,CPTAGC90,CPTNAT90,CPTORD90,
        CPTCLE90,DATFLC90,DATFLD90,NOMCPT90,AGYOPE90,PTTOPE90,ECHOPE90,DSCOPE90,OPEREC90,REFOPE90,ACCEFF90,RESEFF90,
        DATREC90,ETAEFF90) values ('0',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,ORDOUT,LIGNE1003.MNTOPE03,
        LIGNE1003.ENGOPE03,LIGNE1003.BAQOPE03,LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,
        LIGNE1003.KL1OPE03,TO_DATE(JCOMPTABLE),'','','',LIGNE1003.PTTOPE03,LIGNE1003.ECHOPE03,LIB90,'','',
        LIGNE1003.ACCEFF03,'','','');
        INSERT INTO FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
        ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,AGYOPE3002,NAYOPE3002,
        ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,
        PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,
        NATOPE3002,TYPOPE3002,FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
        PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002) VALUES ('0','93',TO_DATE(JCOMPTABLE),'T062',
        LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,ORDOUT,LIGNE1003.MNTOPE03,'',LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,
        LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,'','','AUTOM','','','','',LIGNE1003.AGCMEG03,'','','','','',
        'TRANSFERT SLD CR / CR A REG','','','',LIGNE1003.DATMEG03,'','',LIGNE1003.DATVAL03,'','','',0,08,'','','','','',
        '','','','','','','93','','','','');
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE),MEGMEG03='99' where AGCMEG03=LIGNE1003.AGCMEG03 AND
        CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
      end if;
    end if ;

-- REG4 et REG7
    if (EXT1030 = 0 or (EXT1030 = 1 and (CODMAJ <> 0 or CODCLO = 1))) and ligne1003.INSMEG03 = 'TRD' then
      if EXT1030 = 0 then
        LIB91 := 'CPT A DBT INEXISTANT' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      if EXT1030 = 1 and CODMAJ <> 0 then
        LIB91 := 'CPT A DBT SUPPRIME' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      if EXT1030 = 1 and CODCLO = 1 then
        LIB91 := 'CPT A DEBITE CLOTURE' || ligne1003.AG1OPE03 || lpad (ligne1003.NA1OPE03,2,'0') || 
        lpad (ligne1003.OR1OPE03,5,'0') || ligne1003.KL1OPE03;
      end if;
      RUBTEST := LIGNE1003.ENGOPE03 || LIGNE1003.BAQOPE03 || LIGNE1003.AG1OPE03 || LIGNE1003.NA1OPE03 || 
      LIGNE1003.OR1OPE03 || LIGNE1003.KL1OPE03 || TO_DATE(JCOMPTABLE) || '' || '' || '' || LIGNE1003.PTTOPE03 || 
      LIGNE1003.ECHOPE03 || LIB91 || '' || '' || LIGNE1003.ACCEFF03;
      ORDFL1091(LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,LIGNE1003.MNTOPE03,ORDOUT,RUBTEST,ECR1091);
      if ECR1091 = 1 then
        INSERT INTO FL1091 (SU1091,AGCNUM91,SERNUM91,ORDNUM91,MNTOPE91,ENGOPE91,BAQOPE91,CPTAGC91,CPTNAT91,CPTORD91,
        CPTCLE91,DATFLC91,DATFLD91,NOMCPT91,AGYOPE91,PTTOPE91,ECHOPE91,DSCOPE91,OPEREC91,REFOPE91,ACCEFF91,RESEFF91,
        DATREC91,ETAEFF91) values ('0',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,ORDOUT,LIGNE1003.MNTOPE03,
        LIGNE1003.ENGOPE03,LIGNE1003.BAQOPE03,LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,
        LIGNE1003.KL1OPE03,TO_DATE(JCOMPTABLE),'','','',LIGNE1003.PTTOPE03,LIGNE1003.ECHOPE03,LIB91,'','',
        LIGNE1003.ACCEFF03,'','','');
        INSERT INTO FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
        ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,AGYOPE3002,NAYOPE3002,
        ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,
        PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,
        NATOPE3002,TYPOPE3002,FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
        PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002) VALUES ('0','93',TO_DATE(JCOMPTABLE),'T060',
        LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,ORDOUT,LIGNE1003.MNTOPE03,'',LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,
        LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,'','','AUTOM','','','','',LIGNE1003.AGCMEG03,'','','','','',
        'TRANSFERT SLD DB / DB A REG','','','',LIGNE1003.DATMEG03,'','',LIGNE1003.DATVAL03,'','','',0,08,'','','','','',
        '','','','','','','93','','','','');
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE),MEGMEG03='98' where AGCMEG03=LIGNE1003.AGCMEG03 AND
        CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
      end if;
    end if ;

-- REG6
    if EXT1030 = 1 and CODMAJ = 0 and CODCLO <> 1 and ligne1003.INSMEG03 = 'TRC' then
      EXIST_IN_FL1000('93',TO_DATE(JCOMPTABLE),'T061',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,EXT1000);
      if EXT1000 = 0 then
        SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = ligne1003.AG1OPE03 and CODNAT1030  = ligne1003.NA1OPE03 AND ORDCPT1030  = ligne1003.OR1OPE03 AND KLECPT1030  = ligne1003.KL1OPE03;
        SLDCPT1 := SLDCPT1 + LIGNE1003.MNTOPE03;
        UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = ligne1003.AG1OPE03 and CODNAT1030  = ligne1003.NA1OPE03 
        AND ORDCPT1030  = ligne1003.OR1OPE03 AND KLECPT1030  = ligne1003.KL1OPE03;
        Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,NATCPT98,
        ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ('0',TO_DATE(JCOMPTABLE),'T061',LIGNE1003.AGCNUM03,
        LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,'1','',LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,
        LIGNE1003.KL1OPE03,TO_DATE(JCOMPTABLE),'TRC ','0',LIGNE1003.MNTOPE03);
        INSERT INTO FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
        ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,AGYOPE3002,NAYOPE3002,
        ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,
        PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,
        NATOPE3002,TYPOPE3002,FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
        PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002) VALUES ('0','93',TO_DATE(JCOMPTABLE),'T061',
        LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,LIGNE1003.MNTOPE03,'',LIGNE1003.AG1OPE03,
        LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,'','','AUTOM','','','','',LIGNE1003.AGCMEG03,'','','',
        '','','TRANSFERT SLD CR / CR CLT','','','',LIGNE1003.DATMEG03,'','',LIGNE1003.DATVAL03,'','','',0,08,'','','','',
        '','','','','','','','93','','','','');
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE) where AGCMEG03=LIGNE1003.AGCMEG03 AND 
        CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
      end if;
    end if ;

-- REG8
    if EXT1030 = 1 and CODMAJ = 0 and CODCLO <> 1 and ligne1003.INSMEG03 = 'TRD' then
      EXIST_IN_FL1000('93',TO_DATE(JCOMPTABLE),'T059',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,EXT1000);
      if EXT1000 = 0 then
        SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = ligne1003.AG1OPE03 and 
        CODNAT1030  = ligne1003.NA1OPE03 AND ORDCPT1030  = ligne1003.OR1OPE03 AND KLECPT1030  = ligne1003.KL1OPE03;
        SLDCPT1 := SLDCPT1 - LIGNE1003.MNTOPE03;
        UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = ligne1003.AG1OPE03 and 
        CODNAT1030  = ligne1003.NA1OPE03 AND ORDCPT1030  = ligne1003.OR1OPE03 AND KLECPT1030  = ligne1003.KL1OPE03;
        Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,NATCPT98,
        ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ('0',TO_DATE(JCOMPTABLE),'T059',
        LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,'1','',LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,
        LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,TO_DATE(JCOMPTABLE),'TRD ','-',LIGNE1003.MNTOPE03);
        INSERT INTO FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
        ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,AGYOPE3002,
        NAYOPE3002,ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,COMOPE3002,TPSOPE3002,
        DSCOPE3002,ECHOPE3002,PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,FRCMNT3002,DATVAL3002,FRCVAL3002,
        AVIOPE3002,RESEFF3002,CATOPE3002,NATOPE3002,TYPOPE3002,FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,
        BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002) 
        VALUES ('0','93',TO_DATE(JCOMPTABLE),'T059',LIGNE1003.AGCNUM03,LIGNE1003.SERNUM03,LIGNE1003.ORDNUM03,
        LIGNE1003.MNTOPE03,'',LIGNE1003.AG1OPE03,LIGNE1003.NA1OPE03,LIGNE1003.OR1OPE03,LIGNE1003.KL1OPE03,'','',
        'AUTOM','','','','',LIGNE1003.AGCMEG03,'','','','','','TRANSFERT SLD DB / DB CLT','','','',LIGNE1003.DATMEG03,
        '','',LIGNE1003.DATVAL03,'','','',0,08,'','','','','','','','','','','','93','','','','');
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE) where AGCMEG03=LIGNE1003.AGCMEG03 AND 
        CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
      end if;
    end if;

-- REG9
    if EXT1030 = 1 and ligne1003.INSMEG03 <> 'TRC' and ligne1003.INSMEG03 <> 'TRD' then
        UPDATE FL1003 SET INSMEG03='OUI',DATMEG03=TO_DATE(JCOMPTABLE) where AGCMEG03=LIGNE1003.AGCMEG03 AND 
        CODAGC03=LIGNE1003.CODAGC03 AND DATOPE03= LIGNE1003.DATOPE03 AND CODOPE03= LIGNE1003.CODOPE03 AND 
        AGCNUM03=LIGNE1003.AGCNUM03 AND SERNUM03=LIGNE1003.SERNUM03 AND ORDNUM03=LIGNE1003.ORDNUM03;
    end if;

  FETCH CUR1003 INTO ligne1003 ;
END LOOP ;

close CUR1003;
standard.commit;
END MEGAUT;

/
--------------------------------------------------------
--  DDL for Procedure MM1030
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "MM1030" AS

CURSOR CUR1030  IS SELECT * FROM ME1030;
ligne1030   ME1030%ROWTYPE;
EXT number(1);
DATNAI date;
BEGIN
  EXECUTE IMMEDIATE 'TRUNCATE TABLE ME2910';
  OPEN CUR1030 ;
  FETCH CUR1030 INTO  ligne1030;
  WHILE CUR1030 %FOUND LOOP
    if ligne1030.CODOPE29M = 'T103' then
       DATNAI := ligne1030.DATBCT10M;
    else
       DATNAI := ligne1030.NAICPT10M;
    end if;
    EXIST_IN_ME2910(ligne1030.SU1030M,ligne1030.CODAGC1030M,ligne1030.CODNAT1030M,ligne1030.ORDCPT1030M,
    ligne1030.KLECPT1030M,EXT);
    if EXT = 0 then
      INSERT INTO ME2910(SU2910M,CODAGC29101M,CODNAT2910M,ORDCPTM,KLECPTM,DVSCPTM,CODACT2910M,CGLCPTM,CODPTT2910AM,
                  CODPAY2910M,CATCLT2910M,CODDOC2910M,ORDDOC2910M,DATLIVM,LIELIVM,CODPTT2910BM,NUMANLM,NOMCPTM,ADRCPTM,
                  EMPOUVM,DNECPTM,SRVCPTM,SLCCPT1M,DBICPTM,BIDCPTM,NBCDVCM,DATSECM,INTCHQM,OUVCPTM,CLOCPTM,SEXCPTM,
                  NAICPTM,
                  SARCPTM,JNTCPTM,FRMCPTM,INDCHOM,INDEFOM,COTCRCM,NBRIMCM,MTFOUVM,CODCLOM,NIVCPTM,MTFCLOM,FONCPTM,
                  INDTELM,
                  TELCPTM,NBRIMFM,NBRMCRM,INVADRM,AGOCPTM,UTLCPTM,NAICPT8M,INDRCSM,INFRCSM,NUMRCSM,ANNRCSM,NUMBCTM,
                  DATBCTM,
                  CODOPE29MM,INFCMPM)
             values (ligne1030.SU1030M,ligne1030.CODAGC1030M,ligne1030.CODNAT1030M,ligne1030.ORDCPT1030M,ligne1030.KLECPT1030M,
             ligne1030.DVSCPT1030M,ligne1030.CODACT1030M,ligne1030.CGLCPT1030M,ligne1030.CODPTT1030AM,ligne1030.CODPAY1030M,
             ligne1030.CATCLT1030M,ligne1030.CODDOC1030M,ligne1030.ORDDOC1030M,ligne1030.DATLIV1030M,ligne1030.LIELIV10M,
             ligne1030.CODPTT1030BM,ligne1030.NUMANL10M,ligne1030.NOMRSCM,ligne1030.ADRPRSM,ligne1030.EMPOUV10M,ligne1030.DNECPT10M,
             ligne1030.SRVCPT10M,ligne1030.SLCCPT10M,ligne1030.DBICPT10M,ligne1030.BIDCPT30M,ligne1030.NBCDVC10M,ligne1030.DATSEC10M,
             ligne1030.INTCHQ10M,ligne1030.OUVCPT10M,ligne1030.CLOCPT10M,ligne1030.SEXCPT10M,DATNAI,ligne1030.SARCPT10M,
             ligne1030.JNTCPT10M,ligne1030.FRMCPT10M,ligne1030.INDCHO10M,ligne1030.INDEFO10M,ligne1030.COTCRC10M,ligne1030.NBRIMC10M,
             ligne1030.MTFOUV10M,ligne1030.CODCLO10M,ligne1030.NIVCPT10M,ligne1030.MTFCLO10M,ligne1030.FONCPT10M,ligne1030.INDTEL10M,
             ligne1030.TELCPT10M,ligne1030.NBRIMF10M,ligne1030.NBRMCR10M,ligne1030.INVADR10M,ligne1030.AGOCPT10M,ligne1030.UTLCPT10M,
             DATNAI,ligne1030.INDRCS10M,ligne1030.INFRCS10M,ligne1030.NUMRCS10M,ligne1030.ANNRCS10M,ligne1030.NUMBCT10M,
             ligne1030.DATBCT10M,ligne1030.CODOPE29M,ligne1030.INFCMP10M);
    end if;
    FETCH CUR1030 INTO ligne1030;
  END LOOP;
  CLOSE CUR1030;
  standard.commit;
END MM1030;

/
--------------------------------------------------------
--  DDL for Procedure PRINT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PRINT" AS
-- executer "set serveroutput on"
BEGIN
dbms_output.put_line('AAAAAAAAAAAAAAAA' || 'BBBBBBBBBBBB');
END PRINT;

/
--------------------------------------------------------
--  DDL for Procedure SERFL1061
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SERFL1061" 
(
  AGC_IN IN CHAR
, SER_IN IN CHAR
, ORD_IN IN NUMBER
, IND IN OUT int
, SER_OUT OUT VARCHAR2
, RUBTEST_IN IN LONG
, ECR IN OUT int
) AS

CURSOR CUR1061 IS SELECT * FROM FL1061 WHERE nvl(AGCNUM61,'  ')=nvl(AGC_IN,'  ') and nvl(SERNUM61,' ')=nvl(SER_IN,' ') and ORDNUM61=ORD_IN;
ligne1061 FL1061%ROWTYPE;
nbr61 NUMBER(2);
Alpha string(26) := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
RUBTEST61 LONG;

BEGIN
  --DBMS_OUTPUT.ENABLE( 1000000 ) ;
  OPEN CUR1061;
  FETCH CUR1061 INTO ligne1061;
  WHILE CUR1061%FOUND LOOP
    FETCH CUR1061 INTO ligne1061;
  END LOOP;
  nbr61 := CUR1061%ROWCOUNT;
  CLOSE CUR1061;

  if nbr61 = 0 then
     SER_OUT := SER_IN;
     ECR := 1;
     return;
  else
    RUBTEST61 := ligne1061.MNTOPE61 || ligne1061.ENGOPE61 || ligne1061.CPTAGC61 || ligne1061.CPTNAT61 ||
    ligne1061.CPTORD61 || ligne1061.CPTCLE61 || ligne1061.NOMCPT61 || ligne1061.SANEFF61 || ligne1061.AGHRACS ||
    ligne1061.DATREC61 || ligne1061.ECHOPE61 || ligne1061.DATCRE61 || ligne1061.PPLINT61 || ligne1061.TAUTVA61 ||
    '' || '' || ligne1061.TAUINT61 || ligne1061.TAUCPC61 || ligne1061.NBREFF61 || ligne1061.TAUMRC61 || 0;
    --dbms_output.put_line('RUBTESTIN : ' || RUBTEST_IN);
    --dbms_output.put_line('RUBTEST61 : ' || RUBTEST61);
    if RUBTEST_IN = RUBTEST61 then
      ECR := 0;
      return;
    else
      IND := IND + 1;
      SERFL1061(ligne1061.AGCNUM61,substr(Alpha,IND,1),ligne1061.ORDNUM61,IND,SER_OUT,RUBTEST_IN,ECR);
    end if;
  end if;


END SERFL1061;

/

--------------------------------------------------------
--  DDL for Procedure SERFL1062
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SERFL1062" 
(
  AGC_IN IN CHAR
, SER_IN IN CHAR
, ORD_IN IN NUMBER
, IND IN OUT int
, SER_OUT OUT VARCHAR2
, RUBTEST_IN IN LONG
, ECR IN OUT int
) AS

CURSOR CUR1062 IS SELECT * FROM FL1062 WHERE nvl(AGCNUM62,'  ')=nvl(AGC_IN,'  ') and nvl(SERNUM62,' ')=nvl(SER_IN,' ') and ORDNUM62=ORD_IN;
ligne1062 FL1062%ROWTYPE;
nbr62 NUMBER(2);
Alpha string(26) := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
RUBTEST62 LONG;

BEGIN
  --DBMS_OUTPUT.ENABLE( 1000000 ) ;
  OPEN CUR1062;
  FETCH CUR1062 INTO ligne1062;
  WHILE CUR1062%FOUND LOOP
    FETCH CUR1062 INTO ligne1062;
  END LOOP;
  nbr62 := CUR1062%ROWCOUNT;
  CLOSE CUR1062;

  if nbr62 = 0 then
     SER_OUT := SER_IN;
     ECR := 1;
     return;
  else
      RUBTEST62 := ligne1062.MNTOPE62 || ligne1062.ENGOPE62 || ligne1062.CPTAGC62 || ligne1062.CPTNAT62 ||
      ligne1062.CPTORD62 || ligne1062.CPTCLE62 || ligne1062.NOMCPT62 || ligne1062.SANEFF62 || ligne1062.AGHRACS1 ||
      ligne1062.DATREC62 || ligne1062.ECHOPE62 || ligne1062.DATCRE62 || ligne1062.PPLINT62 || ligne1062.TAUTVA62 ||
      ligne1062.DATREM62 || ligne1062.DATENT62 || ligne1062.TAUINT62 || ligne1062.TAUCPC62 || ligne1062.NBREFF62 ||
      ligne1062.TAUMRC62 || ligne1062.ECHU62;
    --dbms_output.put_line('RUBTESTIN : ' || RUBTEST_IN);
    --dbms_output.put_line('RUBTEST62 : ' || RUBTEST62);
    if RUBTEST_IN = RUBTEST62 then
      ECR := 0;
      return;
    else
      IND := IND + 1;
      SERFL1062(ligne1062.AGCNUM62,substr(Alpha,IND,1),ligne1062.ORDNUM62,IND,SER_OUT,RUBTEST_IN,ECR);
    end if;
  end if;


END SERFL1062;

/

--------------------------------------------------------
--  DDL for Procedure SERFL1071
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SERFL1071" 
(
  AGC_IN IN CHAR
, SER_IN IN CHAR
, ORD_IN IN NUMBER
, MNT_IN IN NUMBER
, ENG_IN IN NUMBER
, IND IN OUT int
, SER_OUT OUT VARCHAR2
, RUBTEST_IN IN LONG
, ECR IN OUT int
) AS

CURSOR CUR1071 IS SELECT * FROM FL1071 WHERE nvl(AGCNUM71,'  ')=nvl(AGC_IN,'  ') and nvl(SERNUM71,' ')=nvl(SER_IN,' ') and ORDNUM71=ORD_IN and
MNTOPE71=MNT_IN and ENGOPE71=ENG_IN;
ligne1071 FL1071%ROWTYPE;
nbr71 NUMBER(2);
Alpha string(26) := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
RUBTEST71 LONG;

BEGIN
  --DBMS_OUTPUT.ENABLE( 1000000 ) ;
  OPEN CUR1071;
  FETCH CUR1071 INTO ligne1071;
  WHILE CUR1071%FOUND LOOP
    FETCH CUR1071 INTO ligne1071;
  END LOOP;
  nbr71 := CUR1071%ROWCOUNT;
  CLOSE CUR1071;

  if nbr71 = 0 then
     SER_OUT := SER_IN;
     ECR := 1;
     return;
  else
      RUBTEST71 := ligne1071.CPTAGC71 || ligne1071.CPTNAT71 || ligne1071.CPTORD71 || ligne1071.CPTCLE71 ||
      ligne1071.NOMCPT71 || ligne1071.DATREC71 || ligne1071.ECHOPE71 || ligne1071.DATCRE71 || ligne1071.PPLINT71;
    --dbms_output.put_line('RUBTESTIN : ' || RUBTEST_IN);
    --dbms_output.put_line('RUBTEST71 : ' || RUBTEST71);
    if RUBTEST_IN = RUBTEST71 then
      ECR := 0;
      return;
    else
      IND := IND + 1;
      SERFL1071(ligne1071.AGCNUM71,substr(Alpha,IND,1),ligne1071.ORDNUM71,ligne1071.MNTOPE71,ligne1071.ENGOPE71,
      IND,SER_OUT,RUBTEST_IN,ECR);
    end if;
  end if;


END SERFL1071;

/

--------------------------------------------------------
--  DDL for Procedure SERFL3195
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SERFL3195" 
(
  AGC_IN IN CHAR
, SER_IN IN CHAR
, ORD_IN IN NUMBER
, MNT_IN IN NUMBER
, IND IN OUT int
, SER_OUT OUT VARCHAR2
, RUBTEST_IN IN LONG
, ECR IN OUT int
) AS

CURSOR CUR3195 IS SELECT * FROM FL3195 WHERE nvl(AGCNUM95,'  ')=nvl(AGC_IN,'  ') and nvl(SERNUM95,' ')=nvl(SER_IN,' ') and ORDNUM95=ORD_IN and
MNTOPE95=MNT_IN;
ligne3195 FL3195%ROWTYPE;
nbr95 NUMBER(2);
Alpha string(26) := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
RUBTEST95 LONG;

BEGIN
  --DBMS_OUTPUT.ENABLE( 1000000 ) ;
  OPEN CUR3195;
  FETCH CUR3195 INTO ligne3195;
  WHILE CUR3195%FOUND LOOP
    FETCH CUR3195 INTO ligne3195;
  END LOOP;
  nbr95 := CUR3195%ROWCOUNT;
  CLOSE CUR3195;

  if nbr95 = 0 then
     SER_OUT := SER_IN;
     ECR := 1;
     return;
  else
    RUBTEST95 := ligne3195.NATOPE95 || ligne3195.DATMEG95 || ligne3195.AGCEMT95 || ligne3195.DATOPE95||
    ligne3195.AGXOPE95 || ligne3195.NAXOPE95 || ligne3195.ORXOPE95 || ligne3195.KLXOPE95 || ligne3195.DSCOPE95 ||
    ligne3195.CODOPE95 || ligne3195.REFBAS95;
    --dbms_output.put_line('RUBTESTIN : ' || RUBTEST_IN);
    --dbms_output.put_line('RUBTEST95 : ' || RUBTEST95);
    if RUBTEST_IN = RUBTEST95 then
      ECR := 0;
      return;
    else
      IND := IND + 1;
      SERFL3195(ligne3195.AGCNUM95,substr(Alpha,IND,1),ligne3195.ORDNUM95,ligne3195.MNTOPE95,IND,SER_OUT,
      RUBTEST_IN,ECR);
    end if;
  end if;

END SERFL3195;

/
--------------------------------------------------------
--  DDL for Procedure P4B1003
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P4B1003" AS
CURSOR  CUR1003 IS SELECT * FROM FL1003
                WHERE  (INSMEG03='AGC' or INSMEG03='PFC' or INSMEG03= 'ENG') ;
ligne1003 FL1003%ROWTYPE;
NATOPE CHAR(3);
REFBAS CHAR(10);
IND int;
NEWSER CHAR(1);
RUBTEST LONG;
ECR int :=0;
JCOMPTABLE date;

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR1003;
  FETCH CUR1003 INTO ligne1003;
  WHILE CUR1003%FOUND LOOP
    IF ligne1003.INSMEG03 = 'AGC' THEN
      IND := 0;
      RUBTEST := ligne1003.MNTOPE03 || ligne1003.ENGOPE03 || ligne1003.AG1OPE03 || ligne1003.NA1OPE03 || 
      ligne1003.OR1OPE03 || ligne1003.KL1OPE03 || substr(ligne1003.NOMCPT03,1,21) || ligne1003.TYPESC03 || 
      ligne1003.CODAGC03 || TO_DATE(JCOMPTABLE) || ligne1003.ECHOPE03 || ligne1003.DATOPE03 || ligne1003.ACCEFF03 ||
      (to_number(nvl(trim(substr(ligne1003.DSCOPE03,19,6)),0))/10000) || '' || '' || 
      (to_number(nvl(trim(substr(ligne1003.DSCOPE03,7,6)),0))/10000) || 
      (to_number(nvl(trim(substr(ligne1003.DSCOPE03,13,6)),0))/10000) || substr(ligne1003.DSCOPE03,25,4) || 
      (to_number(nvl(trim(substr(ligne1003.DSCOPE03,1,6)),0))/10000) || 0;
      SERFL1061(ligne1003.AGCNUM03,ligne1003.SERNUM03,ligne1003.ORDNUM03,IND,NEWSER,RUBTEST,ECR);
      if ECR = 1 then
        INSERT INTO FL1061 (SU1061,AGCNUM61,SERNUM61,ORDNUM61,MNTOPE61,ENGOPE61,CPTAGC61,CPTNAT61,CPTORD61,
        CPTCLE61,NOMCPT61,SANEFF61,AGHRACS,DATREC61,ECHOPE61,DATCRE61,PPLINT61,TAUTVA61,SECHOPE61,FILLER61,TAUINT61,
        TAUCPC61,NBREFF61,TAUMRC61,ECHU61,PRCAGC61) values (0,ligne1003.AGCNUM03,NEWSER,ligne1003.ORDNUM03,
        ligne1003.MNTOPE03,ligne1003.ENGOPE03,ligne1003.AG1OPE03,ligne1003.NA1OPE03,ligne1003.OR1OPE03,
        ligne1003.KL1OPE03,substr(ligne1003.NOMCPT03,1,21),ligne1003.TYPESC03,ligne1003.CODAGC03,TO_DATE(JCOMPTABLE),
        ligne1003.ECHOPE03,ligne1003.DATOPE03,ligne1003.ACCEFF03,
        (to_number(nvl(trim(substr(ligne1003.DSCOPE03,19,6)),0))/10000),'','',
        (to_number(nvl(trim(substr(ligne1003.DSCOPE03,7,6)),0))/10000),
        (to_number(nvl(trim(substr(ligne1003.DSCOPE03,13,6)),0))/10000),
        to_number(nvl(trim(substr(ligne1003.DSCOPE03,25,4)),0)),
        (to_number(nvl(trim(substr(ligne1003.DSCOPE03,1,6)),0))/10000),0,'');
      end if;
    END IF;
    IF ligne1003.INSMEG03 = 'PFC' THEN
      IND := 0;
      RUBTEST := ligne1003.MNTOPE03 || ligne1003.ENGOPE03 || ligne1003.AG1OPE03 || ligne1003.NA1OPE03 || 
      ligne1003.OR1OPE03 || ligne1003.KL1OPE03 || substr(ligne1003.NOMCPT03,1,21) || ligne1003.TYPESC03 || 
      ligne1003.CODAGC03 || TO_DATE(JCOMPTABLE) || ligne1003.ECHOPE03 || ligne1003.DATOPE03 || ligne1003.ACCEFF03 || 
      (to_number(nvl(trim(substr(ligne1003.DSCOPE03,19,6)),0))/10000) || ligne1003.DATMEG03 || ligne1003.DATVAL03 || 
      (to_number(nvl(trim(substr(ligne1003.DSCOPE03,1,6)),0))/10000) || 
      (to_number(nvl(trim(substr(ligne1003.DSCOPE03,14,5)),0))/10000) || substr(ligne1003.DSCOPE03,25,4) || 
      (to_number(nvl(trim(substr(ligne1003.DSCOPE03,7,6)),0))/10000) || '1';
      SERFL1062(ligne1003.AGCNUM03,ligne1003.SERNUM03,ligne1003.ORDNUM03,IND,NEWSER,RUBTEST,ECR);
      if ECR = 1 then
        INSERT INTO  FL1062 (SU1062,AGCNUM62,SERNUM62,ORDNUM62,MNTOPE62,ENGOPE62,CPTAGC62,CPTNAT62,CPTORD62,CPTCLE62,
        NOMCPT62,SANEFF62,AGHRACS1,DATREC62,ECHOPE62,DATCRE62,PPLINT62,TAUTVA62,DATREM62,DATENT62,TAUINT62,TAUCPC62,
        NBREFF62,TAUMRC62,ECHU62,PFCAGC62 ) values (0,ligne1003.AGCNUM03,NEWSER,ligne1003.ORDNUM03,
        ligne1003.MNTOPE03,ligne1003.ENGOPE03,ligne1003.AG1OPE03,ligne1003.NA1OPE03,ligne1003.OR1OPE03,
        ligne1003.KL1OPE03,substr(ligne1003.NOMCPT03,1,21),ligne1003.TYPESC03,ligne1003.CODAGC03,TO_DATE(JCOMPTABLE),
        ligne1003.ECHOPE03,ligne1003.DATOPE03,ligne1003.ACCEFF03,
        (to_number(nvl(trim(substr(ligne1003.DSCOPE03,19,6)),0))/10000),ligne1003.DATMEG03,ligne1003.DATVAL03,
        (to_number(nvl(trim(substr(ligne1003.DSCOPE03,1,6)),0))/10000),
        (to_number(nvl(trim(substr(ligne1003.DSCOPE03,14,5)),0))/10000),
        to_number(nvl(trim(substr(ligne1003.DSCOPE03,25,4)),0)),
        (to_number(nvl(trim(substr(ligne1003.DSCOPE03,17,6)),0))/10000),'1','');
      end if;
    END IF;
    IF  ligne1003.INSMEG03 = 'ENG' THEN
      IND := 0;
      RUBTEST := ligne1003.AG1OPE03 || ligne1003.NA1OPE03 || ligne1003.OR1OPE03 || ligne1003.KL1OPE03 || 
      substr(ligne1003.NOMCPT03,1,24) || TO_DATE(JCOMPTABLE) || ligne1003.ECHOPE03 || ligne1003.DATOPE03 || 
      ligne1003.ACCEFF03;
      SERFL1071(ligne1003.AGCNUM03,ligne1003.SERNUM03,ligne1003.ORDNUM03,ligne1003.MNTOPE03,ligne1003.ENGOPE03,IND,
      NEWSER,RUBTEST,ECR);
      if ECR = 1 then
        INSERT INTO FL1071 (SU1071,AGCNUM71,SERNUM71,ORDNUM71,MNTOPE71,ENGOPE71,CPTAGC71,CPTNAT71,CPTORD71,CPTCLE71,
        NOMCPT71,DATREC71,ECHOPE71,DATCRE71,PPLINT71,MEGMEG71,CODOPE71,FILLER71) values (0,ligne1003.AGCNUM03,NEWSER,
        ligne1003.ORDNUM03,ligne1003.MNTOPE03,ligne1003.ENGOPE03,ligne1003.AG1OPE03,ligne1003.NA1OPE03,
        ligne1003.OR1OPE03,ligne1003.KL1OPE03,substr(ligne1003.NOMCPT03,1,24),TO_DATE(JCOMPTABLE),ligne1003.ECHOPE03,
        ligne1003.DATOPE03,ligne1003.ACCEFF03,'','','' );
      end if;
    END IF;
    FETCH CUR1003 INTO ligne1003;
    END LOOP;
    CLOSE CUR1003;
    standard.commit;
END P4B1003;

/
--------------------------------------------------------
--  DDL for Procedure P4B1066
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P4B1066" (J_COMPTA IN DATE) AS

CURSOR CUR1066 IS SELECT * FROM FL1066
                WHERE SU1066 = 0 and ECHU66 >= 1 and
                     ((ECHOPE66 < TO_DATE(J_COMPTA)) or (ECHOPE66 <= TO_DATE(J_COMPTA) and 
                     (ENGOPE66 In ('661','662','663','641','642','643','644'))))
                       order by ECHU66;
ligne1066 FL1066%ROWTYPE;

BEGIN
  OPEN CUR1066;
  FETCH CUR1066 INTO ligne1066;

  WHILE CUR1066%FOUND LOOP
      ligne1066.DATFLD66 := ligne1066.DATFLC66;
      ligne1066.ECHU66 := 0;
      if ligne1066.PPLINT66 != 0 then
        ligne1066.DATFLC66 := TO_DATE(J_COMPTA);
      end if;
      UPDATE FL1066 set DATFLC66=ligne1066.DATFLC66, DATFLD66=ligne1066.DATFLD66, ECHU66=ligne1066.ECHU66
                    where AGCNUM66=ligne1066.AGCNUM66 and SERNUM66=ligne1066.SERNUM66 and ORDNUM66=ligne1066.ORDNUM66;

    if (ligne1066.PFCAGC66 <> 0) and (  (ligne1066.PPLINT66=1) or (ligne1066.PPLINT66=2) or (ligne1066.PPLINT66=0 and 
    ligne1066.ENGOPE66 In ('661','662','663','641','642','643','644')) ) then
      insert into FL1000 (SU3002,CODAGC3002,DATOPE3002,CODOPE3002,AGCNUM3002,SERNUM3002,ORDNUM3002,MNTOPE3002,
                          ENGOPE3002,AGXOPE3002,NAXOPE3002,ORXOPE3002,KLXOPE3002,CODMRC3002,TRMOPE3002,USROPE3002,
                          AGYOPE3002,NAYOPE3002,ORYOPE3002,KLYOPE3002,MEGOPE3002,PTTOPE3002,BAQOPE3002,FRAOPE3002,
                          COMOPE3002,TPSOPE3002,DSCOPE3002,ECHOPE3002,PPLINT3002,ACCEFF3002,CREEFF3002,TIMOPE3002,
                          FRCMNT3002,DATVAL3002,FRCVAL3002,AVIOPE3002,RESEFF3002,CATOPE3002,NATOPE3002,TYPOPE3002,
                          FRCAUT3002,REFOPE3002,BLKOPE3002,VRSOPE20,VRSOPE18,BNFOPE17,BNFOPE15,CODAVO3002,ECHU3002,
                          PFCAGC3002,AGZREC3002,INTPRE3002,INTCOU3002,MNTCHG3002,MNTIMP3002)
             values (0,'93',TO_DATE(J_COMPTA),'T063',ligne1066.AGCNUM66,ligne1066.SERNUM66,ligne1066.ORDNUM66,
             ligne1066.MNTOPE66,
                     ligne1066.ENGOPE66,ligne1066.CPTAGC66,ligne1066.CPTNAT66,ligne1066.CPTORD66,ligne1066.CPTCLE66,
                     '','',
                     'AUTOM','','','','','93','','','','','','VIR AUTO EFFETS INTERETS ECHUS',ligne1066.ECHOPE66,
                     ligne1066.PPLINT66,'','','','','','','','','0',09,'','','','','','','','','',ligne1066.ECHU66,
                     ligne1066.PFCAGC66,'93','','','','');

    end if;

    FETCH CUR1066 INTO ligne1066;
  END LOOP;
  CLOSE CUR1066;
  standard.commit;
END P4B1066;

/
--------------------------------------------------------
--  DDL for Procedure P4B4003
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P4B4003" AS

CURSOR CUR4003 IS SELECT * FROM FL4003
                WHERE (ORXOPE4003=04554 or ORXOPE4003=04553 or ORXOPE4003=04552 or ORXOPE4003=04555 or
                       ORXOPE4003=45540 or ORXOPE4003=45530 or ORXOPE4003=45520 or ORXOPE4003=45550)
                       and DVSOPE4003 = 'TND' and (INSMEG4003='DBI' or INSMEG4003='CRE')
                       order by DVSOPE4003, AGXOPE4003, NAXOPE4003, ORXOPE4003, KLXOPE4003;
ligne4003 FL4003%ROWTYPE;
NATOPE CHAR(3);
REFBAS CHAR(10);
IND int :=0;
NEWSER CHAR(1);
RUBTEST LONG;
ECR int :=0;
JCOMPTABLE date;

BEGIN
  select max(DATOPE) into JCOMPTABLE from FLDATE;
  OPEN CUR4003;
  FETCH CUR4003 INTO ligne4003;

  WHILE CUR4003%FOUND LOOP
    IF ligne4003.INSMEG4003 = 'DBI' THEN
       NATOPE := 'CRE';
    END IF;
    IF ligne4003.INSMEG4003 = 'CRE' THEN
       NATOPE := 'DBI';
    END IF;
    REFBAS := ligne4003.AGCNUM4003 || ligne4003.SERNUM4003 || ligne4003.ORDNUM4003;
    RUBTEST := NATOPE || ligne4003.DATMEG4003 || ligne4003.AGCMEG4003 || TO_DATE(JCOMPTABLE)|| ligne4003.AGXOPE4003 ||
    ligne4003.NAXOPE4003 || ligne4003.ORXOPE4003 || ligne4003.KLXOPE4003 || ligne4003.DSCOPE4003 || 
    ligne4003.OPEMEG4003 || REFBAS;
    SERFL3195(ligne4003.AGCNUM4003,ligne4003.SERNUM4003,ligne4003.ORDNUM4003,ligne4003.MNTOPE4003,IND,NEWSER,RUBTEST,ECR);
    if ECR = 1 then
      INSERT INTO FL3195 (SU3195,AGCNUM95,SERNUM95,ORDNUM95,MNTOPE95,NATOPE95,DATMEG95,AGCEMT95,DATOPE95,
      AGXOPE95,NAXOPE95,ORXOPE95,KLXOPE95,DSCOPE95,CODOPE95,REFBAS95,FIL3195)  values ('0',ligne4003.AGCNUM4003,
      NEWSER,ligne4003.ORDNUM4003,ligne4003.MNTOPE4003,NATOPE,ligne4003.DATMEG4003,ligne4003.AGCMEG4003,
      TO_DATE(JCOMPTABLE),ligne4003.AGXOPE4003,ligne4003.NAXOPE4003,ligne4003.ORXOPE4003,ligne4003.KLXOPE4003,
      ligne4003.DSCOPE4003,ligne4003.OPEMEG4003,REFBAS,'');
      UPDATE FL4003 set ANSAGC4003=AGCNUM4003, ANSSER4003=NEWSER, ANSORD4003=ORDNUM4003, REJET='M', 
      IND14003=0, IND24003=0, DATOPE4003=TO_DATE(JCOMPTABLE) where CODAGC4003=ligne4003.CODAGC4003 and 
      AGCMEG4003=ligne4003.AGCMEG4003 and DATMEG4003=ligne4003.DATMEG4003 and CODOPE4003=ligne4003.CODOPE4003 and 
      AGCNUM4003=ligne4003.AGCNUM4003 and SERNUM4003=ligne4003.SERNUM4003 and ORDNUM4003=ligne4003.ORDNUM4003;
    end if;
    FETCH CUR4003 INTO ligne4003;
  END LOOP;
  CLOSE CUR4003;
  standard.commit;
END P4B4003;

/
--------------------------------------------------------
--  DDL for Procedure SELECT_FL1061
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SELECT_FL1061" 
( AGC_IN IN CHAR
, NAT_IN IN NUMBER
, ORD_IN IN NUMBER
, CLE_IN IN NUMBER
, ENG_IN IN CHAR
) AS
BEGIN
--EXECUTE IMMEDIATE ' TRUNCATE TABLE FL1061_TEMP';
insert into FL1061_TEMP
 (select * from FL1061 where CPTAGC61=AGC_IN and CPTNAT61=NAT_IN and CPTORD61=ORD_IN and CPTCLE61=CLE_IN
                             and ENGOPE61=ENG_IN and SU1061=0);
  standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure SELECT_FL1062
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SELECT_FL1062" 
( AGC_IN IN CHAR
, NAT_IN IN NUMBER
, ORD_IN IN NUMBER
, CLE_IN IN NUMBER
, ENG_IN IN CHAR
) AS
BEGIN
--EXECUTE IMMEDIATE ' TRUNCATE TABLE FL1062_TEMP';
insert into FL1062_TEMP
 (select * from FL1062 where CPTAGC62=AGC_IN and CPTNAT62=NAT_IN and CPTORD62=ORD_IN and CPTCLE62=CLE_IN
                             and ENGOPE62=ENG_IN and SU1062=0);
  standard.commit;
END;

/
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
--  DDL for Trigger TRIGGER_FL1000
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIGGER_FL1000" 
AFTER INSERT OR UPDATE OF SU3002, AGXOPE3002, NAXOPE3002, ORXOPE3002, KLXOPE3002, MNTOPE3002 ON FL1000
--REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
DECLARE
  SLDCPT1 FL1000.MNTOPE3002%Type;
  SLDCPT2 FL1000.MNTOPE3002%Type;
  OLDCPT string(10);
  NEWCPT string(10);
  CODMAJ string(2) := 'CM';
  AGHRAC string(2);
  DATREC date;
  TAUINT number(6,4);
  TAUTVA number(6,4);
  TAUCPC number(5,4);
BEGIN
     if (:old.SU3002 = 0) and (:new.SU3002 = 1) then
        CODMAJ := 'SU';
     end if;
     if (:old.SU3002 = 1) and (:new.SU3002 = 0) then
        CODMAJ := 'RE';
     end if;

     if (:new.CODOPE3002 = 'T036') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          OLDCPT := :old.AGXOPE3002 || to_char(:old.NAXOPE3002) || to_char(:old.ORXOPE3002) || to_char(:old.KLXOPE3002);
          NEWCPT := :new.AGXOPE3002 || to_char(:new.NAXOPE3002) || to_char(:new.ORXOPE3002) || to_char(:new.KLXOPE3002);
          if :old.MNTOPE3002 is null then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND 
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,
            NATCPT98,ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  
            values ( '0' , :new.DATOPE3002 , 'T036' ,:new.AGCNUM3002 , :new.SERNUM3002 ,:new.ORDNUM3002 ,'1','',
            :new.AGXOPE3002,:new.NAXOPE3002,:new.ORXOPE3002,:new.KLXOPE3002,:new.DATOPE3002 ,'CRED','0',:new.MNTOPE3002);
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)= TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)= TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT = NEWCPT) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :old.MNTOPE3002 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T036' and 
            AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :old.MNTOPE3002;
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT != NEWCPT) and (:old.MNTOPE3002 = :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE3002 and 
            CODNAT1030  = :old.NAXOPE3002 AND ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :old.MNTOPE3002;
            SLDCPT2 := SLDCPT2 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE3002, NATCPT98 = :new.NAXOPE3002, ORDCPT98 = :new.ORXOPE3002, 
            KLECPT98 = :new.KLXOPE3002, MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T036' 
            and AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT != NEWCPT) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :old.MNTOPE3002;
            SLDCPT2 := SLDCPT2 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND 
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE3002, NATCPT98 = :new.NAXOPE3002, ORDCPT98 = :new.ORXOPE3002, 
            KLECPT98 = :new.KLXOPE3002, MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T036' 
            and AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :old.MNTOPE3002;
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL3098 set SU3098=1 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T036' and AGCNUM98= :new.AGCNUM3002 
            and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL3098 set SU3098=0 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T036' and AGCNUM98= :new.AGCNUM3002 
            and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T035') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            INSERT into FL1090 (SU1090,AGCNUM90,SERNUM90,ORDNUM90,MNTOPE90,ENGOPE90,BAQOPE90,CPTAGC90,CPTNAT90,
            CPTORD90,CPTCLE90,DATFLC90,DATFLD90,NOMCPT90,AGYOPE90,PTTOPE90,ECHOPE90,DSCOPE90,OPEREC90,REFOPE90,
            RESEFF90,DATREC90,ETAEFF90) values ('0',trim(:new.AGCNUM3002),trim(:new.SERNUM3002),:new.ORDNUM3002,
            :new.MNTOPE3002,'','',:new.AGZREC3002,'','','',:new.DATOPE3002,'','',:new.AGZREC3002,'','',
            :new.DSCOPE3002,'','','','','01');
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL1090 set CPTAGC90 = :new.AGZREC3002, AGYOPE90 = :new.AGZREC3002, DSCOPE90 = :new.DSCOPE3002 
            where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and 
            ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) 
            and TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL1090 set SU1090=1 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL1090 set SU1090=0 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T037') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :old.MNTOPE3002;
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T038') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            INSERT into FL1091 (SU1091,AGCNUM91,SERNUM91,ORDNUM91,MNTOPE91,ENGOPE91,BAQOPE91,CPTAGC91,CPTNAT91,
            CPTORD91,CPTCLE91,DATFLC91,DATFLD91,NOMCPT91,AGYOPE91,PTTOPE91,ECHOPE91,DSCOPE91,OPEREC91,REFOPE91,
            ACCEFF91,RESEFF91,DATREC91,ETAEFF91) values ('0',trim(:new.AGCNUM3002),trim(:new.SERNUM3002),:new.ORDNUM3002,
            :new.MNTOPE3002,'','',:new.AGZREC3002,'','','',:new.DATOPE3002,'','',:new.AGZREC3002,'','',:new.DSCOPE3002,
            '','','','','','01');
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL1091 set CPTAGC91 = :new.AGZREC3002, AGYOPE91 = :new.AGZREC3002, DSCOPE91 = :new.DSCOPE3002 
            where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and 
            ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL1091 set SU1091=1 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL1091 set SU1091=0 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
       end if;
     end if;


     if (:new.CODOPE3002 = 'T040') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :old.MNTOPE3002;
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T013') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            UPDATE FL1090 set SU1090=1 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            UPDATE FL1090 set SU1090=0 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :old.MNTOPE3002;
            UPDATE FL1090 set SU1090=1 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1090 set SU1090=0 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1090 set SU1090=1 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T011') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            UPDATE FL1091 set SU1091=1 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            UPDATE FL1091 set SU1091=0 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :old.MNTOPE3002;
            UPDATE FL1091 set SU1091=1 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1091 set SU1091=0 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1091 set SU1091=1 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T064') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            UPDATE FL1066 set SU1066=1 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002 and MNTOPE66= :new.MNTOPE3002 ;
          end if;
          if (:old.MNTOPE3002 is not null) then
            UPDATE FL1066 set SU1066=1 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002 and MNTOPE66= :new.MNTOPE3002 ;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1066 set SU1066=0 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002 and MNTOPE66= :new.MNTOPE3002 ;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1066 set SU1066=1 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002 and MNTOPE66= :new.MNTOPE3002 ;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T031') then
       select AGHRACS, DATREC61, TAUINT61, TAUTVA61, TAUCPC61 into AGHRAC, DATREC, TAUINT, TAUTVA, TAUCPC 
       from FL1061 where TESTAGC(AGCNUM61)=TESTAGC(:new.AGCNUM3002) and TESTSER(SERNUM61)=TESTSER(:new.SERNUM3002) 
       and ORDNUM61= :new.ORDNUM3002;
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            UPDATE FL1061 set SU1061=1 where TESTAGC(AGCNUM61)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM61)=TESTSER(:new.SERNUM3002) and ORDNUM61= :new.ORDNUM3002;
            Insert into FL1066 (SU1066,AGCNUM66,SERNUM66,ORDNUM66,MNTOPE66,ENGOPE66,BAQOPE66,CPTAGC66,CPTNAT66,
            CPTORD66,CPTCLE66,DATFLC66,DATFLD66,NOMCPT66,AGYOPE66,PTTOPE66,ECHOPE66,DSCOPE66,DATREC66,PPLINT66,
            ECHU66,PFCAGC66,AGHRACS66,FILLER66,ACCEFF66,RESEFF66,DATRES66,ETAEFF66,SANEFF66,TAUMRC66,TAUINT66,
            TAUTVA66,TAUCPC66)  values ( '0',trim(:new.AGCNUM3002),trim(:new.SERNUM3002),:new.ORDNUM3002,
            :new.MNTOPE3002,:new.ENGOPE3002,'',:new.AGXOPE3002,:new.NAXOPE3002,:new.ORXOPE3002,
            :new.KLXOPE3002,:new.DATOPE3002,'',:new.DSCOPE3002,:new.AGYOPE3002,'',:new.ECHOPE3002,
            :new.DSCOPE3002,:new.DATOPE3002,:new.PPLINT3002,0,0,AGHRAC,'','',:new.RESEFF3002,DATREC,'01',
            :new.RESEFF3002,'',TAUINT,TAUTVA,TAUCPC);
          end if;
          if (:old.MNTOPE3002 is not null) then
            UPDATE FL1061 set SU1061=1 where TESTAGC(AGCNUM61)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM61)=TESTSER(:new.SERNUM3002) and ORDNUM61= :new.ORDNUM3002;
            UPDATE FL1066 set SU1066=0,AGCNUM66=trim(:new.AGCNUM3002),SERNUM66=trim(:new.SERNUM3002),
            ORDNUM66=:new.ORDNUM3002,MNTOPE66=:new.MNTOPE3002,ENGOPE66=:new.ENGOPE3002,BAQOPE66='',
            CPTAGC66=:new.AGXOPE3002,CPTNAT66=:new.NAXOPE3002,CPTORD66=:new.ORXOPE3002,CPTCLE66=:new.KLXOPE3002,
            DATFLC66=:new.DATOPE3002,DATFLD66='',NOMCPT66=:new.DSCOPE3002,AGYOPE66=:new.AGYOPE3002,PTTOPE66='',
            ECHOPE66=:new.ECHOPE3002,DSCOPE66=:new.DSCOPE3002,DATREC66=:new.DATOPE3002,PPLINT66=:new.PPLINT3002,
            ECHU66=0,PFCAGC66=0,AGHRACS66=AGHRAC,FILLER66='',ACCEFF66='',RESEFF66=:new.RESEFF3002,
            DATRES66=DATREC,ETAEFF66='01',SANEFF66=:new.RESEFF3002,TAUMRC66='',TAUINT66=TAUINT,TAUTVA66=TAUTVA,
            TAUCPC66=TAUCPC  where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1061 set SU1061=0 where TESTAGC(AGCNUM61)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM61)=TESTSER(:new.SERNUM3002) and ORDNUM61= :new.ORDNUM3002;
            UPDATE FL1066 set SU1066=1 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1061 set SU1061=1 where TESTAGC(AGCNUM61)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM61)=TESTSER(:new.SERNUM3002) and ORDNUM61= :new.ORDNUM3002;
            UPDATE FL1066 set SU1066=0 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T042') then
       select AGHRACS1, DATREC62, TAUINT62, TAUTVA62, TAUCPC62 into AGHRAC, DATREC, TAUINT, TAUTVA, TAUCPC 
       from FL1062 where TESTAGC(AGCNUM62)=TESTAGC(:new.AGCNUM3002) and TESTSER(SERNUM62)=TESTSER(:new.SERNUM3002) 
       and ORDNUM62= :new.ORDNUM3002;
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            UPDATE FL1062 set SU1062=1 where TESTAGC(AGCNUM62)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM62)=TESTSER(:new.SERNUM3002) and ORDNUM62= :new.ORDNUM3002;
            Insert into FL1066 (SU1066,AGCNUM66,SERNUM66,ORDNUM66,MNTOPE66,ENGOPE66,BAQOPE66,CPTAGC66,CPTNAT66,
            CPTORD66,CPTCLE66,DATFLC66,DATFLD66,NOMCPT66,AGYOPE66,PTTOPE66,ECHOPE66,DSCOPE66,DATREC66,PPLINT66,
            ECHU66,PFCAGC66,AGHRACS66,FILLER66,ACCEFF66,RESEFF66,DATRES66,ETAEFF66,SANEFF66,TAUMRC66,TAUINT66,
            TAUTVA66,TAUCPC66)  values ( '0',trim(:new.AGCNUM3002),trim(:new.SERNUM3002),:new.ORDNUM3002,
            :new.MNTOPE3002,:new.ENGOPE3002,'',:new.AGXOPE3002,:new.NAXOPE3002,:new.ORXOPE3002,:new.KLXOPE3002,
            :new.DATOPE3002,'',:new.DSCOPE3002,:new.AGYOPE3002,'',:new.ECHOPE3002,:new.DSCOPE3002,:new.DATOPE3002,
            :new.PPLINT3002,:new.ECHU3002,:new.PFCAGC3002,AGHRAC,'','',:new.RESEFF3002,DATREC,'01',:new.RESEFF3002,
            '',TAUINT,TAUTVA,TAUCPC);
          end if;
          if (:old.MNTOPE3002 is not null) then
            UPDATE FL1062 set SU1062=1 where TESTAGC(AGCNUM62)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM62)=TESTSER(:new.SERNUM3002) and ORDNUM62= :new.ORDNUM3002;
            UPDATE FL1066 set SU1066=0,AGCNUM66=trim(:new.AGCNUM3002),SERNUM66=trim(:new.SERNUM3002),
            ORDNUM66=:new.ORDNUM3002,MNTOPE66=:new.MNTOPE3002,ENGOPE66=:new.ENGOPE3002,BAQOPE66='',
            CPTAGC66=:new.AGXOPE3002,CPTNAT66=:new.NAXOPE3002,CPTORD66=:new.ORXOPE3002,CPTCLE66=:new.KLXOPE3002,
            DATFLC66=:new.DATOPE3002,DATFLD66='',NOMCPT66=:new.DSCOPE3002,AGYOPE66=:new.AGYOPE3002,PTTOPE66='',
            ECHOPE66=:new.ECHOPE3002,DSCOPE66=:new.DSCOPE3002,DATREC66=:new.DATOPE3002,PPLINT66=:new.PPLINT3002,
            ECHU66=:new.ECHU3002,PFCAGC66=:new.PFCAGC3002,AGHRACS66=AGHRAC,FILLER66='',ACCEFF66='',
            RESEFF66=:new.RESEFF3002,DATRES66=DATREC,ETAEFF66='01',SANEFF66=:new.RESEFF3002,TAUMRC66='',
            TAUINT66=TAUINT,TAUTVA66=TAUTVA,TAUCPC66=TAUCPC  where AGCNUM66= :new.AGCNUM3002 and 
            SERNUM66= :new.SERNUM3002 and ORDNUM66= :new.ORDNUM3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1062 set SU1062=0 where TESTAGC(AGCNUM62)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM62)=TESTSER(:new.SERNUM3002) and ORDNUM62= :new.ORDNUM3002;
            UPDATE FL1066 set SU1066=1 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1062 set SU1062=1 where TESTAGC(AGCNUM62)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM62)=TESTSER(:new.SERNUM3002) and ORDNUM62= :new.ORDNUM3002;
            UPDATE FL1066 set SU1066=0 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T096') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and 
            CODNAT1030  = :new.NAXOPE3002 AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and 
            CODNAT1030  = :new.NAXOPE3002 AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,
            NATCPT98,ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ( '0' , :new.DATOPE3002 , 'T096' ,
            :new.AGCNUM3002 , :new.SERNUM3002 ,:new.ORDNUM3002 ,'1','',:new.AGXOPE3002,:new.NAXOPE3002,:new.ORXOPE3002,
            :new.KLXOPE3002,:new.DATOPE3002 ,'EFF ','-',:new.MNTOPE3002);
            UPDATE FL1066 set SU1066=1 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1066 set SU1066=0 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002;
            UPDATE FL3098 set SU3098=1 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T096' and 
            AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1066 set SU1066=1 where TESTAGC(AGCNUM66)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM66)=TESTSER(:new.SERNUM3002) and ORDNUM66= :new.ORDNUM3002;
            UPDATE FL3098 set SU3098=0 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T096' and 
            AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T039') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          OLDCPT := :old.AGXOPE3002 || to_char(:old.NAXOPE3002) || to_char(:old.ORXOPE3002) || to_char(:old.KLXOPE3002);
          NEWCPT := :new.AGXOPE3002 || to_char(:new.NAXOPE3002) || to_char(:new.ORXOPE3002) || to_char(:new.KLXOPE3002);
          if :old.MNTOPE3002 is null then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,NATCPT98,
            ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ( '0' , :new.DATOPE3002 , 'T039' ,:new.AGCNUM3002 ,
            :new.SERNUM3002 ,:new.ORDNUM3002 ,'1','',:new.AGXOPE3002,:new.NAXOPE3002,:new.ORXOPE3002,:new.KLXOPE3002,
            :new.DATOPE3002 ,'DEBI','-',:new.MNTOPE3002);
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT = NEWCPT) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :old.MNTOPE3002 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T039' and 
            AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :old.MNTOPE3002;
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT != NEWCPT) and (:old.MNTOPE3002 = :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 
            AND ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :old.MNTOPE3002;
            SLDCPT2 := SLDCPT2 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 
            AND ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE3002, NATCPT98 = :new.NAXOPE3002, ORDCPT98 = :new.ORXOPE3002, 
            KLECPT98 = :new.KLXOPE3002, MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T039' and
            AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT != NEWCPT) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :old.MNTOPE3002;
            SLDCPT2 := SLDCPT2 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND 
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND 
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE3002, NATCPT98 = :new.NAXOPE3002, ORDCPT98 = :new.ORXOPE3002, 
            KLECPT98 = :new.KLXOPE3002, MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T039' 
            and AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :old.MNTOPE3002;
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL3098 set SU3098=1 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T039' and AGCNUM98= :new.AGCNUM3002 
            and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND 
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM95)=TESTSER(:new.SERNUM3002) and ORDNUM95= :new.ORDNUM3002 and MNTOPE95= :new.MNTOPE3002;
            UPDATE FL3098 set SU3098=0 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T039' and AGCNUM98= :new.AGCNUM3002 
            and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T009') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          OLDCPT := :old.AGXOPE3002 || to_char(:old.NAXOPE3002) || to_char(:old.ORXOPE3002) || to_char(:old.KLXOPE3002);
          NEWCPT := :new.AGXOPE3002 || to_char(:new.NAXOPE3002) || to_char(:new.ORXOPE3002) || to_char(:new.KLXOPE3002);
          if :old.MNTOPE3002 is null then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,NATCPT98,
            ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ( '0' , :new.DATOPE3002 , 'T009' ,
            :new.AGCNUM3002 , :new.SERNUM3002 ,:new.ORDNUM3002 ,'1','',:new.AGXOPE3002,:new.NAXOPE3002,:new.ORXOPE3002,
            :new.KLXOPE3002,:new.DATOPE3002 ,'VIR ','0',:new.MNTOPE3002);
            UPDATE FL1090 set SU1090=1 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT = NEWCPT) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :old.MNTOPE3002 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T009' and
            AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            UPDATE FL1090 set SU1090=0 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :old.MNTOPE3002;
            UPDATE FL1090 set SU1090=1 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT != NEWCPT) and (:old.MNTOPE3002 = :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :old.MNTOPE3002;
            SLDCPT2 := SLDCPT2 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE3002, NATCPT98 = :new.NAXOPE3002, ORDCPT98 = :new.ORXOPE3002, 
            KLECPT98 = :new.KLXOPE3002, MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T009' and
            AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT != NEWCPT) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :old.MNTOPE3002;
            SLDCPT2 := SLDCPT2 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE3002, NATCPT98 = :new.NAXOPE3002, ORDCPT98 = :new.ORXOPE3002, 
            KLECPT98 = :new.KLXOPE3002, MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T009' and AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            UPDATE FL1090 set SU1090=0 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :old.MNTOPE3002;
            UPDATE FL1090 set SU1090=1 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1090 set SU1090=0 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
            UPDATE FL3098 set SU3098=1 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T009' and AGCNUM98= :new.AGCNUM3002 
            and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1090 set SU1090=1 where TESTAGC(AGCNUM90)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM90)=TESTSER(:new.SERNUM3002) and ORDNUM90= :new.ORDNUM3002 and MNTOPE90= :new.MNTOPE3002;
            UPDATE FL3098 set SU3098=0 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T009' and AGCNUM98= :new.AGCNUM3002 
            and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T010') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          OLDCPT := :old.AGXOPE3002 || to_char(:old.NAXOPE3002) || to_char(:old.ORXOPE3002) || to_char(:old.KLXOPE3002);
          NEWCPT := :new.AGXOPE3002 || to_char(:new.NAXOPE3002) || to_char(:new.ORXOPE3002) || to_char(:new.KLXOPE3002);
          if :old.MNTOPE3002 is null then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND 
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,
            NATCPT98,ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ( '0' , :new.DATOPE3002 , 'T010' ,
            :new.AGCNUM3002 , :new.SERNUM3002 ,:new.ORDNUM3002 ,'1','',:new.AGXOPE3002,:new.NAXOPE3002,:new.ORXOPE3002,
            :new.KLXOPE3002,:new.DATOPE3002 ,'VIR ','-',:new.MNTOPE3002);
            UPDATE FL1091 set SU1091=1 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT = NEWCPT) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :old.MNTOPE3002 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T010' and 
            AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            UPDATE FL1091 set SU1091=0 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :old.MNTOPE3002;
            UPDATE FL1091 set SU1091=1 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT != NEWCPT) and (:old.MNTOPE3002 = :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :old.MNTOPE3002;
            SLDCPT2 := SLDCPT2 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE3002, NATCPT98 = :new.NAXOPE3002, ORDCPT98 = :new.ORXOPE3002, 
            KLECPT98 = :new.KLXOPE3002, MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T010' 
            and AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
          end if;
          if (:old.MNTOPE3002 is not null) and (OLDCPT != NEWCPT) and (:old.MNTOPE3002 != :new.MNTOPE3002) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :old.MNTOPE3002;
            SLDCPT2 := SLDCPT2 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE3002 and CODNAT1030  = :old.NAXOPE3002 AND
            ORDCPT1030  = :old.ORXOPE3002 AND KLECPT1030  = :old.KLXOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND 
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE3002, NATCPT98 = :new.NAXOPE3002, ORDCPT98 = :new.ORXOPE3002, 
            KLECPT98 = :new.KLXOPE3002, MNTOPE98 = :new.MNTOPE3002 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T010' 
            and AGCNUM98= :new.AGCNUM3002 and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            UPDATE FL1091 set SU1091=0 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :old.MNTOPE3002;
            UPDATE FL1091 set SU1091=1 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1091 set SU1091=0 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
            UPDATE FL3098 set SU3098=1 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T010' and AGCNUM98= :new.AGCNUM3002
            and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 + :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1091 set SU1091=1 where TESTAGC(AGCNUM91)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM91)=TESTSER(:new.SERNUM3002) and ORDNUM91= :new.ORDNUM3002 and MNTOPE91= :new.MNTOPE3002;
            UPDATE FL3098 set SU3098=0 where DATOPE98 = :new.DATOPE3002 and CODOPE98 = 'T010' and AGCNUM98= :new.AGCNUM3002 
            and SERNUM98= :new.SERNUM3002 and ORDNUM98= :new.ORDNUM3002 and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 
            AND ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
            SLDCPT1 := SLDCPT1 - :new.MNTOPE3002;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE3002 and CODNAT1030  = :new.NAXOPE3002 AND
            ORDCPT1030  = :new.ORXOPE3002 AND KLECPT1030  = :new.KLXOPE3002;
       end if;
     end if;
     if (:new.CODOPE3002 = 'T021') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            UPDATE FL1071 set SU1071=1 where TESTAGC(AGCNUM71)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM71)=TESTSER(:new.SERNUM3002) and ORDNUM71= :new.ORDNUM3002 and MNTOPE71= :new.MNTOPE3002 and
            ENGOPE71= :new.ENGOPE3002;
            Insert into FL1073 (SU1073,AGCNUM73,SERNUM73,ORDNUM73,MNTOPE73,ENGOPE73,BAQOPE73,CPTAGC73,CPTNAT73,CPTORD73,
            CPTCLE73,DATFLC73,DATFLD73,NOMCPT73,AGYOPE73,PTTOPE73,ECHOPE73,DSCOPE73,DATDCP73,BLKOPE73,ACCEFF73,RESEFF73,
            DATRES73,ETAEFF73)  values ( '0',trim(:new.AGCNUM3002),trim(:new.SERNUM3002),:new.ORDNUM3002,:new.MNTOPE3002,
            :new.ENGOPE3002,'',:new.AGXOPE3002,:new.NAXOPE3002,:new.ORXOPE3002,:new.KLXOPE3002,:new.DATOPE3002,'',
            :new.DSCOPE3002,:new.AGYOPE3002,'',:new.ECHOPE3002,:new.DSCOPE3002,'','','','',:new.CREEFF3002,'01');
          end if;
          if (:old.MNTOPE3002 is not null) then
            UPDATE FL1071 set SU1071=1 where TESTAGC(AGCNUM71)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM71)=TESTSER(:new.SERNUM3002) and ORDNUM71= :new.ORDNUM3002 and MNTOPE71= :new.MNTOPE3002 and 
            ENGOPE71= :new.ENGOPE3002;
            UPDATE FL1073 set SU1073=0,AGCNUM73=trim(:new.AGCNUM3002),SERNUM73=trim(:new.SERNUM3002),
            ORDNUM73=:new.ORDNUM3002,MNTOPE73=:new.MNTOPE3002,ENGOPE73=:new.ENGOPE3002,BAQOPE73='',
            CPTAGC73=:new.AGXOPE3002,CPTNAT73=:new.NAXOPE3002,CPTORD73=:new.ORXOPE3002,CPTCLE73=:new.KLXOPE3002,
            DATFLC73=:new.DATOPE3002,DATFLD73='',NOMCPT73=:new.DSCOPE3002,AGYOPE73=:new.AGYOPE3002,PTTOPE73='',
            ECHOPE73=:new.ECHOPE3002,DSCOPE73=:new.DSCOPE3002,DATDCP73='',BLKOPE73='',ACCEFF73='',RESEFF73='',
            DATRES73=:new.CREEFF3002,ETAEFF73='01'  where AGCNUM73= :new.AGCNUM3002 and SERNUM73= :new.SERNUM3002 and 
            ORDNUM73= :new.ORDNUM3002 and MNTOPE73= :new.MNTOPE3002 and ENGOPE73= :new.ENGOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1071 set SU1071=0 where TESTAGC(AGCNUM71)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM71)=TESTSER(:new.SERNUM3002) and ORDNUM71= :new.ORDNUM3002 and MNTOPE71= :new.MNTOPE3002 
            and ENGOPE71= :new.ENGOPE3002;
            UPDATE FL1073 set SU1073=1 where TESTAGC(AGCNUM73)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM73)=TESTSER(:new.SERNUM3002) and ORDNUM73= :new.ORDNUM3002 and MNTOPE73= :new.MNTOPE3002 
            and ENGOPE73= :new.ENGOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1071 set SU1071=1 where TESTAGC(AGCNUM71)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM71)=TESTSER(:new.SERNUM3002) and ORDNUM71= :new.ORDNUM3002 and MNTOPE71= :new.MNTOPE3002 and 
            ENGOPE71= :new.ENGOPE3002;
            UPDATE FL1073 set SU1073=0 where TESTAGC(AGCNUM73)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM73)=TESTSER(:new.SERNUM3002) and ORDNUM73= :new.ORDNUM3002 and MNTOPE73= :new.MNTOPE3002 and
            ENGOPE73= :new.ENGOPE3002;
       end if;
     end if;

     if (:new.CODOPE3002 = 'T092') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTOPE3002 is null then
            UPDATE FL1073 set SU1073=1 where TESTAGC(AGCNUM73)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM73)=TESTSER(:new.SERNUM3002) and ORDNUM73= :new.ORDNUM3002 and MNTOPE73= :new.MNTOPE3002 and
            ENGOPE73= :new.ENGOPE3002;
          end if;
          if (:old.MNTOPE3002 is not null) and ((:old.MNTOPE3002 != :new.MNTOPE3002) or 
          (:old.ENGOPE3002 != :new.ENGOPE3002)) then
            UPDATE FL1073 set SU1073=0 where TESTAGC(AGCNUM73)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM73)=TESTSER(:new.SERNUM3002) and ORDNUM73= :new.ORDNUM3002 and MNTOPE73= :old.MNTOPE3002 and 
            ENGOPE73= :old.ENGOPE3002;
            UPDATE FL1073 set SU1073=1 where TESTAGC(AGCNUM73)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM73)=TESTSER(:new.SERNUM3002) and ORDNUM73= :new.ORDNUM3002 and MNTOPE73= :new.MNTOPE3002 
            and ENGOPE73= :new.ENGOPE3002;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL1073 set SU1073=0 where TESTAGC(AGCNUM73)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM73)=TESTSER(:new.SERNUM3002) and ORDNUM73= :new.ORDNUM3002 and MNTOPE73= :new.MNTOPE3002 
            and ENGOPE73= :new.ENGOPE3002;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL1073 set SU1073=1 where TESTAGC(AGCNUM73)=TESTAGC(:new.AGCNUM3002) and 
            TESTSER(SERNUM73)=TESTSER(:new.SERNUM3002) and ORDNUM73= :new.ORDNUM3002 and MNTOPE73= :new.MNTOPE3002 
            and ENGOPE73= :new.ENGOPE3002;
       end if;
     end if;

END;
/
ALTER TRIGGER "TRIGGER_FL1000" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FL1019
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIGGER_FL1019" 
AFTER INSERT OR UPDATE OF SU1019, AGXOPE19, NAXOPE19, ORXOPE19, KLXOPE19, MNTDBI19, MNTCRE19 ON FL1019
FOR EACH ROW
DECLARE
  SLDCPT1 FL1019.MNTDBI19%Type;
  SLDCPT2 FL1019.MNTDBI19%Type;
  OLDCPT string(10);
  NEWCPT string(10);
  CODMAJ string(2) := 'CM';
  AGCNUM string(2);
  SERNUM string(1);
  ORDNUM number(7);
BEGIN
     AGCNUM := substr(LPAD(TO_CHAR(:new.REFOPE19), 10, '0'),1,2);
     SERNUM := substr(LPAD(TO_CHAR(:new.REFOPE19), 10, '0'),3,1);
     ORDNUM := TO_NUMBER(substr(LPAD(TO_CHAR(:new.REFOPE19), 10, '0'),4,7));
     if (:old.SU1019 = 0) and (:new.SU1019 = 1) then
        CODMAJ := 'SU';
     end if;
     if (:old.SU1019 = 1) and (:new.SU1019 = 0) then
        CODMAJ := 'RE';
     end if;

     if (:new.CODOPE19 = 'T087') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          OLDCPT := :old.AGXOPE19 || to_char(:old.NAXOPE19) || to_char(:old.ORXOPE19) || to_char(:old.KLXOPE19);
          NEWCPT := :new.AGXOPE19 || to_char(:new.NAXOPE19) || to_char(:new.ORXOPE19) || to_char(:new.KLXOPE19);
          if :old.MNTDBI19 is null then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 - :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,NATCPT98,
            ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ( '0' , :new.DATOPE19 , 'T087' ,AGCNUM , 
            SERNUM ,ORDNUM ,'1','',:new.AGXOPE19,:new.NAXOPE19,:new.ORXOPE19,:new.KLXOPE19,:new.DATOPE19 ,:new.ABROPE19,
            '-',:new.MNTDBI19);
          end if;
          if (:old.MNTDBI19 is not null) and (OLDCPT = NEWCPT) and (:old.MNTDBI19 != :new.MNTDBI19) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 + :old.MNTDBI19 - :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            UPDATE FL3098 set MNTOPE98 = :new.MNTDBI19 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T087' and 
            AGCNUM98= AGCNUM and SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
          end if;
          if (:old.MNTDBI19 is not null) and (OLDCPT != NEWCPT) and (:old.MNTDBI19 = :new.MNTDBI19) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE19 and CODNAT1030  = :old.NAXOPE19 
            AND ORDCPT1030  = :old.ORXOPE19 AND KLECPT1030  = :old.KLXOPE19;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 + :old.MNTDBI19;
            SLDCPT2 := SLDCPT2 - :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE19 and CODNAT1030  = :old.NAXOPE19 AND 
            ORDCPT1030  = :old.ORXOPE19 AND KLECPT1030  = :old.KLXOPE19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND 
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE19, NATCPT98 = :new.NAXOPE19, ORDCPT98 = :new.ORXOPE19, 
            KLECPT98 = :new.KLXOPE19, MNTOPE98 = :new.MNTDBI19 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T087' and 
            AGCNUM98= AGCNUM and SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
          end if;
          if (:old.MNTDBI19 is not null) and (OLDCPT != NEWCPT) and (:old.MNTDBI19 != :new.MNTDBI19) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE19 and CODNAT1030  = :old.NAXOPE19 AND
            ORDCPT1030  = :old.ORXOPE19 AND KLECPT1030  = :old.KLXOPE19;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND 
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 + :old.MNTDBI19;
            SLDCPT2 := SLDCPT2 - :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE19 and CODNAT1030  = :old.NAXOPE19 AND 
            ORDCPT1030  = :old.ORXOPE19 AND KLECPT1030  = :old.KLXOPE19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND 
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE19, NATCPT98 = :new.NAXOPE19, ORDCPT98 = :new.ORXOPE19, 
            KLECPT98 = :new.KLXOPE19, MNTOPE98 = :new.MNTDBI19 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T087' and 
            AGCNUM98= AGCNUM and SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3098 set SU3098=1 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T087' and AGCNUM98= AGCNUM 
            and SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 + :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3098 set SU3098=0 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T087' and AGCNUM98= AGCNUM 
            and SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 - :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
       end if;
     end if;

     if (:new.CODOPE19 = 'T088') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          OLDCPT := :old.AGXOPE19 || to_char(:old.NAXOPE19) || to_char(:old.ORXOPE19) || to_char(:old.KLXOPE19);
          NEWCPT := :new.AGXOPE19 || to_char(:new.NAXOPE19) || to_char(:new.ORXOPE19) || to_char(:new.KLXOPE19);
          if :old.MNTDBI19 is null then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 + :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            Insert into FL3098 (SU3098,DATOPE98,CODOPE98,AGCNUM98,SERNUM98,ORDNUM98,NUMORD98,FILLER98,AGCCPT98,NATCPT98,
            ORDCPT98,KLECPT98,DATOPE8,ABROPE98,SMNTOPE98,MNTOPE98)  values ( '0' , :new.DATOPE19 , 'T088' ,AGCNUM , 
            SERNUM ,ORDNUM ,'1','',:new.AGXOPE19,:new.NAXOPE19,:new.ORXOPE19,:new.KLXOPE19,:new.DATOPE19 ,:new.ABROPE19,
            '0',:new.MNTDBI19);
          end if;
          if (:old.MNTDBI19 is not null) and (OLDCPT = NEWCPT) and (:old.MNTDBI19 != :new.MNTDBI19) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 - :old.MNTDBI19 + :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            UPDATE FL3098 set MNTOPE98 = :new.MNTDBI19 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T088' and 
            AGCNUM98= AGCNUM and SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
          end if;
          if (:old.MNTDBI19 is not null) and (OLDCPT != NEWCPT) and (:old.MNTDBI19 = :new.MNTDBI19) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE19 and CODNAT1030  = :old.NAXOPE19 
            AND ORDCPT1030  = :old.ORXOPE19 AND KLECPT1030  = :old.KLXOPE19;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 
            AND ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 - :old.MNTDBI19;
            SLDCPT2 := SLDCPT2 + :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE19 and CODNAT1030  = :old.NAXOPE19 AND
            ORDCPT1030  = :old.ORXOPE19 AND KLECPT1030  = :old.KLXOPE19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE19, NATCPT98 = :new.NAXOPE19, ORDCPT98 = :new.ORXOPE19, 
            KLECPT98 = :new.KLXOPE19, MNTOPE98 = :new.MNTDBI19 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T088' and 
            AGCNUM98= AGCNUM and SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
          end if;
          if (:old.MNTDBI19 is not null) and (OLDCPT != NEWCPT) and (:old.MNTDBI19 != :new.MNTDBI19) then
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :old.AGXOPE19 and CODNAT1030  = :old.NAXOPE19 AND
            ORDCPT1030  = :old.ORXOPE19 AND KLECPT1030  = :old.KLXOPE19;
            SELECT SLDCPT10 INTO SLDCPT2 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 - :old.MNTDBI19;
            SLDCPT2 := SLDCPT2 + :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :old.AGXOPE19 and CODNAT1030  = :old.NAXOPE19 AND 
            ORDCPT1030  = :old.ORXOPE19 AND KLECPT1030  = :old.KLXOPE19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT2 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND 
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            UPDATE FL3098 set AGCCPT98 = :new.AGXOPE19, NATCPT98 = :new.NAXOPE19, ORDCPT98 = :new.ORXOPE19, 
            KLECPT98 = :new.KLXOPE19, MNTOPE98 = :new.MNTDBI19 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T088' and 
            AGCNUM98= AGCNUM and SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3098 set SU3098=1 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T088' and AGCNUM98= AGCNUM and 
            SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 - :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND 
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3098 set SU3098=0 where DATOPE98 = :new.DATOPE19 and CODOPE98 = 'T088' and AGCNUM98= AGCNUM and 
            SERNUM98= SERNUM and ORDNUM98= ORDNUM and NUMORD98 =  '1';
            SELECT SLDCPT10 INTO SLDCPT1 from FL1030 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
            SLDCPT1 := SLDCPT1 + :new.MNTDBI19;
            UPDATE FL1030 SET SLDCPT10 = SLDCPT1 where CODAGC1030 = :new.AGXOPE19 and CODNAT1030  = :new.NAXOPE19 AND 
            ORDCPT1030  = :new.ORXOPE19 AND KLECPT1030  = :new.KLXOPE19;
       end if;
     end if;

     if (:new.CODOPE19 = 'T007') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTDBI19 is null then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :new.MNTDBI19;
          end if;
          if (:old.MNTDBI19 is not null) and (:old.MNTDBI19 != :new.MNTDBI19) then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :old.MNTDBI19;
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :new.MNTDBI19;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :new.MNTDBI19;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :new.MNTDBI19;
       end if;
     end if;

     if (:new.CODOPE19 = 'T008') then
       if (CODMAJ != 'SU') and (CODMAJ != 'RE') then
          if :old.MNTCRE19 is null then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :new.MNTCRE19;
          end if;
          if (:old.MNTCRE19 is not null) and (:old.MNTCRE19 != :new.MNTcre19) then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :old.MNTCRE19;
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :new.MNTCRE19;
          end if;
       end if;

       if (CODMAJ = 'SU') then
            UPDATE FL3195 set SU3195=0 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :new.MNTCRE19;
       end if;

       if (CODMAJ = 'RE') then
            UPDATE FL3195 set SU3195=1 where TESTAGC(AGCNUM95)=TESTAGC(:new.AGCOPE19) and 
            TESTSER(SERNUM95)=TESTSER(:new.SEROPE19) and ORDNUM95= :new.ORDOPE19 and MNTOPE95= :new.MNTCRE19;
       end if;
     end if;

END;
/
ALTER TRIGGER "TRIGGER_FL1019" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FL1030
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIGGER_FL1030" AFTER INSERT OR UPDATE ON FL1030
FOR EACH ROW
DECLARE
  CODMAJ string(1);
BEGIN
  if (:old.CODAGC1030 is null) and (:old.CODNAT1030 is null) and (:old.ORDCPT1030 is null) and 
  (:old.KLECPT1030 is null) then
     CODMAJ := 'C';
  else
     CODMAJ := 'M';
  end if;

 if CODMAJ = 'C' then
     Insert into ME1030 (SU1030M,CODAGC1030M,CODNAT1030M,ORDCPT1030M,KLECPT1030M,DVSCPT1030M,CODACT1030M,CGLCPT1030M,
                 CODPTT1030AM,CODPAY1030M,CATCLT1030M,CODDOC1030M,ORDDOC1030M,DATLIV1030M,LIELIV10M,
                 CODDOC1030AM,CODPTT1030BM,BIDE1030M,NOMRSCM,ADRPRSM,EMPOUV10M,DNECPT10M,SRVCPT10M,SGNSLD10M,
                 SLDCPT10M,SLCCPT10M,CODUTL10M,PPLAGC30M,PPLNAT30M,PPLORD30M,PPLCLE30M,CLASSE30M,PRFL10M,PRFM10M,PRFN10M,DBICPT10M,BIDCPT30M,
                 NBCDVC10M,PRGSEC10M,DATSEC10M,INTCHQ10M,OUVCPT10M,CLOCPT10M,SEXCPT10M,NAICPT10M,SARCPT10M,JNTCPT10M,
                 FRMCPT10M,
                 INDCHO10M,INDEFO10M,ADRPRF30M,CODAVO10M,COTSGN10M,COTCRC10M,NBRIMC10M,MTFOUV10M,CODCLO10M,NIVCPT10M,
                 MTFCLO10M,FONCPT10M,INDTEL10M,TELCPT10M,NBRIMF10M,PTTRGC30M,NBRMCR10M,INVADR10M,AGOCPT10M,SLDAMY10M,
                 UTLCPT10M,
                 BLKCPT10M,SLDMMY10M,SLDMMX10M,SLDMMI10M,MVDMOI10M,CODOPE29M,MVCANN10M,CHQCPT10M,INDRCS10M,INFRCS10M,
                 NUMRCS10M,
                 ANNRCS10M,CCACPT10M,NUMBCT10M,DATBCT10M,PRFP10M,PRFQ10M,PRFJJ10M,MATBCT30M,QLTGRN10M,OPTCHQ10M,
                 EFFCPT10M,
                 NOMRPR10M,NUMANL10M,INFCMP10M)
            values
                 ('C',:new.CODAGC1030,:new.CODNAT1030,:new.ORDCPT1030,:new.KLECPT1030,:new.DVSCPT1030,:new.CODACT1030,
                 :new.CGLCPT1030,
                 :new.CODPTT1030A,:new.CODPAY1030,:new.CATCLT1030,:new.CODDOC1030,:new.ORDDOC1030,:new.DATLIV1030,
                 :new.LIELIV10,
                 :new.CODDOC1030A,:new.CODPTT1030B,:new.BIDE1030,:new.NOMRSC,:new.ADRPRS,:new.EMPOUV10,:new.DNECPT10,:new.SRVCPT10,:new.SGNSLD10,:new.SLDCPT10,:new.SLCCPT10,
                 :new.CODUTL10,:new.PPLAGC30,:new.PPLNAT30,:new.PPLORD30,:new.PPLCLE30,:new.CLASSE30,:new.PRFL10,
                 :new.PRFM10,:new.PRFN10,:new.DBICPT10,:new.BIDCPT30,
                 :new.NBCDVC10,:new.PRGSEC10,:new.DATSEC10,:new.INTCHQ10,:new.OUVCPT10,:new.CLOCPT10,:new.SEXCPT10,
                 :new.NAICPT10,:new.SARCPT10,:new.JNTCPT10,:new.FRMCPT10,
                 :new.INDCHO10,:new.INDEFO10,:new.ADRPRF30,:new.CODAVO10,:new.COTSGN10,:new.COTCRC10,:new.NBRIMC10,
                 :new.MTFOUV10,:new.CODCLO10,:new.NIVCPT10,
                 :new.MTFCLO10,:new.FONCPT10,:new.INDTEL10,:new.TELCPT10,:new.NBRIMF10,:new.PTTRGC30,:new.NBRMCR10,
                 :new.INVADR10,:new.AGOCPT10,:new.SLDAMY10,:new.UTLCPT10,
                 :new.BLKCPT10,:new.SLDMMY10,:new.SLDMMX10,:new.SLDMMI10,:new.MVDMOI10,:new.CODOPE29,:new.MVCANN10,
                 :new.CHQCPT10,:new.INDRCS10,:new.INFRCS10,:new.NUMRCS10,
                 :new.ANNRCS10,:new.CCACPT10,:new.NUMBCT10,:new.DATBCT10,:new.PRFP10,:new.PRFQ10,:new.PRFJJ10,
                 :new.MATBCT30,:new.QLTGRN10,:new.OPTCHQ10,:new.EFFCPT10,
                 :new.NOMRPR10,:new.NUMANL10,:new.INFCMP10);
 end if;

 if CODMAJ = 'M' then
     Insert into ME1030 (SU1030M,CODAGC1030M,CODNAT1030M,ORDCPT1030M,KLECPT1030M,DVSCPT1030M,CODACT1030M,CGLCPT1030M,
                 CODPTT1030AM,CODPAY1030M,CATCLT1030M,CODDOC1030M,ORDDOC1030M,DATLIV1030M,LIELIV10M,
                 CODDOC1030AM,CODPTT1030BM,BIDE1030M,NOMRSCM,ADRPRSM,EMPOUV10M,DNECPT10M,SRVCPT10M,SGNSLD10M,SLDCPT10M,
                 SLCCPT10M,
                 CODUTL10M,PPLAGC30M,PPLNAT30M,PPLORD30M,PPLCLE30M,CLASSE30M,PRFL10M,PRFM10M,PRFN10M,DBICPT10M,BIDCPT30M,
                 NBCDVC10M,PRGSEC10M,DATSEC10M,INTCHQ10M,OUVCPT10M,CLOCPT10M,SEXCPT10M,NAICPT10M,SARCPT10M,JNTCPT10M,
                 FRMCPT10M,
                 INDCHO10M,INDEFO10M,ADRPRF30M,CODAVO10M,COTSGN10M,COTCRC10M,NBRIMC10M,MTFOUV10M,CODCLO10M,NIVCPT10M,
                 MTFCLO10M,FONCPT10M,INDTEL10M,TELCPT10M,NBRIMF10M,PTTRGC30M,NBRMCR10M,INVADR10M,AGOCPT10M,SLDAMY10M,
                 UTLCPT10M,
                 BLKCPT10M,SLDMMY10M,SLDMMX10M,SLDMMI10M,MVDMOI10M,CODOPE29M,MVCANN10M,CHQCPT10M,INDRCS10M,INFRCS10M,
                 NUMRCS10M,
                 ANNRCS10M,CCACPT10M,NUMBCT10M,DATBCT10M,PRFP10M,PRFQ10M,PRFJJ10M,MATBCT30M,QLTGRN10M,OPTCHQ10M,EFFCPT10M,
                 NOMRPR10M,NUMANL10M,INFCMP10M)
            values
                 ('M',:new.CODAGC1030,:new.CODNAT1030,:new.ORDCPT1030,:new.KLECPT1030,:new.DVSCPT1030,:new.CODACT1030,
                 (CASE  WHEN (:new.CGLCPT1030='      ') THEN  null ELSE :new.CGLCPT1030 END),
                 :new.CODPTT1030A,:new.CODPAY1030,:new.CATCLT1030,:new.CODDOC1030,:new.ORDDOC1030,:new.DATLIV1030,
                 :new.LIELIV10,
                 :new.CODDOC1030A,:new.CODPTT1030B,:new.BIDE1030,:new.NOMRSC,:new.ADRPRS,:new.EMPOUV10,:new.DNECPT10,
                 :new.SRVCPT10,:new.SGNSLD10,:new.SLDCPT10,:new.SLCCPT10,
                 :new.CODUTL10,:new.PPLAGC30,:new.PPLNAT30,:new.PPLORD30,:new.PPLCLE30,:new.CLASSE30,:new.PRFL10,
                 :new.PRFM10,:new.PRFN10,:new.DBICPT10,:new.BIDCPT30,
                 :new.NBCDVC10,:new.PRGSEC10,:new.DATSEC10,:new.INTCHQ10,:new.OUVCPT10,:new.CLOCPT10,:new.SEXCPT10,
                 :new.NAICPT10,:new.SARCPT10,:new.JNTCPT10,:new.FRMCPT10,
                 :new.INDCHO10,:new.INDEFO10,:new.ADRPRF30,:new.CODAVO10,:new.COTSGN10,:new.COTCRC10,:new.NBRIMC10,
                 :new.MTFOUV10,:new.CODCLO10,:new.NIVCPT10,
                 :new.MTFCLO10,:new.FONCPT10,:new.INDTEL10,:new.TELCPT10,:new.NBRIMF10,:new.PTTRGC30,:new.NBRMCR10,
                 :new.INVADR10,:new.AGOCPT10,:new.SLDAMY10,:new.UTLCPT10,
                 :new.BLKCPT10,:new.SLDMMY10,:new.SLDMMX10,:new.SLDMMI10,:new.MVDMOI10,:new.CODOPE29,:new.MVCANN10,
                 :new.CHQCPT10,:new.INDRCS10,:new.INFRCS10,:new.NUMRCS10,
                 :new.ANNRCS10,:new.CCACPT10,:new.NUMBCT10,:new.DATBCT10,:new.PRFP10,:new.PRFQ10,:new.PRFJJ10,
                 :new.MATBCT30,:new.QLTGRN10,:new.OPTCHQ10,:new.EFFCPT10,
                 :new.NOMRPR10,:new.NUMANL10,:new.INFCMP10);
 end if;
EXCEPTION
WHEN DUP_VAL_ON_INDEX THEN
  UPDATE ME1030 set SU1030M='M',CODAGC1030M=:new.CODAGC1030,CODNAT1030M=:new.CODNAT1030,ORDCPT1030M=:new.ORDCPT1030,
  KLECPT1030M=:new.KLECPT1030,DVSCPT1030M=:new.DVSCPT1030,CODACT1030M=:new.CODACT1030,
  CGLCPT1030M=(CASE  WHEN (:new.CGLCPT1030='      ') THEN  null ELSE :new.CGLCPT1030 END),
                 CODPTT1030AM=:new.CODPTT1030A,CODPAY1030M=:new.CODPAY1030,CATCLT1030M=:new.CATCLT1030,
                 CODDOC1030M=:new.CODDOC1030,ORDDOC1030M=:new.ORDDOC1030,DATLIV1030M=:new.DATLIV1030,
                 LIELIV10M=:new.LIELIV10,
                 CODDOC1030AM=:new.CODDOC1030A,CODPTT1030BM=:new.CODPTT1030B,BIDE1030M=:new.BIDE1030,
                 NOMRSCM=:new.NOMRSC,ADRPRSM=:new.ADRPRS,EMPOUV10M=:new.EMPOUV10,DNECPT10M=:new.DNECPT10,
                 SRVCPT10M=:new.SRVCPT10,SGNSLD10M=:new.SGNSLD10,SLDCPT10M=:new.SLDCPT10,SLCCPT10M=:new.SLCCPT10,
                 CODUTL10M=:new.CODUTL10,PPLAGC30M=:new.PPLAGC30,PPLNAT30M=:new.PPLNAT30,PPLORD30M=:new.PPLORD30,
                 PPLCLE30M=:new.PPLCLE30,CLASSE30M=:new.CLASSE30,PRFL10M=:new.PRFL10,PRFM10M=:new.PRFM10,
                 PRFN10M=:new.PRFN10,DBICPT10M=:new.DBICPT10,BIDCPT30M=:new.BIDCPT30,
                 NBCDVC10M=:new.NBCDVC10,PRGSEC10M=:new.PRGSEC10,DATSEC10M=:new.DATSEC10,INTCHQ10M=:new.INTCHQ10,
                 OUVCPT10M=:new.OUVCPT10,CLOCPT10M=:new.CLOCPT10,SEXCPT10M=:new.SEXCPT10,NAICPT10M=:new.NAICPT10,
                 SARCPT10M=:new.SARCPT10,JNTCPT10M=:new.JNTCPT10,FRMCPT10M=:new.FRMCPT10,
                 INDCHO10M=:new.INDCHO10,INDEFO10M=:new.INDEFO10,ADRPRF30M=:new.ADRPRF30,CODAVO10M=:new.CODAVO10,
                 COTSGN10M=:new.COTSGN10,COTCRC10M=:new.COTCRC10,NBRIMC10M=:new.NBRIMC10,MTFOUV10M=:new.MTFOUV10,
                 CODCLO10M=:new.CODCLO10,NIVCPT10M=:new.NIVCPT10,
                 MTFCLO10M=:new.MTFCLO10,FONCPT10M=:new.FONCPT10,INDTEL10M=:new.INDTEL10,TELCPT10M=:new.TELCPT10,
                 NBRIMF10M=:new.NBRIMF10,PTTRGC30M=:new.PTTRGC30,NBRMCR10M=:new.NBRMCR10,INVADR10M=:new.INVADR10,
                 AGOCPT10M=:new.AGOCPT10,SLDAMY10M=:new.SLDAMY10,UTLCPT10M=:new.UTLCPT10,
                 BLKCPT10M=:new.BLKCPT10,SLDMMY10M=:new.SLDMMY10,SLDMMX10M=:new.SLDMMX10,SLDMMI10M=:new.SLDMMI10,
                 MVDMOI10M=:new.MVDMOI10,CODOPE29M=:new.CODOPE29,MVCANN10M=:new.MVCANN10,CHQCPT10M=:new.CHQCPT10,
                 INDRCS10M=:new.INDRCS10,INFRCS10M=:new.INFRCS10,NUMRCS10M=:new.NUMRCS10,
                 ANNRCS10M=:new.ANNRCS10,CCACPT10M=:new.CCACPT10,NUMBCT10M=:new.NUMBCT10,DATBCT10M=:new.DATBCT10,
                 PRFP10M=:new.PRFP10,PRFQ10M=:new.PRFQ10,PRFJJ10M=:new.PRFJJ10,MATBCT30M=:new.MATBCT30,
                 QLTGRN10M=:new.QLTGRN10,OPTCHQ10M=:new.OPTCHQ10,EFFCPT10M=:new.EFFCPT10,
                 NOMRPR10M=:new.NOMRPR10,NUMANL10M=:new.NUMANL10,INFCMP10M=:new.INFCMP10 where 
                 CODAGC1030M=:new.CODAGC1030 and CODNAT1030M=:new.CODNAT1030 and ORDCPT1030M=:new.ORDCPT1030 and 
                 KLECPT1030M=:new.KLECPT1030 and SU1030M='M';
WHEN OTHERS	THEN NULL;

END;
/
ALTER TRIGGER "TRIGGER_FL1030" ENABLE;

--------------------------------------------------------
--  DDL for Table FL5520
--------------------------------------------------------

REM INSERTING into FL5520
SET DEFINE OFF;
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T148','RECEPT CORRESPONDANCE HUISSIER NOTAIRE  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T149','REC PV RESULTAT MISSION HUISSIER NOTAIRE');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T150','NOT PV SAISIE ARRET DESIG EXPERT/HUI.NOT');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T001','EXTRAIT DE COMPTE                       ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T009','APUREMENT CREDIT A REGULARISER/CRED CLT ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T010','APUREMENT DEBIT A REGULARISER/DEBIT CPT ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T011','APUREMENT DEBIT A REGULARISER / MEG AGEN');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T013','APUREMENT CREDIT A REGULARISER / MEG AGC');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T014','PAIEMENT INTERET DE RETARD / DBI CPT    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T016','AGIOS PAR CREDIT A REGULARISER          ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T017','AGIOS PAR CREDIT CLIENT                 ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T018','AGIOS PAR DEBIT A REGULARISER           ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T019','AGIOS PAR DEBIT DE COMPTE               ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T021','VALIDATION ENG/SGN PARVENU DE L''AGENCE  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T031','VALIDATION EFFET EN ENTREE AU CTX       ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T032','APUREMENT EFFETS IMPAYES/DEBIT COMPTE   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T033','EVALUATION INTERET DE RETARD            ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T134','REACTIVATION D''UN DOSSIER               ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T035','APUREMENT MEG RECU (DB)/CREDIT A REGULAR');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T036','APUREMENT MEG RECU (DB)/CREDIT CLIENT   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T037','APUREMENT MEG RECU (DB)/ REJET          ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T038','APUREMENT MEG RECU (CR)/ DEBIT A REGULAR');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T039','APUREMENT MEG RECU (CR)/ DEBIT CPT CLIEN');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T040','APUREMENT MEG RECU (CR)/REJET           ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T041','REJET EFFET EN ENTREE RECU DE L''AGENCE  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T042','ACCEPTATION EFFET EN ENTREE RECU DU PFC ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T043','APUREMENT EFFET IMPAYE/ DEBIT A REGULARI');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T044','CLOTURE  DU   COMPTE                    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T045','MEG GLOBAL EFFET IMPAYE                 ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T046','MEG DETAIL EFFET IMPAYE                 ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T057','CREATION MOUVEMENT CLIENT               ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T066','ENGAGEMENT PAR SIGNATURE                ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T067','CREDIT A REGULARISER                    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T068','DEBIT A REGULARISER                     ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T087','DEBIT COMPTE CLIENT                     ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T088','CREDIT COMPTE CLIENT                    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T089','DEBIT COMPTE GENERAL                    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T090','CREDIT COMPTE GENERAL                   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T091','CONSULTATION DE SOLDE                   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T092','MAIN LEVE SUR ENGAGEMENT PAR SIGNATURE  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T101','OUVERTURE COMPTE PERSONNE PHYSIQUE      ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T102','OUVERT COMPTE PERS. PHYSIQUE COMMERCANTE');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T103','OUVERTURE COMPTE PERSONNE MORALE        ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T104','MAJ CODE SURVEILLANCE                   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T105','FRAIS ENREGISTREMENT VALEUR             ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T106','FRAIS PRESTATAIRE PAR VIREMENT AGENCE   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T107','FRAIS ENREGISTREMENT JUGEMENT           ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T108','FRAIS D''EXPERT                          ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T109','FRAIS DE TIMBRAGE                       ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T110','CREATION AVOCAT/HUISSIER                ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T111','FRAIS PRESTATAIRE PAR CHEQUE BCT        ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T151','REC. PV SIGN SAISIE ARRET/ASS(HUIS. NOT)');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T152','REC. PV REPARTITION AMIABLE (HUISS. NOT)');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T153','ENVOI CORRESPONDANCE (A UN EXPERT)      ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T154','RECEPTION CORRESPONDANCE D''UN EXPER     ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T155','RECEPTION RAPPORT D''EXPERTISE EXPERT    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T156','P T T                                   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T157','D A T E                                 ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T158','A C T I V I T E                         ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T162','CREATION D''UN PRESTATAIRE               ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T164','G A R A N T I E                         ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T165','FICHIER EFFETS                          ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T172','NATURE COMPTE                           ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T185','B A N Q U E                             ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T050','CREATION ENG / SIGN 1073                ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T051','CREATION EFFET PFC/CTX                  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T052','REJET ENGAGEMENT PAR SIGNATURE          ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T053','REJET EFFET EN ENTREE AU CONTENTIEUX    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T030','CREATION MEG RECU DE L''AGENCE           ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T008','APUREMENT MEG CREDIT RECU EN TND        ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T007','APUREMENT MEG DEBIT RECU EN TND         ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T029','CREANCES DE DEPART                      ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T004','APUREMENT DEBIT A REGULARISER / MEG RECU');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T005','APUREMENT CREDIT A REGULARISER /MEG RECU');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','A047','ANNULATION EFFET EN ENTREE RECU DU PFC  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T047','ANNULATION EFFET EN ENTREE RECU DU PFC  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T049','RETOUR DES GARANTIES VERS LE JURIDIQUE  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T048','REPRISE EFFET IMPAYE RECU DU PFC        ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T058','CREATION 1002                           ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','K700','MEG CREDIT EN DINARS                    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','K701','MEG DEBIT EN DINARS                     ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','K702','MEG CREDIT EN DEVISES                   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','K703','MEG CREDIT EN DEVISES                   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','K040','APUREMENT MEG DB RECU EN TND            ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','K041','APUREMENT MEG CREDIT RECU EN TND        ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T083','TRANSFERT COMPTE DEBITEUR VERS L''AGENCE ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T084','TRANSFERT COMPTE CREDITEUR VERS L''AGENCE');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T023','DATE D''OUVERTURE                        ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T059','TRANSFERT SOLDE DEBITEUR /DEBIT COMPTE  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T060','TRANSFERT SOLDE DEBITEUR /DEBIT A REG   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T061','TRANSFERT SOLDE CREDITEUR/ CREDIT CLIENT');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T062','TRANSFERT SOLDE CREDITEUR /CREDIT A REG ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T063','VIREMENT AUTOMATIQUE EFFET INTERET ECHU ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T064','APUREMENT EFFET INT NON ECHU RECU DU PFC');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T096','APUREMENT EFF PAR DB COMPTE (PAIEMENT)  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T097','APU EFF PAR DB COMPTE (CONSOLIDATION)   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('1','T098','APU EFF PAR DB COMPTE (ABANDON)         ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T093','REPONSE SAISIE ARRET                    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T094','DECLARATION DEBITEURS SAISIS            ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T069','REPRISE EFFET IMPAYE RECU DU PFC (CPT G)');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T070','REPRISE EFFET IMPAYE RECU DU PFC (MEG)  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T071','RETOUR EFFET IMPAYE ECHU DU CTX A L''AGC ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T072','RETOUR EFF IMPAYE NON ECHU DU CTX AU PFC');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T073','RETOUR EFF IMPAYE DU CTX A AGC PAIEMENT ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T074','REGLEMENT PARTIEL D''UN EFFET            ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T002','VALIDATION DES GARANTIES CONSTITUEES    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T003','SAISIE DES GARANTIES EXIGEES            ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T006','SAISIE DES GARANTIES CONSTITUEES        ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T012','APUREMENT DES GARANTIES                 ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T015','SAISIE DE BIEN                          ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T034','AGIOS DE LA COMPTABILITE                ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T075','AP AUTOMATIQUE EFF NON ECHUS HORS CTX   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T112','INFORMATIONS GENERALES DU PV            ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T113','AFFECTATION COMPTES AGENCE DU PV        ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T115','REAFFECTATION COMPTE AGENCE A UN PV CTX ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T116','OUVERTURE D''UNE RELATION                ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T117','AFFECTATION COMPTES AGC A UNE RELATION  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T121','GESTION DES ADRESSES D''UNE RELATION     ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T122','AFFECTATION COMPTES CTX A UNE RELATION  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T124','GESTION DES CREANCES D''UNE RELATION     ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T125','CLOTURE D''UNE RELATION                  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T126','REACTIVATION D''UNE RELATION             ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T128','AFFECTATION DES GARANTIES A UNE RELATION');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T129','GESTION DU PATRIMOINE D''UNE RELATION    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T132','OUVERTURE D''UN DOSSIER                  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T133','CLOTURE D''UN DOSSIER                    ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T135','GESTION AFFAIRES DE RECOUVR D''UN DOSSIER');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T136','CREATION DES TYPES AFFAIRES             ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T137','CREATION DES TRIBINAUX                  ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T138','OUVERTURE D''UNE AFFAIRE                 ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T139','CLOTURE D''UNE AFFAIRE                   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T140','REACTIVATION D''UNE AFFAIRE              ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T141','ENVOI D''UNE CORRESPONDANCE (A UN AVOCAT)');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T142','RECEPTION D''UNE CORRESPONDANCE (AVOCAT) ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T143','RECEPTION CORRESPONDANCE AUDIENCE/AVOCAT');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T144','AFFECTATION DES CREANCES A UN DOSSIER   ');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T145','REC. COPIE ORD DESIGNATION EXPERT/AVOCAT');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T146','REC D''UN PV REPARTITION AMIABLE (AVOCAT)');
Insert into FL5520 (SU5520,CODOPE,LIBOPE) values ('0','T147','ENV.CORRESPONDANCE A UN HUISSIER NOTAIRE');

--------------------------------------------------------
--  DDL for Index FL5520_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FL5520_PK" ON "FL5520" ("CODOPE");
--------------------------------------------------------
--  Constraints for Table FL5520
--------------------------------------------------------

  ALTER TABLE "FL5520" ADD CONSTRAINT "FL5520_PK" PRIMARY KEY ("CODOPE") USING INDEX ENABLE;
 
  ALTER TABLE "FL5520" MODIFY ("CODOPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Fichier créé - vendredi-octobre-23-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table COUNTRY
--------------------------------------------------------

  CREATE TABLE "COUNTRY" 
   (	"SUPPAYS" NUMBER(1,0), 
	"CODPAY" CHAR(2 BYTE), 
	"LIBPAY" CHAR(30 BYTE)
   );
REM INSERTING into COUNTRY
SET DEFINE OFF;
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AD','Andorra                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AE','U.A.E                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AF','Afghanistan                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AG','Antigua                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AI','Anguilla                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AL','Albania                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AM','Armenia                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AN','Neth Ant.                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AO','Angola                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AQ','Antarctica                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AR','Argentina                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AS','American Samoa                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AT','Austria                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AU','Australia                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AW','Aruba                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AX','ALAND                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','AZ','Azerbaijan                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BA','Bosnia-Herz                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BB','Barbados                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BD','Bangladesh                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BE','Belgium                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BF','Burkina Faso                  ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BG','Bulgaria                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BH','Bahrain                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BI','Burundi                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BJ','Benin                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BM','Bermuda                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BN','Brunei                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BO','Bolivia                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BR','Brazil                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BS','Bahamas                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BT','Bhutan                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BV','Bouvet Island                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BW','Botswana                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BY','Belarus                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','BZ','Belize                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CA','Canada                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CC','Cocos Islands                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CD','Congo                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CF','Cent Afr                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CG','Congo                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CH','Switzerland                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CI','Ivory                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CK','Cook Islands                  ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CL','Chile                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CM','Cameroon                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CN','China                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CO','Columbia                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CR','Costa Rica                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CU','Cuba                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CV','Cape Verde                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CX','Christmas Is.                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CY','Cyprus                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','CZ','Czech Republic                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','DE','Germany                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','DJ','Djibouti                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','DK','Denmark                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','DM','Dominica                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','DO','Dominican                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','DZ','Algeria                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','EC','Ecuador                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','EE','Estonia                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','EG','Egypt                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','EH','Western Sahara                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ER','Eritrea                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ES','Spain                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ET','Ethiopia                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','EU','EUR Countries                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','FI','Finland                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','FJ','Fiji                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','FK','Falkland Is.                  ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','FM','Micronesia                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','FO','Faroe Islands                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','FR','France                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GA','Gabon                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GB','G.B.                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GD','Grenada                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GE','Georgia                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GF','French Guiana                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GG','Channel Islands               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GH','Ghana                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GI','Gibraltar                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GL','Greenland                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GM','Gambia                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GN','Guinea                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GO','GOLD                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GP','Guadeloupe                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GQ','Equ. Guinea                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GR','Greece                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GS','S Georgia                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GT','Guatemala                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GU','Guam                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GW','Guinea-Bissau                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','GY','Guyana                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','HK','H.K.                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','HM','Heard .McDonald               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','HN','Honduras                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','HR','Croatia                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','HT','Haiti                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','HU','Hungary                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ID','Indonesia                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','IE','Ireland                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','IL','Israel                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','IM','Isle of Man                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','IN','India                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','IO','Br Ind. Oc. Ter               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','IQ','Iraq                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','IR','Iran                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','IS','Iceland                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','IT','Italy                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','JE','Jersey                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','JM','Jamaica                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','JO','Jordan                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','JP','Japan                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KE','Kenya                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KG','Kyrgyzstan                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KH','Cambodia                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KI','Kiribati                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KM','Comoro                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KN','St Kitts .Nevis               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KP','Korea                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KR','Korea, Rep. of                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KW','Kuwait                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KY','Cayman Islands                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','KZ','Kazakstan                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LA','Lao                           ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LB','Lebanon                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LC','St. Lucia                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LI','Liecht                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LK','Sri Lanka                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LR','Liberia                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LS','Lesotho                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LT','Lithuania                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LU','Luxembourg                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LV','Latvia                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','LY','Libya                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MA','Morocco                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MC','Monaco                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MD','Moldova, Rep of               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ME','Montenegro                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MF','Saint Martin                  ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MG','Madagascar                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MH','Marshall Is.                  ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MK','Macedonia                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ML','Mali                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MM','Myanmar                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MN','Mongolia                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MO','Macau                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MP','N. Mariana Is.                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MQ','Martinique                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MR','Mauritania                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MS','Monserrat                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MT','Malta                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MU','Mauritius                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MV','Maldives                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MW','Malawi                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MX','Mexico                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MY','Malaysia                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','MZ','Mozambique                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NA','Namibia                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NC','New Caledonia                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NE','Niger                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NF','Norfolk Island                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NG','Nigeria                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NI','Nicaragua                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NL','Netherlands                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NO','Norway                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NP','Nepal                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NR','Nauru                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NU','Niue                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','NZ','N.Z.                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','OM','Oman                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PA','Panama                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PE','Peru                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PF','Fr. Polynesia                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PG','Pap. New Guinea               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PH','Philippines                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PI','PLATINUM                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PK','Pakistan                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PL','Poland                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PM','St. Pierre                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PN','Pitcairn                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PR','Puerto Rico                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PS','Occp Palst Teri               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PT','Portugal                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PW','Palau                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','PY','Paraguay                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','QA','Qatar                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','RE','Reunion                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','RO','Romania                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','RS','Serbia                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','RU','Russian Fed                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','RW','Rwanda                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SA','Saudi Arabia                  ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SB','Solomon Islands               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SC','Seychelles                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SD','Sudan                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SE','Sweden                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SG','Singapore                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SH','St. Helena                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SI','Slovenia                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SJ','Svalbard                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SK','Slovakia                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SL','Sierra Leone                  ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SM','San Marino                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SN','Senegal                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SO','Somalia                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SR','Suriname                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SS','SILVER                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ST','Sao Tome                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SV','El Salvador                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SY','Syria                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','SZ','Swaziland                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TC','Turks . Caicos                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TD','Chad                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TF','Fr. S. Territ.                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TG','Togo                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TH','Thailand                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TJ','Tajikistan                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TK','Tokelau                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TL','TIMOR.EST                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TM','Turkmenistan                  ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TN','Tunisia                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TO','Tonga                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TP','East Timor                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TR','Turkey                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TT','Trinidad Tobago               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TV','Tuvalu                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TW','Taiwan                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','TZ','Tanzania                      ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','UA','Ukraine                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','UG','Uganda                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','UM','US Minor Out Is               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','US','USA                           ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','UY','Uruguay                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','UZ','Uzbekistan                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','VA','Vatican                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','VC','St. Vincent                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','VE','Venezuala                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','VG','Virgin Islands                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','VI','Virgin Islands                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','VN','Vietnam                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','VU','Vanuatu                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','WF','Wallis .Futuna                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','WS','Samoa                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XA','XAU and XAG                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XB','European Unit                 ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XC','East Caribbean                ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XD','Special Drawing               ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XE','Europa                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XG','Gold                          ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XO','West Africa                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XP','XPD AND XPT                   ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XS','Silver                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','XX','Worldwide                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','YE','Yemen                         ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','YT','Mayotte                       ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','YU','Yugoslavia                    ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ZA','South Afr                     ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ZM','Zambia                        ');
Insert into COUNTRY (SUPPAYS,CODPAY,LIBPAY) values ('0','ZW','Zimbabwe                      ');
--------------------------------------------------------
--  DDL for Index COUNTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COUNTRY_PK" ON "COUNTRY" ("CODPAY");
--------------------------------------------------------
--  Constraints for Table COUNTRY
--------------------------------------------------------

  ALTER TABLE "COUNTRY" ADD CONSTRAINT "COUNTRY_PK" PRIMARY KEY ("CODPAY") USING INDEX ENABLE;
 
  ALTER TABLE "COUNTRY" MODIFY ("CODPAY" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FL1030
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRIGGER_FL1030" AFTER INSERT OR UPDATE ON FL1030
FOR EACH ROW
DECLARE
  CODMAJ string(1);
BEGIN
  if (:old.CODAGC1030 is null) and (:old.CODNAT1030 is null) and (:old.ORDCPT1030 is null) and (:old.KLECPT1030 is null) then
     CODMAJ := 'C';
  else 
     CODMAJ := 'M';
  end if;

  if (:old.SLDCPT10 != :new.SLDCPT10) then
    CODMAJ := 'N';
  end if;

 if CODMAJ = 'C' then
     Insert into ME1030 (SU1030M,CODAGC1030M,CODNAT1030M,ORDCPT1030M,KLECPT1030M,DVSCPT1030M,CODACT1030M,CGLCPT1030M,
                 CODPTT1030AM,CODPAY1030M,CATCLT1030M,CODDOC1030M,ORDDOC1030M,DATLIV1030M,LIELIV10M,
                 CODDOC1030AM,CODPTT1030BM,BIDE1030M,NOMRSCM,ADRPRSM,EMPOUV10M,DNECPT10M,SRVCPT10M,SGNSLD10M,SLDCPT10M,SLCCPT10M,
                 CODUTL10M,PPLAGC30M,PPLNAT30M,PPLORD30M,PPLCLE30M,CLASSE30M,PRFL10M,PRFM10M,PRFN10M,DBICPT10M,BIDCPT30M,
                 NBCDVC10M,PRGSEC10M,DATSEC10M,INTCHQ10M,OUVCPT10M,CLOCPT10M,SEXCPT10M,NAICPT10M,SARCPT10M,JNTCPT10M,FRMCPT10M,
                 INDCHO10M,INDEFO10M,ADRPRF30M,CODAVO10M,COTSGN10M,COTCRC10M,NBRIMC10M,MTFOUV10M,CODCLO10M,NIVCPT10M,
                 MTFCLO10M,FONCPT10M,INDTEL10M,TELCPT10M,NBRIMF10M,PTTRGC30M,NBRMCR10M,INVADR10M,AGOCPT10M,SLDAMY10M,UTLCPT10M,
                 BLKCPT10M,SLDMMY10M,SLDMMX10M,SLDMMI10M,MVDMOI10M,CODOPE29M,MVCANN10M,CHQCPT10M,INDRCS10M,INFRCS10M,NUMRCS10M,
                 ANNRCS10M,CCACPT10M,NUMBCT10M,DATBCT10M,PRFP10M,PRFQ10M,PRFJJ10M,MATBCT30M,QLTGRN10M,OPTCHQ10M,EFFCPT10M,
                 NOMRPR10M,NUMANL10M,INFCMP10M)
            values
                 ('C',:new.CODAGC1030,:new.CODNAT1030,:new.ORDCPT1030,:new.KLECPT1030,:new.DVSCPT1030,:new.CODACT1030,:new.CGLCPT1030,
                 :new.CODPTT1030A,:new.CODPAY1030,:new.CATCLT1030,:new.CODDOC1030,:new.ORDDOC1030,:new.DATLIV1030,:new.LIELIV10,
                 :new.CODDOC1030A,:new.CODPTT1030B,:new.BIDE1030,:new.NOMRSC,:new.ADRPRS,:new.EMPOUV10,:new.DNECPT10,:new.SRVCPT10,:new.SGNSLD10,:new.SLDCPT10,:new.SLCCPT10,
                 :new.CODUTL10,:new.PPLAGC30,:new.PPLNAT30,:new.PPLORD30,:new.PPLCLE30,:new.CLASSE30,:new.PRFL10,:new.PRFM10,:new.PRFN10,:new.DBICPT10,:new.BIDCPT30,
                 :new.NBCDVC10,:new.PRGSEC10,:new.DATSEC10,:new.INTCHQ10,:new.OUVCPT10,:new.CLOCPT10,:new.SEXCPT10,:new.NAICPT10,:new.SARCPT10,:new.JNTCPT10,:new.FRMCPT10,
                 :new.INDCHO10,:new.INDEFO10,:new.ADRPRF30,:new.CODAVO10,:new.COTSGN10,:new.COTCRC10,:new.NBRIMC10,:new.MTFOUV10,:new.CODCLO10,:new.NIVCPT10,
                 :new.MTFCLO10,:new.FONCPT10,:new.INDTEL10,:new.TELCPT10,:new.NBRIMF10,:new.PTTRGC30,:new.NBRMCR10,:new.INVADR10,:new.AGOCPT10,:new.SLDAMY10,:new.UTLCPT10,
                 :new.BLKCPT10,:new.SLDMMY10,:new.SLDMMX10,:new.SLDMMI10,:new.MVDMOI10,:new.CODOPE29,:new.MVCANN10,:new.CHQCPT10,:new.INDRCS10,:new.INFRCS10,:new.NUMRCS10,
                 :new.ANNRCS10,:new.CCACPT10,:new.NUMBCT10,:new.DATBCT10,:new.PRFP10,:new.PRFQ10,:new.PRFJJ10,:new.MATBCT30,:new.QLTGRN10,:new.OPTCHQ10,:new.EFFCPT10,
                 :new.NOMRPR10,:new.NUMANL10,:new.INFCMP10);
 end if;

 if CODMAJ = 'M' then
     Insert into ME1030 (SU1030M,CODAGC1030M,CODNAT1030M,ORDCPT1030M,KLECPT1030M,DVSCPT1030M,CODACT1030M,CGLCPT1030M,
                 CODPTT1030AM,CODPAY1030M,CATCLT1030M,CODDOC1030M,ORDDOC1030M,DATLIV1030M,LIELIV10M,
                 CODDOC1030AM,CODPTT1030BM,BIDE1030M,NOMRSCM,ADRPRSM,EMPOUV10M,DNECPT10M,SRVCPT10M,SGNSLD10M,SLDCPT10M,SLCCPT10M,
                 CODUTL10M,PPLAGC30M,PPLNAT30M,PPLORD30M,PPLCLE30M,CLASSE30M,PRFL10M,PRFM10M,PRFN10M,DBICPT10M,BIDCPT30M,
                 NBCDVC10M,PRGSEC10M,DATSEC10M,INTCHQ10M,OUVCPT10M,CLOCPT10M,SEXCPT10M,NAICPT10M,SARCPT10M,JNTCPT10M,FRMCPT10M,
                 INDCHO10M,INDEFO10M,ADRPRF30M,CODAVO10M,COTSGN10M,COTCRC10M,NBRIMC10M,MTFOUV10M,CODCLO10M,NIVCPT10M,
                 MTFCLO10M,FONCPT10M,INDTEL10M,TELCPT10M,NBRIMF10M,PTTRGC30M,NBRMCR10M,INVADR10M,AGOCPT10M,SLDAMY10M,UTLCPT10M,
                 BLKCPT10M,SLDMMY10M,SLDMMX10M,SLDMMI10M,MVDMOI10M,CODOPE29M,MVCANN10M,CHQCPT10M,INDRCS10M,INFRCS10M,NUMRCS10M,
                 ANNRCS10M,CCACPT10M,NUMBCT10M,DATBCT10M,PRFP10M,PRFQ10M,PRFJJ10M,MATBCT30M,QLTGRN10M,OPTCHQ10M,EFFCPT10M,
                 NOMRPR10M,NUMANL10M,INFCMP10M)
            values
                 ('M',:new.CODAGC1030,:new.CODNAT1030,:new.ORDCPT1030,:new.KLECPT1030,:new.DVSCPT1030,:new.CODACT1030,(CASE  WHEN (:new.CGLCPT1030='      ') THEN  null ELSE :new.CGLCPT1030 END),
                 :new.CODPTT1030A,:new.CODPAY1030,:new.CATCLT1030,:new.CODDOC1030,:new.ORDDOC1030,:new.DATLIV1030,:new.LIELIV10,
                 :new.CODDOC1030A,:new.CODPTT1030B,:new.BIDE1030,:new.NOMRSC,:new.ADRPRS,:new.EMPOUV10,:new.DNECPT10,:new.SRVCPT10,:new.SGNSLD10,:new.SLDCPT10,:new.SLCCPT10,
                 :new.CODUTL10,:new.PPLAGC30,:new.PPLNAT30,:new.PPLORD30,:new.PPLCLE30,:new.CLASSE30,:new.PRFL10,:new.PRFM10,:new.PRFN10,:new.DBICPT10,:new.BIDCPT30,
                 :new.NBCDVC10,:new.PRGSEC10,:new.DATSEC10,:new.INTCHQ10,:new.OUVCPT10,:new.CLOCPT10,:new.SEXCPT10,:new.NAICPT10,:new.SARCPT10,:new.JNTCPT10,:new.FRMCPT10,
                 :new.INDCHO10,:new.INDEFO10,:new.ADRPRF30,:new.CODAVO10,:new.COTSGN10,:new.COTCRC10,:new.NBRIMC10,:new.MTFOUV10,:new.CODCLO10,:new.NIVCPT10,
                 :new.MTFCLO10,:new.FONCPT10,:new.INDTEL10,:new.TELCPT10,:new.NBRIMF10,:new.PTTRGC30,:new.NBRMCR10,:new.INVADR10,:new.AGOCPT10,:new.SLDAMY10,:new.UTLCPT10,
                 :new.BLKCPT10,:new.SLDMMY10,:new.SLDMMX10,:new.SLDMMI10,:new.MVDMOI10,:new.CODOPE29,:new.MVCANN10,:new.CHQCPT10,:new.INDRCS10,:new.INFRCS10,:new.NUMRCS10,
                 :new.ANNRCS10,:new.CCACPT10,:new.NUMBCT10,:new.DATBCT10,:new.PRFP10,:new.PRFQ10,:new.PRFJJ10,:new.MATBCT30,:new.QLTGRN10,:new.OPTCHQ10,:new.EFFCPT10,
                 :new.NOMRPR10,:new.NUMANL10,:new.INFCMP10);
 end if;
EXCEPTION
WHEN DUP_VAL_ON_INDEX THEN
  UPDATE ME1030 set SU1030M='M',CODAGC1030M=:new.CODAGC1030,CODNAT1030M=:new.CODNAT1030,ORDCPT1030M=:new.ORDCPT1030,KLECPT1030M=:new.KLECPT1030,DVSCPT1030M=:new.DVSCPT1030,CODACT1030M=:new.CODACT1030,CGLCPT1030M=(CASE  WHEN (:new.CGLCPT1030='      ') THEN  null ELSE :new.CGLCPT1030 END),
                 CODPTT1030AM=:new.CODPTT1030A,CODPAY1030M=:new.CODPAY1030,CATCLT1030M=:new.CATCLT1030,CODDOC1030M=:new.CODDOC1030,ORDDOC1030M=:new.ORDDOC1030,DATLIV1030M=:new.DATLIV1030,LIELIV10M=:new.LIELIV10,
                 CODDOC1030AM=:new.CODDOC1030A,CODPTT1030BM=:new.CODPTT1030B,BIDE1030M=:new.BIDE1030,NOMRSCM=:new.NOMRSC,ADRPRSM=:new.ADRPRS,EMPOUV10M=:new.EMPOUV10,DNECPT10M=:new.DNECPT10,SRVCPT10M=:new.SRVCPT10,SGNSLD10M=:new.SGNSLD10,SLDCPT10M=:new.SLDCPT10,SLCCPT10M=:new.SLCCPT10,
                 CODUTL10M=:new.CODUTL10,PPLAGC30M=:new.PPLAGC30,PPLNAT30M=:new.PPLNAT30,PPLORD30M=:new.PPLORD30,PPLCLE30M=:new.PPLCLE30,CLASSE30M=:new.CLASSE30,PRFL10M=:new.PRFL10,PRFM10M=:new.PRFM10,PRFN10M=:new.PRFN10,DBICPT10M=:new.DBICPT10,BIDCPT30M=:new.BIDCPT30,
                 NBCDVC10M=:new.NBCDVC10,PRGSEC10M=:new.PRGSEC10,DATSEC10M=:new.DATSEC10,INTCHQ10M=:new.INTCHQ10,OUVCPT10M=:new.OUVCPT10,CLOCPT10M=:new.CLOCPT10,SEXCPT10M=:new.SEXCPT10,NAICPT10M=:new.NAICPT10,SARCPT10M=:new.SARCPT10,JNTCPT10M=:new.JNTCPT10,FRMCPT10M=:new.FRMCPT10,
                 INDCHO10M=:new.INDCHO10,INDEFO10M=:new.INDEFO10,ADRPRF30M=:new.ADRPRF30,CODAVO10M=:new.CODAVO10,COTSGN10M=:new.COTSGN10,COTCRC10M=:new.COTCRC10,NBRIMC10M=:new.NBRIMC10,MTFOUV10M=:new.MTFOUV10,CODCLO10M=:new.CODCLO10,NIVCPT10M=:new.NIVCPT10,
                 MTFCLO10M=:new.MTFCLO10,FONCPT10M=:new.FONCPT10,INDTEL10M=:new.INDTEL10,TELCPT10M=:new.TELCPT10,NBRIMF10M=:new.NBRIMF10,PTTRGC30M=:new.PTTRGC30,NBRMCR10M=:new.NBRMCR10,INVADR10M=:new.INVADR10,AGOCPT10M=:new.AGOCPT10,SLDAMY10M=:new.SLDAMY10,UTLCPT10M=:new.UTLCPT10,
                 BLKCPT10M=:new.BLKCPT10,SLDMMY10M=:new.SLDMMY10,SLDMMX10M=:new.SLDMMX10,SLDMMI10M=:new.SLDMMI10,MVDMOI10M=:new.MVDMOI10,CODOPE29M=:new.CODOPE29,MVCANN10M=:new.MVCANN10,CHQCPT10M=:new.CHQCPT10,INDRCS10M=:new.INDRCS10,INFRCS10M=:new.INFRCS10,NUMRCS10M=:new.NUMRCS10,
                 ANNRCS10M=:new.ANNRCS10,CCACPT10M=:new.CCACPT10,NUMBCT10M=:new.NUMBCT10,DATBCT10M=:new.DATBCT10,PRFP10M=:new.PRFP10,PRFQ10M=:new.PRFQ10,PRFJJ10M=:new.PRFJJ10,MATBCT30M=:new.MATBCT30,QLTGRN10M=:new.QLTGRN10,OPTCHQ10M=:new.OPTCHQ10,EFFCPT10M=:new.EFFCPT10,
                 NOMRPR10M=:new.NOMRPR10,NUMANL10M=:new.NUMANL10,INFCMP10M=:new.INFCMP10 where CODAGC1030M=:new.CODAGC1030 and CODNAT1030M=:new.CODNAT1030 and ORDCPT1030M=:new.ORDCPT1030 and KLECPT1030M=:new.KLECPT1030 and SU1030M='M'; 
WHEN OTHERS	THEN NULL;

END;
/
ALTER TRIGGER "TRIGGER_FL1030" ENABLE;
--------------------------------------------------------
--  DDL for Function CONTROL_FL1073
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CONTROL_FL1073" 
( AGCNUM_IN IN CHAR 
, SERNUM_IN IN CHAR 
, ORDNUM_IN IN NUMBER 
, MNTOPE_IN IN FLOAT
, COGENG_IN IN CHAR
) RETURN CHAR AS 

ETAT CHAR(2);
BEGIN
  select case 
              when exists(select AGCNUM_IN, SERNUM_IN, ORDNUM_IN, MNTOPE_IN, COGENG_IN from FL1073 
                          where nvl(AGCNUM_IN,'  ')=nvl(AGCNUM73,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM73,' ')
                          and ORDNUM_IN=ORDNUM73 and MNTOPE_IN=MNTOPE73 and COGENG_IN=ENGOPE73 and SU1073=0)
              then 'OK'
              else 'KO'
         end into ETAT from dual;
  return ETAT;
END;

/
--------------------------------------------------------
--  DDL for Function CONTROL_FL1090
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CONTROL_FL1090" 
( AGCNUM_IN IN CHAR 
, SERNUM_IN IN CHAR 
, ORDNUM_IN IN NUMBER 
, MNTOPE_IN IN FLOAT
) RETURN CHAR AS 

ETAT CHAR(2);
BEGIN
  select case 
              when exists(select AGCNUM_IN, SERNUM_IN, ORDNUM_IN, MNTOPE_IN from FL1090 
                          where nvl(AGCNUM_IN,'  ')=nvl(AGCNUM90,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM90,' ')
                          and ORDNUM_IN=ORDNUM90 and MNTOPE_IN=MNTOPE90 and SU1090=0)
              then 'OK'
              else 'KO'
         end into ETAT from dual;
  return ETAT;
END;

/
--------------------------------------------------------
--  DDL for Function CONTROL_FL1091
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CONTROL_FL1091" 
( AGCNUM_IN IN CHAR 
, SERNUM_IN IN CHAR 
, ORDNUM_IN IN NUMBER 
, MNTOPE_IN IN FLOAT
) RETURN CHAR AS 

ETAT CHAR(2);
BEGIN
  select case 
              when exists(select AGCNUM_IN, SERNUM_IN, ORDNUM_IN, MNTOPE_IN from FL1091 
                          where nvl(AGCNUM_IN,'  ')=nvl(AGCNUM91,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM91,' ')
                          and ORDNUM_IN=ORDNUM91 and MNTOPE_IN=MNTOPE91 and SU1091=0)
              then 'OK'
              else 'KO'
         end into ETAT from dual;
  return ETAT;
END;

/
--------------------------------------------------------
--  DDL for Function CONTROL_FL1066
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CONTROL_FL1066" 
( AGCNUM_IN IN CHAR 
, SERNUM_IN IN CHAR 
, ORDNUM_IN IN NUMBER 
) RETURN CHAR AS 

ETAT CHAR(2);
BEGIN
  select case 
              when exists(select AGCNUM_IN, SERNUM_IN, ORDNUM_IN from FL1066 
                          where nvl(AGCNUM_IN,'  ')=nvl(AGCNUM66,'  ') and nvl(SERNUM_IN,' ')=nvl(SERNUM66,' ')
                          and ORDNUM_IN=ORDNUM66 and SU1066=0)
              then 'OK'
              else 'KO'
         end into ETAT from dual;
  return ETAT;
END;

/
--------------------------------------------------------
--  DDL for Procedure APUR_AUT0_T064
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "APUR_AUT0_T064" 
( AGCCTX IN CHAR 
, NATCTX IN NUMBER
, ORDCTX IN NUMBER
, CLECTX IN NUMBER
, ENGCTX IN CHAR
, USROPE IN CHAR
) AS 
CURSOR  CUR1066 IS select * from FL1066 
                   where (CPTAGC66=AGCCTX and CPTNAT66=NATCTX and CPTORD66=ORDCTX and CPTCLE66=CLECTX 
                   and ENGOPE66=ENGCTX and SU1066=0 and PPLINT66=1 and ECHU66=1 and PFCAGC66=1);
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
             values (0,'93',TO_DATE(JCOMPTABLE),'T064',ligne1066.AGCNUM66,ligne1066.SERNUM66,ligne1066.ORDNUM66,
                     ligne1066.MNTOPE66,ligne1066.ENGOPE66,AGCCTX,NATCTX,ORDCTX,CLECTX,'','',USROPE,
                     '','','','','','','',0,0,0,
                     NOMCPT,ligne1066.ECHOPE66,ligne1066.PPLINT66,'','','','','','','',
                     ligne1066.SANEFF66,1,09,3,'','','','','','','','',ligne1066.ECHU66,ligne1066.PFCAGC66,'','','','',''); 
    FETCH CUR1066 INTO ligne1066;
    END LOOP;
    CLOSE CUR1066;
    standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure VALID_FL1061
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "VALID_FL1061" 
( AGCCLT IN CHAR
, NATCLT IN NUMBER
, ORDCLT IN NUMBER
, CLECLT IN NUMBER
, ENGCLT IN CHAR
, AGCCTX IN CHAR
, NATCTX IN NUMBER
, ORDCTX IN NUMBER
, CLECTX IN NUMBER
, USROPE IN CHAR
, TYPVAL IN CHAR
) AS
BEGIN
  if TYPVAL = 'Valider' then
    APUR_AUT0_T031(AGCCLT,NATCLT,ORDCLT,CLECLT,ENGCLT,AGCCTX,NATCTX,ORDCTX,CLECTX,USROPE);
    INIT_FL1061_TEMP();
  end if;
END;

/
--------------------------------------------------------
--  DDL for Procedure VALID_FL1062
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "VALID_FL1062" 
( AGCCLT IN CHAR
, NATCLT IN NUMBER
, ORDCLT IN NUMBER
, CLECLT IN NUMBER
, ENGCLT IN CHAR
, AGCCTX IN CHAR
, NATCTX IN NUMBER
, ORDCTX IN NUMBER
, CLECTX IN NUMBER
, USROPE IN CHAR
, TYPVAL IN CHAR
) AS
BEGIN
  if TYPVAL = 'Valider' then
    APUR_AUT0_T042(AGCCLT,NATCLT,ORDCLT,CLECLT,ENGCLT,AGCCTX,NATCTX,ORDCTX,CLECTX,USROPE);
    INIT_FL1062_TEMP();
  end if;
END;

/

--------------------------------------------------------
--  DDL for Procedure CPT3099
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CPT3099" AS
BEGIN

EXECUTE IMMEDIATE 'TRUNCATE  TABLE FL3099_TEMP ';
  insert into FL3099_TEMP (select distinct (AGCCPT99 || lpad (NATCPT99,2,'0') || lpad (ORDCPT99,5,'0') || KLECPT99) 
                          from FL3099 where DATOPE99 >= (select ('01' || (substr((select max(DATOPE) from FLDATE),3))) from DUAL));
  standard.commit;
END;

/


--------------------------------------------------------
--  Fichier créé - mercredi-novembre-25-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STATOPE
--------------------------------------------------------

  CREATE TABLE "STATOPE" 
   (	"SUSTAT" NUMBER(1,0), 
	"DATOPE" DATE, 
	"FICHIER" CHAR(15 BYTE), 
	"TYPFICH" CHAR(1 BYTE), 
	"CODOPE" CHAR(4 BYTE), 
	"NBROPE" NUMBER(10,0), 
	"NBRTOT" NUMBER(10,0)
   );
--------------------------------------------------------
--  DDL for Procedure CNFAPR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CNFAPR" AS

CNF number(1);

BEGIN
  select case
              when exists((select (T1.AGCNUM3002 || ' ' || T1.SERNUM3002 || ' ' || lpad (T1.ORDNUM3002,7,'0')) as REFOPE1,
T1.MNTOPE3002 as MNTOPE1, T1.CODOPE3002 as CODOPE1,
(select LIBOPE from FL5520 where CODOPE=T1.CODOPE3002)as LIBOPE1, T1.AGZREC3002 as AGZREC1,
(T2.AGCNUM3002 || ' ' || T2.SERNUM3002 || ' ' || lpad (T2.ORDNUM3002,7,'0')) as REFOPE2, T2.CODOPE3002 as CODOPE2,
(select LIBOPE from FL5520 where CODOPE=T2.CODOPE3002) as LIBOPE2, T2.AGXOPE3002 as AGXOPE2
from FL1000 T1, FL1000 T2  where T1.SU3002=T2.SU3002 and T1.CODOPE3002='T035' and T2.CODOPE3002='T009'
and T1.AGCNUM3002=T2.AGCNUM3002 and T1.SERNUM3002=T2.SERNUM3002 and T1.ORDNUM3002=T2.ORDNUM3002
and T1.MNTOPE3002=T2.MNTOPE3002 and T1.AGZREC3002 != T2.AGXOPE3002)
union
(select (T1.AGCNUM3002 || ' ' || T1.SERNUM3002 || ' ' || lpad (T1.ORDNUM3002,7,'0')) as REFOPE1,
T1.MNTOPE3002 as MNTOPE1, T1.CODOPE3002 as CODOPE1,
(select LIBOPE from FL5520 where CODOPE=T1.CODOPE3002)as LIBOPE1, T1.AGZREC3002 as AGZREC1,
(T2.AGCNUM3002 || ' ' || T2.SERNUM3002 || ' ' || lpad (T2.ORDNUM3002,7,'0')) as REFOPE2, T2.CODOPE3002 as CODOPE2,
(select LIBOPE from FL5520 where CODOPE=T2.CODOPE3002) as LIBOPE2, T2.AGXOPE3002 as AGXOPE2
from FL1000 T1, FL1000 T2  where T1.SU3002=T2.SU3002 and T1.CODOPE3002='T035' and T2.CODOPE3002='T013'
and T1.AGCNUM3002=T2.AGCNUM3002 and T1.SERNUM3002=T2.SERNUM3002 and T1.ORDNUM3002=T2.ORDNUM3002
and T1.MNTOPE3002=T2.MNTOPE3002 and T1.AGZREC3002 != T2.AGXOPE3002)
union
(select (T1.AGCNUM3002 || ' ' || T1.SERNUM3002 || ' ' || lpad (T1.ORDNUM3002,7,'0')) as REFOPE1,
T1.MNTOPE3002 as MNTOPE1, T1.CODOPE3002 as CODOPE1,
(select LIBOPE from FL5520 where CODOPE=T1.CODOPE3002)as LIBOPE1, T1.AGZREC3002 as AGZREC1,
(T2.AGCNUM3002 || ' ' || T2.SERNUM3002 || ' ' || lpad (T2.ORDNUM3002,7,'0')) as REFOPE2, T2.CODOPE3002 as CODOPE2,
(select LIBOPE from FL5520 where CODOPE=T2.CODOPE3002) as LIBOPE2, T2.AGXOPE3002 as AGXOPE2
from FL1000 T1, FL1000 T2  where T1.SU3002=T2.SU3002 and T1.CODOPE3002='T038' and T2.CODOPE3002='T010'
and T1.AGCNUM3002=T2.AGCNUM3002 and T1.SERNUM3002=T2.SERNUM3002 and T1.ORDNUM3002=T2.ORDNUM3002
and T1.MNTOPE3002=T2.MNTOPE3002 and T1.AGZREC3002 != T2.AGXOPE3002)
union
(select (T1.AGCNUM3002 || ' ' || T1.SERNUM3002 || ' ' || lpad (T1.ORDNUM3002,7,'0')) as REFOPE1,
T1.MNTOPE3002 as MNTOPE1, T1.CODOPE3002 as CODOPE1,
(select LIBOPE from FL5520 where CODOPE=T1.CODOPE3002)as LIBOPE1, T1.AGZREC3002 as AGZREC1,
(T2.AGCNUM3002 || ' ' || T2.SERNUM3002 || ' ' || lpad (T2.ORDNUM3002,7,'0')) as REFOPE2, T2.CODOPE3002 as CODOPE2,
(select LIBOPE from FL5520 where CODOPE=T2.CODOPE3002) as LIBOPE2, T2.AGXOPE3002 as AGXOPE2
from FL1000 T1, FL1000 T2  where T1.SU3002=T2.SU3002 and T1.CODOPE3002='T038' and T2.CODOPE3002='T011'
and T1.AGCNUM3002=T2.AGCNUM3002 and T1.SERNUM3002=T2.SERNUM3002 and T1.ORDNUM3002=T2.ORDNUM3002
and T1.MNTOPE3002=T2.MNTOPE3002 and T1.AGZREC3002 != T2.AGXOPE3002))
              then 1
              else 0
         end into CNF from dual;

if CNF = 1 then
    MAJCNF(CNF);
end if;

END;

/
--------------------------------------------------------
--  DDL for Procedure ECRITURE_STATOPE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ECRITURE_STATOPE" AS 
BEGIN
insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1000' as FICHIERX, 'M' as TYPFICHX, 
CODOPE3002 as CODOPEX, (select count(*) from FL1000 b where a.CODOPE3002=b.CODOPE3002) as NBROPEX,
(select count(*) from FL1000) as NBRTOTX from FL1000 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1003' as FICHIERX, 'M' as TYPFICHX, 
CODOPE03 as CODOPEX, (select count(*) from FL1003 b where a.CODOPE03=b.CODOPE03) as NBROPEX,
(select count(*) from FL1003) as NBRTOTX from FL1003 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1019' as FICHIERX, 'M' as TYPFICHX, 
CODOPE19 as CODOPEX, (select count(*) from FL1019 b where a.CODOPE19=b.CODOPE19) as NBROPEX,
(select count(*) from FL1019) as NBRTOTX from FL1019 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL4003' as FICHIERX, 'M' as TYPFICHX, 
CODOPE4003 as CODOPEX, (select count(*) from FL4003 b where a.CODOPE4003=b.CODOPE4003) as NBROPEX,
(select count(*) from FL4003) as NBRTOTX from FL4003 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1030' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL1030) as NBRTOTX from FL1030 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1061' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL1061) as NBRTOTX from FL1061 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1062' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL1062) as NBRTOTX from FL1062 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1066' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL1066) as NBRTOTX from FL1066 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1071' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL1071) as NBRTOTX from FL1071 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1073' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL1073) as NBRTOTX from FL1073 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1090' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL1090) as NBRTOTX from FL1090 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL1091' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL1091) as NBRTOTX from FL1091 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL2999' as FICHIERX, 'M' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL2999) as NBRTOTX from FL2999 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL3097' as FICHIERX, 'M' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL3097) as NBRTOTX from FL3097 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL3098' as FICHIERX, 'M' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL3098) as NBRTOTX from FL3098 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL3099' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL3099) as NBRTOTX from FL3099 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'FL3195' as FICHIERX, 'I' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from FL3195) as NBRTOTX from FL3195 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'ME1030' as FICHIERX, 'M' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from ME1030) as NBRTOTX from ME1030 a);

insert into STATOPE (SUSTAT, DATOPE, FICHIER, TYPFICH, CODOPE, NBROPE, NBRTOT) 
select SUSTATX, DATOPEX, FICHIERX, TYPFICHX, CODOPEX, NBROPEX, NBRTOTX from 
(select distinct 0 as SUSTATX,   TO_date(SYSDATE) as DATOPEX, 'ME2910' as FICHIERX, 'M' as TYPFICHX, 
'XXXX' as CODOPEX, '' as NBROPEX, (select count(*) from ME2910) as NBRTOTX from ME2910 a);

standard.commit;
END;

/
--------------------------------------------------------
--  DDL for Table TIMEPROC
--------------------------------------------------------

  CREATE TABLE "TIMEPROC" 
   (	"NOMPROC" CHAR(15 BYTE), 
	"DATOPE" DATE, 
	"DATE_D" DATE, 
	"DATE_F" DATE, 
	"DUREE" CHAR(11 BYTE)
   );
--------------------------------------------------------
--  DDL for Procedure DATESTAT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DATESTAT" (NPROC IN char, TYP IN char) AS 

BEGIN
  if TYP = 'D' then
     insert into TIMEPROC (NOMPROC,DATOPE, DATE_D, DATE_F,DUREE) 
            values (NPROC, TO_DATE(SYSDATE), SYSDATE, '', '');
  end if;

  if TYP = 'F' then
     update TIMEPROC set 
     DATE_F=SYSDATE ,
     DUREE=(select  
                  to_char(Trunc(((SYSDATE - DATE_D)*24*3600)/3600), '00') || ':' ||
                  to_char(Trunc(((SYSDATE - DATE_D)*24*3600)/60) - Trunc(((SYSDATE - DATE_D)*24*3600)/3600)*60, '00') ||  ':' ||
                  to_char(trunc(((SYSDATE - DATE_D)*24*3600) - (Trunc(((SYSDATE - DATE_D)*24*3600)/60)*60)), '00')
       from TIMEPROC where NOMPROC=NPROC and DATOPE=TO_DATE(SYSDATE))
     where NOMPROC=NPROC and DATOPE=TO_DATE(SYSDATE) and DUREE is null;    
  end if;

  EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
--     update TIMEPROC set NOMPROC=NPROC, DATOPE=TO_DATE(SYSDATE), DATE_D=SYSDATE, DATE_F='', DUREE='';
     if TYP = 'D' and NPROC = 'CONFORMITE' then
        update TIMEPROC set DATE_D=SYSDATE, DATE_F='', DUREE='';
     end if;
     --if TYP = 'D' and NPROC != 'CONFORMITE' then
     --  update TIMEPROC set DATE_D=SYSDATE, DATE_F='', DUREE='';
     --end if;
  WHEN OTHERS	THEN NULL;

standard.commit;
END;

/
