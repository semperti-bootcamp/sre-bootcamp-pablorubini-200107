
def mannew 
def manold

pipeline {
    agent { node { label 'pr-bc' } }
    stages {
        
        stage ('Revisar manifest'){
            
            steps {
                
                script {
                    manifest = readJSON file: 'manifest.json'
                    def retstatus = sh (script: 'Scripts/repostatus.sh', returnStatus:true)
                    if ( retstatus == 0 ){  //Recordar cambiar == por !=
                        echo "No existen cambios en el repo" 
                    } else {
                        echo 'hay cambios en el manifest...'
                        if (manifest.ambiente == 'Produccion') {
                            echo 'Ambiente Productivo' 
                            stage('Pull Docker') {
                                    echo 'Pulling..'
                                    sh 'docker pull pablitorub/journals:latest'
                            }
                            stage('Docker exists?') {
                                    sh 'Scripts/checkdocker.sh'
                            }
                            stage('Run Docker') {
                                    echo 'Running..'
                                    sh 'docker run -d --privileged --name journals_app  -p 8080:8080 -ti pablitorub/journals:latest'
                            stage('Test web') {
                                    timeout(5) {
                                        waitUntil {
                                            script {
                                            def r = sh script: 'curl http://10.252.7.110:8080 -o /dev/null', returnStatus: true
                                            return (r == 0);
                                            }
                                        }
                                    }
                            }   
                        } // if ambiente staging entonces no pulleo ni corro
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
