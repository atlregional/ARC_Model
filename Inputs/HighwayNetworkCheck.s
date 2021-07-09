;{year,editbox,"two digit year",n,"15"}

; write gdb network to binary network file
RUN PGM=NETWORK
  NETI=arc_20{year}.gdb\arc{year}hwy
	NETO=netcheck.tmp
ENDRUN

;build distance skim to test centroid connectivity
RUN PGM=HIGHWAY
NETI=netcheck.tmp
MATO=TEST_CONN.SKM,MO=1,NAME=DISTANCE
ZONEMSG=50
PHASE=ILOOP

PATHLOAD PATH=DIST,MW[1]=PATHTRACE(DIST),NOACCESS=-1

ENDPHASE
ENDRUN

;run matrix step to check for connectivity
; return code = 3 for a manual abort
; print out = CentroidCheck.prn
RUN PGM=MATRIX
MATI=TEST_CONN.SKM
ZONEMSG=50
abortflag=0
JLOOP
 IF(I<>J)  ;don't check intrazonals
  IF(MI.1.1[J]<0)
   PRINT LIST=I,J,FILE=CentroidCheck.PRN
   abortflag=1
  ENDIF
 ENDIF
ENDJLOOP
if(abortflag=1) ABORT MSG='Centroid not properly connected'
ENDRUN

;check for required input highway network variables
RUN PGM=NETWORK
NETI=netcheck.tmp

DISTANCE = LI.1.DISTANCE
COUNTY = LI.1.COUNTY
FACTYPE = LI.1.FACTYPE
TOLLID = LI.1.TOLLID
LANES = LI.1.LANES
LANESEA = LI.1.LANESEA
LANESAM = LI.1.LANESAM
LANESMD = LI.1.LANESMD
LANESPM = LI.1.LANESPM
LANESEV = LI.1.LANESEV
AUXLANE = LI.1.AUXLANE
PROHIBITION = LI.1.PROHIBITION
TRNDIST = LI.1.TRNDIST
TRNTIME = LI.1.TRNTIME
FCLASS = LI.1.FCLASS
MINBUSSPD = LI.1.MINBUSSPD
MAXBUSSPD = LI.1.MAXBUSSPD
SIGNALIMPR = LI.1.SIGNALIMPR
HOVMERGE = LI.1.HOVMERGE
GPID = LI.1.GPID
RAMPFLAG = LI.1.RAMPFLAG
WEAVEFLAG= LI.1.WEAVEFLAG
TMCFLAG = LI.1.TMCFLAG
EASPD = LI.1.EASPD
AMSPD = LI.1.AMSPD
MDSPD = LI.1.MDSPD
PMSPD = LI.1.PMSPD
EVSPD = LI.1.EVSPD

;check # lanes is coded
IF(FACTYPE = 1-20)
 IF((LANES + LANESEA + LANESAM + LANESMD + LANESPM + LANESEV)=0)
  _CNT=_CNT+1
   PRINT LIST=A,B,FILE=LANE_CHECK.PRN
 ENDIF
ENDIF
;return code = 3 if link found with zero lanes (non-centroid & non-transit)
PHASE=SUMMARY
 IF(_CNT>0) ABORT
ENDPHASE

ENDRUN
