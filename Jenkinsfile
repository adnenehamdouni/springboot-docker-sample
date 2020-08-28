pipeline {
        agent any
        tools {
                //jdk 'jdk8'
                maven 'maven3'
                // Set the desired Python version
                pythonVersion '2.7'
        }

        /* Set the docker image name that for this build container.
       It's generally a good idea to use the same docker image per
       branch, so that containers are cached and thus the builds are faster. */
        def ci_image_name = "simple_jenkins_test_${pythonVersion}_${env.BRANCH_NAME}"

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
