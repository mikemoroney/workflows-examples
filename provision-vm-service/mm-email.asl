{ 
"Comment": "send an email",
"StartAt": "SendEmail",
"States": { 
  "SendEmail": {
            "Type": "Task",
            "Resource": "manageiq://email",
            "Parameters": { 
              "To": "mikemoro@ie.ibm.com",
              "Subject": "workflow output",
              "Body": "this is a test from a workflow"
            },
            "End": "True"
        
    }
  }
}
