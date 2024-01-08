{
  "StartAt": "SetResult",
  "States": {
    "SetResult": {
      "Type": "Task",
      "Resource": "docker://login:latest",
      "ResultPath": "$.Credentials",
      "Next": "GetResult"
    },
    "GetResult": {
      "Type": "Task",
      "Resource": "docker://do-something:latest",
      "Credentials": {
        "token.$": "$.token"
      }
    }
  }
}
