pipeline {
    agent any
    tools {
       maven "M2_HOME"
    }
    stages {
        stage ('Initialize') {
            steps {
                bat 'echo "M2_HOME = ${MAVEN_LOCAL}"' 
            }
        }
        stege ('Just Test') {
           steps {
                bat 'mvn clean package -DskipTestes=true'
            }
        }
    }
}