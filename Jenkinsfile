pipeline {
    //cualquier agente puede coger el pipeline
    agent any
    stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
            }             
            
        }
    }
}