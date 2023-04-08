pipeline {
    agent any
    tools {
       maven "MAVEN_LOCAL"
    }
    stages {
        stage ('Initialize') {
            steps {
                bat 'echo "MAVEN_LOCAL = ${MAVEN_HOME}' 
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
    }
}