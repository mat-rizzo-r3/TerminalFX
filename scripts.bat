mvn clean install dependency:copy-dependencies

java --module-path %JAVA_HOME%/jmods;target\terminalfx.jar;target\dependency --add-modules terminalfx -m terminalfx/com.terminalfx.AppStarter

java --module-path %JAVA_HOME%/jmods;target\terminalfx.jar;target\dependency --add-modules terminalfx -jar target\terminalfx.jar

jlink --module-path %JAVA_HOME%/jmods;target\terminalfx.jar;target\dependency --add-modules terminalfx --launcher terminalfx=terminalfx/com.terminalfx.AppStarter --output target/release