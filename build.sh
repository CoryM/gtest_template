#!/bin/bash

cd bin/build

echo Running cmake | tee Report.txt
echo ============= >> Report.txt
cmake ../../src &>> Report.txt
OUT=$?
if [ $OUT -gt 0 ]; then
	echo | tee -a Report.txt
	echo "!!!ERROR!!! - cmake exited with code " $OUT | tee -a Report.txt
	echo "Stopping build chain" | tee -a Report.txt
	exit
fi

echo >> Report.txt

echo Running make | tee -a Report.txt
echo ============ >> Report.txt
make &>> Report.txt
OUT=$?
if [ $OUT -gt 0 ]; then
	echo | tee -a Report.txt
	echo "!!!ERROR!!! - make exited with code " $OUT | tee -a Report.txt
	echo "Stopping build chain" | tee -a Report.txt
	exit
fi
echo >> Report.txt

echo Running main | tee -a Report.txt
echo ================ >> Report.txt
./main &>> Report.txt
OUT=$?
if [ $OUT -gt 0 ]; then
	echo | tee -a Report.txt
	echo "!!!ERROR!!! - runTests exited with code " $OUT | tee -a Report.txt
fi

nano Report.txt
