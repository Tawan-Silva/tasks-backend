pipeline {
    agent any
    tools {
       maven "MAVEN_LOCAL"
    }
    stages {
        stage ('Initialize') {
            steps {
                sh 'echo "MAVEN_LOCAL = ${MAVEN_LOCAL}"' 
            }
        }
        stage ('Just Test') {
           steps {
                sh 'mvn clean package -DskipTestes=true'
            }
        }
    }
}