pipeline {
        agent { dockerfile true
            docker {
                    image 'maven:3-alpine'
                    args '-v $HOME/.m2:/root/.m2'
                }
        }
        tools {
                //jdk 'jdk8'
                maven 'maven3'
        }
        stages {

            stage('Build') {
                steps {
                    sh 'mvn --version'
                }
            }
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
           /*post {
              always {
                 sh "docker-compose down || true"
              }
           }*/

}
