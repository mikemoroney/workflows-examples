{
  "Comment": "Credential Test",
  "StartAt": "CredentialTest",
  "States": {
    "CredentialTest": {
      "Type": "Task",
      "Resource": "docker://docker-na.artifactory.swg-devops.com/hyc-cp4mcm-team-scratch-docker-local/aiops-backup-restore/credential-test:latest",
      "End": true,
      "Credentials": {
        "api_user.$": "$$.Credentials.api_user",
        "api_password.$": "$$.Credentials.api_password",
        "url.$": "$$.Credentials.url"
      },
      "Parameters": {
        "PROVIDER_TYPE": "ManageIQ::Providers::Vmware::InfraManager",
        "VERIFY_SSL": false
      }
    }
  }
}
