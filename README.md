Google C++ Unit Test Framework Template
=======================================

This templates goal is to provide a quick means to start a project using GTest.

This template assumes GTest is already installed on a linux system.  If it is
not please refear to http://www.thebigblob.com/getting-started-with-google-test-on-ubuntu/

The files
---------
* build.sh        - Bash script to build and run the source code in src/
* test.sh		      - bash script to build and run the Google tests in gtest/
* cleaup-all.sh	  - deletes the files in bin/build and bin/gtest

gtest/		        - Source files for your google test
-------
* CMakeLists.txt	- cmake script for making the makefile
* runtests.cpp    - the Google test enhanced test source code

src/              - source files for the normal build
----
* CMakeLists.txt	- cmake script for your normal build
* main.cpp	      - Your normal source code
* main.h          - Your normal source code header file

bin/build/	      - This is where your normal build goes
----------
* main            - This is your normal build.  This is created when you run build.sh
* Report          - This is your Google Test build.  This is created when you run build.sh

bin/gtest/        - This is where the files go for a Google test run
----------
* runTests        - This is your Google Test build.  This is created when you run test.sh
* Report.txt      - This is the captured text from the build process and runTests