pipeline {
    agent any
    tools {
       maven "MAVEN_LOCAL"
    }
    stages {
        stage ('Initialize') {
            steps {
                bat 'mvn --version' 
            }
        }
        stage ('Just Test') {
           steps {
                bat 'mvn clean package -DskipTests=true'
            }
        }
        stage ('Unit Test') {
           steps {
                bat 'mvn test'
            }
        }
         stage ('Sonar Analysis') {
            environment {
                scannerHome = tool 'SONAR_SCANEER'
            }
           steps {
                withSonarQubeEnv('SONAR_LOCAL') {
                    bat "${scannerHome}/bin/sonar-scanner -e -Dsonar.projectKey=DeployBack -Dsonar.host.url=http://localhost:9000 -Dsonar.login=0b655729356e2e2db9063641e73cf634f3c38e50 -Dsonar.java.binaries=target -Dsonar.coverage.exclusions=**./.mvn/**,**/src/test**,**/model/**,**Application.java"
                }
            }
        }
    }
}