{
  "Comment": "List VMs",
  "StartAt": "ListVMs",
  "States": {
    "ListVMs": {
      "Type": "Task",
      "Resource": "docker://docker://docker-na.artifactory.swg-devops.com/hyc-cp4mcm-team-scratch-docker-local/aiops-backup-restore/list-vms:latest",
      "End": true,
      "Credentials": {
        "api_user.$": "$.api_user",
        "api_password.$": "$.api_password"
      },
      "Parameters": {
        "VERIFY_SSL": false,
        "API_URL.$": "$.dialog.api_dialog"
      }
    }
  }
}
