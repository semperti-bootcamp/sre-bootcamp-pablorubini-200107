pipeline {
    agent { node { label 'pr-bc' } }

    stages {
        stage('Pull Docker') {
            steps {
                echo 'Pulling..'
                sh 'docker pull pablitorub/journals:latest'
            }
        }
        stage('Docker exists?') {
            try {
            sh 'exit 1'
        }
        catch (exception e) {
            echo 'Something failed, I should sound the klaxons!'
            throw
        }
        }
    
            // try {

            //     echo 'Checking if docker exists and deleting ...'
            //     def dockerID = sh 'docker container ps -aq -f ancestor=pablitorub/journals'
            //     sh "docker container stop ${dockerID}"
            //     sh "xargs docker rm ${dockerID}"
            // } catch (exception) {
            //         echo 'Container does not exists'
            //     }
                // echo 'Checking if docker exists and deleting ...'    
            
                //             script {
                //                 def dockerID = sh 'docker container ps -aq -f ancestor=pablitorub/journals'
                //                 sh "docker container stop ${dockerID}"
                //                 sh "xargs docker rm ${dockerID}"
                //             }
                //         } catch (exception){
                //             echo = 'Container does not exists'
                //     }
                // }
        // stage('Run Docker') {
        //     steps {
        //         echo 'Running..'
        //         sh 'docker run -d --privileged --name journals_app  -p 8080:8080 -ti pablitorub/journals:latest'
        //     }
        // }
        // stage('Test web') {
        //     steps {
        //         timeout(5) {
        //             waitUntil {
        //                 script {
        //                 def r = sh script: 'curl http://10.252.7.110:8080 -o /dev/null', returnStatus: true
        //                 return (r == 0);
        //                 }
        //             }
        //         }
        //     }
        // }
    }

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
