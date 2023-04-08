pipeline {
    agent any
    tools {
       maven "MAVEN_LOCAL"
    }
    stages {
        stage ('Just Test') {
           steps {
                sh 'mvn clean package -DskipTestes=true'
            }
        }
    }
}