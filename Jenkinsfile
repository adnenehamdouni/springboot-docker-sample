pipeline {
        agent { dockerfile true }
        tools {
                //jdk 'jdk8'
                maven 'maven3'
        }
        stages {


            stage('Clean') {

                steps {
                    echo 'Cleaning..'
                }
            }
            stage('docker-compose') {
               steps {
                  sh "docker-compose build"
                  sh "docker-compose up -d"
               }
           }
               }
           post {
              always {
                 sh "docker-compose down || true"
              }
           }

}
