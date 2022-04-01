pipeline
{
    environment {
    registry = "sammednandrekar/to-do-app"
    registryCredential = 'DockerHub'
    dockerImage = ''
    }
    agent any
    stages{

         stage ('Build and Deploy Docker Image') {
                  steps {
                        script {
                            dockerImage = docker.build registry + ":latest"
                               docker.withRegistry( '', registryCredential )
                               {
                                        dockerImage.push()
                                }

                        }
                  }
                  }

                 stage('Deploy to local kubernete cluster') {
                                    steps{
                                      sh "kubectl apply -f KuberneteDeployment.yaml"
                                      sh "kubectl apply -f KuberneteService.yaml"
                                    }
                                  }

}
}