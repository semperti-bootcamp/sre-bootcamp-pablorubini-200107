
def mannew = readJSON file: 'manifest-new.json'
def manold = readJSON file: 'manifest-old.json'

pipeline {
    agent { node { label 'pr-bc' } }
    stages {
        
        stage ('Revisar manifest'){
            if (mannew.manifest_version == manold.manifest_version){
                steps {
                    script {
                        echo 'por definir el manifesto'
                        def man = readJSON file: 'manifest-new.json'
                        echo "the version of this manifest is: ${mannew.manifest_version}" 
                    }
                } 
            } else {
                echo 'puto el que lee'
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
