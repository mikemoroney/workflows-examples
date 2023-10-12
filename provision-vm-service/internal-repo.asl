{
  "Comment": "Internal Repo",
  "StartAt": "InternalRepo",
  "States": {
    "InternalRepo": {
      "Type": "Task",
      "Resource": "docker://docker-na.artifactory.swg-devops.com/hyc-cp4mcm-team-scratch-docker-local/aiops-backup-restore/internal-repo:latest",
      "End": true,
      "Credentials": {
        "api_user.$": "$.api_user",
        "api_password.$": "$.api_password"
      },
      "Parameters": {
        "PROVIDER_TYPE.$": "ManageIQ::Providers::Vmware::InfraManager",
        "VERIFY_SSL": false
      }
    }
  }
}
