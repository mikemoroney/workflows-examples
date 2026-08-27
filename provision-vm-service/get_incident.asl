{
  "Comment": "Retrieve a number of ServiceNow incidents",
  "StartAt": "GetIncidents",
  "States": {
    "GetIncidents": {
      "Type": "Task",
      "Resource": "servicenow://incident/query_incidents",
      "Credentials": {
        "username.$": "$$.Credentials.username",
        "password.$": "$$.Credentials.password"
      },
      "Parameters": {
        "instance_id.$": "$.instance_id"
      },
      "ResultPath": "$.incident",
      "End": true
    }
  }
}

