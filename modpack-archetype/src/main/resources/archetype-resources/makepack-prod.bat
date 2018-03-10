:: Call Pack Download Script
call packdownload.bat

for /f "delims=" %%i IN ('dir *.jar /b') DO set modpackdownloader=%%i
java -jar "%modpackdownloader%" -mergeManifests -manifest modpack.json -manifest common/base/mods.json -manifest common/prod/mods.json -manifest client/base/mods.json -manifest client/prod/mods.json

:: Assemble the Modpack
mvnw clean package -D profile.master
