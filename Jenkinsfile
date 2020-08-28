pipeline {
        agent { dockerfile true }
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
                    sh 'mvn clean install'
                    sh "cp /var/jenkins_home/workspace/springboot-docker-sample-dockerfile/target/spring-boot-web.war /usr/local/tomcat/webapps/"

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
