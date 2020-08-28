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
                    sh 'docker-compose up -d'
                }
            }


        }

}
