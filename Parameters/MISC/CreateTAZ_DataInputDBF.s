RUN PGM=MATRIX
RECI=TAZ_DataInput.CSV,DELIMITER=',' Zone=1,County(C)=7,CountyNum=8,SuperDist(C)=9,SupDistNum=10,ActCtr(C)=11,
                                     ActCtrNum=12,ETAFlag=13,ATYPE=14
RECO=TAZ_Data.DBF,FIELDS=RECI.ALLFIELDS

IF(RECI.RECNO>1) WRITE RECO=1
ENDRUN