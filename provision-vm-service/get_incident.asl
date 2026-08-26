{
  "Comment": "Retrieve a single ServiceNow incident by sys_id",
  "StartAt": "GetIncident",
  "States": {
    "GetIncident": {
      "Type": "Task",
      "Resource": "servicenow://incident/query_incidents",
      "Credentials": {
        "username.$": "$$.Credentials.username",
        "password.$": "$$.Credentials.password",
        "instance_id.$": "$$.Credentials.instance_id"
      },
      "Parameters": {
        "instance_id.$": "$.instance_id"
      },
      "ResultPath": "$.incident",
      "End": true
    }
  }
}

