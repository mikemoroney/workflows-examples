{
  "Comment": "Retrieve a number of ServiceNow incidents",
  "StartAt": "GetIncidents",
  "States": {
    "GetIncidents": {
      "Type": "Task",
      "Resource": "servicenow://incident/query_incidents",
      "Credentials": {
        "username.$": "$$.Credentials.username",
        "password.$": "$$.Credentials.password",
 "instance_id.$": "$$.Credentials.instance_id"
      },
      "Parameters": { 
                "instance_id.$": "$$.Credentials.instance_id"
      },
      "ResultPath": "$.incident",
      "End": true
    }
  }
}

