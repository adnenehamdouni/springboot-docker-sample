pipeline {
        agent any
        tools {
                //jdk 'jdk8'
                maven 'maven3'
        }
        stages {
            stage('test maven installation') {
                steps {
                    sh 'mvn -version'
                    sh 'which mvn'
                }
            }

            stage('Clean') {

                steps {
                    echo 'Cleaning..'
                }
            }

            stage('Test') {

                steps {
                    echo 'Testing..'
                    sh 'mvn clean test'

                }
            }

            stage('Package') {

                steps {
                    echo 'Packaging..'
                    sh 'mvn clean package'

                }
            }

            stage('Package') {

                steps {
                    echo 'Packaging..'
                    sh 'mvn clean package'

                }
            }


        }

}
