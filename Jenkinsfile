pipeline
{
    environment {
    registry = "sammednandrekar/to-do-app"
    registryCredential = 'DockerHub'
    dockerImage = ''
    }
    agent any
    stages{

         stage ('Build and Docker Image') {
                  steps {
                        script {
                            dockerImage = docker.build registry
                               docker.withRegistry( '', registryCredential )
                               {
                                        dockerImage.push()
                                }

                        }
                  }
                  }

}
}