
RUN PGM=MATRIX
RECI=I285_Zones.CSV,DELIMITER=',' Zone=1,I285=2
RECO=I285_Zones.DBF,FIELDS=RECI.ALLFIELDS

IF(RECI.RECNO>1) WRITE RECO=1
ENDRUN