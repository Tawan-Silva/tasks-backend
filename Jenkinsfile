pipeline {
    agent any
    tools {
       maven "MAVEN_LOCAL"
    }
    stages {
        stage ('Initialize') {
            steps {
                bat 'echo "MAVEN_LOCAL = ${MAVEN_LOCAL}"' 
            }
        }
        stege ('Just Test') {
           steps {
                bat 'mvn clean package -DskipTestes=true'
            }
        }
    }
}