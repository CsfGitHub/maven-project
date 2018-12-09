pipeline {
    //cualquier agente puede coger el pipeline
    agent any
    stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
                //el ouput será guarddo localmente como tomcatwebapp + version de jenkins
                //el '.' es el current diretory, or current jenkins build directory
                sh "docker build . -t tomcatwebapp:${env.BUILD_ID}" 
             }             
            
        }
    }
}