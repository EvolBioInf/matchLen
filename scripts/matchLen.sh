./testMatchLen 1e+8 0.5 1e+4 0.05 > tmp.out
DIFF=$(diff tmp.out ../data/matchLen.out)
if [ "$DIFF" == "" ] 
then
    printf "Test(matchLen)\tpass\n"
else
    printf "Test(matchLen)\tfail\n"
    echo ${DIFF}
fi

rm tmp.out
