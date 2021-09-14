echo Installing Sonar Scanner Cli
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.>
unzip sonar-scanner-cli-4.6.2.2472-linux.zip
export PATCH=$(pwd)/sonar-scanner-cli-4.6.2.2472-linux/bin:$PATH
echo Sonar Scanner Installed
echo Runner Sonar Scanner...
# We add here the command that runs sonar scanner
sonar-scanner \
  -Dsonar.projectKey=adrian-jimenez-sast-lab-example \
  -Dsonar.sources=. \
  -Dsonar.host.url=https://sonar.semanticsecurity.org \
  -Dsonar.login=$SONARQUBE_LOGIN
echo Done!


