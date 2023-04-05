pipeline {
  agent {
    dockerfile {
      filename './Dockerfile'
    }

  }
  stages {
    stage('Supergraph Publish to Dev') {
        steps {
        sh '''
        echo "Creating supergraph..."
        /home/rover/.rover/bin/rover supergraph compose --config $WORKSPACE/$SUPERGRAPH_CONFIG_PATH --output $WORKSPACE/$SUPERGRAPH_SCHEMA_PATH --elv2-license accept'''
           archiveArtifacts artifacts: '*.graphql',
                   allowEmptyArchive: true,
                   fingerprint: true,
                   onlyIfSuccessful: true
      }
    }
  }
  environment {
    SUPERGRAPH_SCHEMA_PATH = 'demo-supergraph1.graphql'
    APOLLO_GRAPH_REF = 'apoorva-guptas-team-demo-gc@main'
    SUPERGRAPH_CONFIG_PATH = 'demo-super.yaml'
    APOLLO_CONFIG_HOME = './tmp/config/rover'
  }
}