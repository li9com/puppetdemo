node {
    stage("Checkout") {
        checkout scm
    }
    gitlabBuilds(builds: ["Syntax", "Unit", "Build"]) {
        stage("Syntax") {
            gitlabCommitStatus( name: "Syntax") {
                sh "rake lint"
                sh "puppet parser validate manifests/*.pp"
            }
        }
        stage("Unit") {
            gitlabCommitStatus( name: "Unit") {
                sh "rake rspec"
            }
        }
        stage("Build") {
            gitlabCommitStatus( name: "Build") {
                sh "puppet module build ."
            }
        }
    }
    stage("DEV_ENV") {
        echo "not implemented"
    }
    stage("QA_ENV") {
        echo "not implemented"
    }
    stage("PROD_ENV") {
        echo "not implemented"
    }
}
