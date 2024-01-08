{
  "StartAt": "SetResult",
  "States": {
    "SetResult": {
      "Type": "Task",
      "Resource": "docker://docker-na.artifactory.swg-devops.com/hyc-cp4mcm-team-scratch-docker-local/aiops-backup-restore/set-result:latest",
      "ResultPath": "$.Credentials",
      "Next": "GetResult"
    },
    "GetResult": {
      "Type": "Task",
      "Resource": "docker://docker-na.artifactory.swg-devops.com/hyc-cp4mcm-team-scratch-docker-local/aiops-backup-restore/get-result:latest",
      "Credentials": {
        "token.$": "$.token"
      }
    }
  }
}
