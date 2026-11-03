--------------------------------------------------------
--  Fichier créé - mardi-décembre-15-2015   
--------------------------------------------------------
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
--  DDL for Index TIMEPROC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TIMEPROC_PK" ON "TIMEPROC" ("NOMPROC", "DATOPE");
--------------------------------------------------------
--  Constraints for Table TIMEPROC
--------------------------------------------------------

  ALTER TABLE "TIMEPROC" MODIFY ("NOMPROC" NOT NULL ENABLE);
 
  ALTER TABLE "TIMEPROC" MODIFY ("DATOPE" NOT NULL ENABLE);
 
  ALTER TABLE "TIMEPROC" ADD CONSTRAINT "TIMEPROC_PK" PRIMARY KEY ("NOMPROC", "DATOPE");
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
        update TIMEPROC set DATE_D=SYSDATE, DATE_F='', DUREE='' where NOMPROC=NPROC and DATOPE=TO_DATE(SYSDATE);
     end if;
     --if TYP = 'D' and NPROC != 'CONFORMITE' then
     --  update TIMEPROC set DATE_D=SYSDATE, DATE_F='', DUREE='';
     --end if;
  WHEN OTHERS	THEN NULL;

standard.commit;
END;

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
