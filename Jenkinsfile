node {
    stage('Checkout'){
            checkout scm
    }

    docker.withRegistry("${params.DOCKER_REGISTRY_URL}", "${params.DOCKER_REGISTRY_CREDENTIALS}") {
        stage "Build"
        def app = docker.build "${params.IMAGE_NAME}", " ."

        stage "Publish"
        app.push 'latest'
    }
}
