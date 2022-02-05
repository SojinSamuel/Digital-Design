#############################################################
# vsimsa environment configuration
set dsn $curdir
log $dsn/log/vsimsa.log
@echo
@echo #################### Starting C Code Debug Session ######################
cd $dsn/src
amap Count $dsn/Count/Count.lib
set worklib Count
# simulation
asim -callbacks -O5 +access +r +m+Cnt Cnt arch
run -all
#############################################################