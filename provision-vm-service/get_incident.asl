{
  "Comment": "Retrieve a single ServiceNow incident by sys_id",
  "StartAt": "GetIncident",
  "States": {
    "GetIncident": {
      "Type": "Task",
      "Resource": "servicenow://incident/get_incident",
      "Credentials": {
        "username.$": "$$.Credentials.username",
        "password.$": "$$.Credentials.password",
        "instance_id.$": "$$.Credentials.instance_id",
        "sys_id.$": "$$.Credentials.sys_id"
      },
      "Parameters": {
        "instance_id.$": "$.instance_id",
        "sys_id.$": "$.sys_id"
      },
      "ResultPath": "$.incident",
      "End": true
    }
  }
}

