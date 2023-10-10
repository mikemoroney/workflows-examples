{
  "Comment": "Credential Test",
  "StartAt": "CredentialTest",
  "States": {
    "CredentialTest": {
      "Type": "Task",
      "Resource": "docker://docker.io/mikem834/credential-test:latest",
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
