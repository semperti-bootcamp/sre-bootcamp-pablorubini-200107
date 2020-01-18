pipeline {
    agent { node { label 'pr-bc' } }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'mvn -f Code/pom.xml compile'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'mvn -f Code/pom.xml test'
            }
        }
        stage('Package') {
            steps {
                echo 'Packaging....'
                sh 'mvn -f Code/pom.xml package'
            }
        }
        stage('Snapshot') {
            steps {
                echo 'Uploading snapshot to nexus'
                sh 'mvn --batch-mode release:update-versions -DdevelopmentVersion=1.0-SNAPSHOT'
            }
        }
        stage('Docker') {
            steps {
                echo 'Creating docker image...'
                sh 'docker build -f dockerfile -t pablitorub/journals:1.0 -t pablitorub/journals:latest .'
                echo 'Uploading docker image to dockerhub...'
                sh 'docker push pablitorub/journals:latest'
                sh 'docker push pablitorub/journals:1.0'
            }
        }
        stage('Running') {
            steps {
                echo 'Creating docker image...'
                sh 'docker build -f dockerfile -t pablitorub/journals:1.0 -t pablitorub/journals:latest .'
                echo 'Uploading docker image to dockerhub...'
                sh 'docker push pablitorub/journals:latest'
                sh 'docker push pablitorub/journals:1.0'
            }
        }
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
