pipeline{
    agent {label 'Jenkin-agent'}

    tools{
        jdk
        maven
    }

    stages{
        stage ("Cleanup Workspace"){
            steps{
                cleanWs()
            }
        }
        stage ("Checkout from SCM"){
            steps{
                git branch: 'main' credentialsId: '' url: ''
            }
        }
        stage ("Build the application"){
            steps{
                sh 'mvn clean package'
            }
        }
        stage ("Test the application"){
            steps{
                sh 'mvn test'
            }
        }
        stage ("Sonarqube Analysis"){
            steps{
                script{
                    withSonarQubeEnv(credentialId: ''){
                        sh 'mvn sonar:sonar'
                    }

                }
            }
        }
    }
}