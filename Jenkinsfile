node {
    stage('Checkout And Build')
    {
        build 'DASH-gitCheckoutandBuild'
    }
    stage ('Unit Testing')
    {
     build 'DASH-UnitTestExecution'   
    }
    stage ('QualityControl')
    {
        build 'DASH-QualityControl-FindBugs'
    }
    stage('Upload to Artifactory')
{
    //from API dir
    //from core dir
    //from Collectors dir
        
    archiveArtifacts 'api/target/api.jar'
    archiveArtifacts 'core/target/core*.jar'
    archiveArtifacts 'collectors/artifact/artifactory/target/artifactory*.jar'
    archiveArtifacts 'collectors/cloud/aws/target/aws*.jar'
    archiveArtifacts 'collectors/deploy/udeploy/target/udeploy*.jar'
    archiveArtifacts 'collectors/deploy/xldeploy/target/xldeploy*.jar'
    archiveArtifacts 'collectors/feature/gitlab/target/gitlab*.jar'
    archiveArtifacts 'collectors/feature/versionone/target/versionone*.jar'
    archiveArtifacts 'collectors/feature/jira/target/jira*.jar'
    archiveArtifacts 'collectors/misc/chat-ops/target/chat*.jar'
    archiveArtifacts 'collectors/performance/appdynamics/target/appdynamics*.jar'
    archiveArtifacts 'collectors/build/bamboo/jenkins*.jar'
    archiveArtifacts 'collectors/build/bamboo/target/bamboo*.jar'
    archiveArtifacts 'collectors/build/jenkins/target/jenkins*.jar'
    archiveArtifacts 'collectors/build/jenkins-cucumber/target/jenkins*.jar'
    archiveArtifacts 'collectors/build/sonar/target/sonar*.jar'
    archiveArtifacts 'collectors/scm/bitbucket/target/bitbucket*.jar'
    archiveArtifacts 'collectors/scm/gerrit-collector/target/Gerrit*.jar'
    archiveArtifacts 'collectors/scm/github/target/github*.jar'
    archiveArtifacts 'collectors/scm/subversion/target/subversion*.jar'
   
   def server = Artifactory.server 'Dashboard'
   sh 'pwd'
def uploadSpec = """{
  "files": [
    {
        
      "pattern": "api/target/api.jar",
      "target": "DashBoardArtifacts"
      
    },
    { 
       
      "pattern": "core/target/core*.jar",
      "target": "DashBoardArtifacts"   
    },
    {
       "pattern" : "collectors/artifact/artifactory/target/artifactory*.jar",
        "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/cloud/aws/target/aws*.jar",
        "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/deploy/udeploy/target/udeploy*.jar" ,
        "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/deploy/xldeploy/target/xldeploy*.jar",
        "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/feature/gitlab/target/gitlab*.jar",
        "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/feature/versionone/target/versionone*.jar",
        "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/feature/jira/target/jira*.jar",
        "target"  : "DashBoardArtifacts"
        
    },
    
    {
       "pattern" : "collectors/misc/chat-ops/target/chat*.jar",
        "target"  : "DashBoardArtifacts"
        
    },
    
    {
       "pattern" : "collectors/performance/appdynamics/target/appdynamics*.jar",
       "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/build/bamboo/jenkins*.jar",
       "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/build/bamboo/target/bamboo*.jar",
       "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/build/jenkins/target/jenkins*.jar",
       "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/build/jenkins-cucumber/target/jenkins*.jar",
       "target"  : "DashBoardArtifacts"
        
    },
    
    {
       "pattern" : "collectors/build/sonar/target/sonar*.jar",
       "target"  : "DashBoardArtifacts"
        
    },
     {
       "pattern" : "collectors/scm/bitbucket/target/bitbucket*.jar",
       "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/scm/gerrit-collector/target/Gerrit*.jar",
       "target"  : "DashBoardArtifacts"
        
    },
    {
       "pattern" : "collectors/scm/github/target/github*.jar",
       "target"  : "DashBoardArtifacts"
        
    },
     {
       "pattern" : "collectors/scm/subversion/target/subversion*.jar",
       "target"  : "DashBoardArtifacts"
        
    }
    
    
 ]
}"""
def buildInfo2=server.upload(uploadSpec)
server.publishBuildInfo(buildInfo2)
}
/*
stage('Package'){
   sh 'rm -rf api.jar*'
   sh 'rm -rf deployit-manifest.xml*'
   sh 'curl -uadmin:APkhWENY2cEuENfqcxZ5SQ5zCk -O "http://10.43.13.101:8081/artifactory/Dashboard/api.jar"'
   sh 'curl -uadmin:APkhWENY2cEuENfqcxZ5SQ5zCk -O "http://10.43.13.101:8081/artifactory/Dashboard/deployit-manifest.xml"'
   xldCreatePackage artifactsPath: '', darPath: '$JOB_NAME-$BUILD_NUMBER.0.dar', manifestPath: 'deployit-manifest.xml'

}

stage ('Publish Package'){
   xldPublishPackage darPath: '$JOB_NAME-$BUILD_NUMBER.0.dar', serverCredentials: 'XlDeploy101'

}
stage('Deploy'){
    xldDeploy environmentId: 'Environments/Dev', packageId: 'Applications/DashboardApp/$JOB_NAME-$BUILD_NUMBER', serverCredentials: 'XlDeploy101'
    //hygieiaDeployPublishStep applicationName: 'Application/DashboardApp/', artifactDirectory: '', artifactGroup: 'com.gslab', artifactName: 'api.jar', artifactVersion: '$JOB_NAME-$BUILD_NUMBER', buildStatus: 'Success', environmentName: 'Dev'
 }
 */
 
    
}
