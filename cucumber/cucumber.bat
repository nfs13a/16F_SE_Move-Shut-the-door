javac -cp "jars/*;." step_definitions/MoveTest.java implementation/ScriptRunner.java implementation/StudentCourseManager.java
@ECHO OFF
powershell.exe -Command "& '%~dpn0.ps1'"
java -cp "jars/*;." cucumber.api.cli.Main -p progress --snippets camelcase -g step_definitions features
powershell.exe -Command "& 'remove.ps1'"