
RUN PGM=MATRIX
RECI=ExternalStations.CSV,DELIMITER=',' N=1,NAME(C)=2,FIPS=3,EXCNTSTA=4,LANES=5,EXTFLAG=6,INTFLAG=7,
                                        AADT2000=8,AADT2005=9,AADT2010=10,AADT2015=11,
                                        AWDT2000=12,AWDT2005=13,AWDT2010=14,AWDT2015=15,
                                        PCINTWK=16,PCINTNW=17,PCNINTW=18,PCNINTN=19,
                                        CAREE=20,COMIE=21,COMEE=22,MTKIE=23,MTKEE=24,HTKIE=25,HTKEE=26
RECO=Externals.DBF,FIELDS=RECI.ALLFIELDS
IF(RECI.RECNO>1) WRITE RECO=1
ENDRUN
                                        