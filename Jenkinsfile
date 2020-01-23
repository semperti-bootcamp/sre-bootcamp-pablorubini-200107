
def mannew 
def manold

pipeline {
    agent { node { label 'pr-bc' } }
    stages {
        
        stage ('Revisar manifest'){
            
            steps {
                
                script {
                    manifest = readJSON file: 'manifest.json'
                    def retstatus = sh 'Scripts/repostatus.sh', returnStatus:true
                    if ( rertstatus != 0 ){
                        echo "No existen cambios en el repo" 
                    } else {
                        echo 'hay cambios en el repo, building...'
                                                    
                            //Falta pushear desde el server los archivos modificados a la branch a09-gitops

                            //If ambiente prod entonces hago todo Y PUERTO 8080
                            // if ambiente staging entonces no pulleo ni corro

                            stage ('Pull Docker'){
                                echo 'Pulling docker ...'
                                sh 'docker pull pablitorub/journals:latest'

                            }

                    }
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
