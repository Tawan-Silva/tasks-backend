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
         stage ('Sonar Test') {
           steps {
                bat 'mvn test'
            }
        }
    }
}