
RUN PGM=MATRIX
RECI=ExternalCounties.CSV,DELIMITER=',' N=1,COUNTY(C)=2,X=3,Y=4,EXTFLAG=5,POP00=6,POP05=7,POP10=8,POP15=9,POP20=10,POP25=11,POP30=12,POP40=13
RECO=ExternalCounties.DBF,FIELDS=RECI.ALLFIELDS

IF(RECI.RECNO>1) WRITE RECO=1
ENDRUN