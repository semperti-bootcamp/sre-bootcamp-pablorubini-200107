#!groovy

def man

pipeline {
    agent { node { label 'pr-bc' } }
    stages {
        stage ('Test'){
            steps {
                script {
                echo 'por definir el manifesto'
                man = readJSON file: 'manifest_new.json';

                //def manifest_version = 1
                echo "the version of this manifest is: ${man.manifest_version}" 
                
                }
            }
        }
    }

    // stages {
    //     stage('Pull Docker') {
    //         steps {
    //             echo 'Pulling..'
    //             sh 'docker pull pablitorub/journals:latest'
    //         }
    //     }
    //     stage('Docker exists?') {
    //         steps {
    //             sh 'chmod u+rx Scripts/checkdocker.sh'
    //             sh 'Scripts/checkdocker.sh'
    //         }
    //     }
    //     stage('Run Docker') {
    //         steps {
    //             echo 'Running..'
    //             sh 'docker run -d --privileged --name journals_app  -p 8080:8080 -ti pablitorub/journals:latest'
    //         }
    //     }
    //     stage('Test web') {
    //         steps {
    //             timeout(5) {
    //                 waitUntil {
    //                     script {
    //                     def r = sh script: 'curl http://10.252.7.110:8080 -o /dev/null', returnStatus: true
    //                     return (r == 0);
    //                     }
    //                 }
    //             }
    //         }
    //     }
    // }

    post {
        always {
            echo 'This will always run'
        }
        success {
            echo 'This will run only if successful'
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
}
