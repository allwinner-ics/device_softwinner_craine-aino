cd $PACKAGE
if [ "$1" = "-d" ]; then
	echo "--------debug version, have uart printf-------------"
	./pack -c sun4i -p crane -b aino -d card0
else
	echo "--------release version, donnot have uart printf-------------"
	./pack -c sun4i -p crane -b aino -d uart0
fi
cd -
