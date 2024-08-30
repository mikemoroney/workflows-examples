
{
    "Comment": "Return the length of an array in an email",
    "StartAt": "DetermineSize",
    "States": { 
        "DetermineSize": { 
            "Type": "Pass",
            "Variable": "$.input_string",
            "Variable": "$.splitter",
            "input_array.$": "States.StringSplitFail($.input_string, $.splitter)",
            "len_input.$": "States.ArrayLengthFail($.input_array)",
            "Result": { 
                "answer.$": "$.len_input"
            },
            "Next": "Provision"
        },
        "Provision": {
            "Type": "Task",
            "Resource": "manageiq://email",
            "Parameters": { 
              "To": "mikemoro@ie.ibm.com",
              "Subject": "workflow output",
              "Body": "$.answer"
            },
            "Next": "Finished"
        },
        "Finished": { 
            "Type": "Succeed"
        }
    }
} 
