@echo off
REM from help
REM
REM  -f,--file <arg>                        Force the use of an alternate POM
REM                                         file (or directory with pom.xml)
REM
cd ..

echo.
echo Now calling with directory containing a pom.xml and 'maven.config is ignored
call mvn -f maven-test clean verify

echo.
echo Now calling with concrete file pom.xml and 'maven.config is recognized
call mvn -f maven-test\pom.xml clean verify

cd maven-test
