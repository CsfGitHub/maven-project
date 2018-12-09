pipeline {
    //cualquier agente puede coger el pipeline
    agent any
    stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
                //el ouput será guarddo localmente como tomcatwebapp + version de jenkins
                sh 'docker build . -t tomcatwebapp:${env.BUILD_ID}' //current diretory, or current jenkins build directory
             }             
            
        }
    }
}