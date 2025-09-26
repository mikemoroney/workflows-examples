{
  "Comment": "Get Instances",
  "StartAt": "GetInstances",
  "States": {
    "GetInstances": {
      "Type": "Task",
      "Resource": "docker://docker.io/mikem834/get-instances:latest",
      "End": true,
      "Credentials": {
        "api_user.$": "$.api_user",
        "api_password.$": "$.api_password"
      },
      "Parameters": {
        "PROVIDER_TYPE": "ManageIQ::Providers::Vmware::InfraManager",
        "VERIFY_SSL": false,
        "API_URL.$": "$.dialog.api_dialog"
      }
    }
  }
}
