{
    "Comment": "Provision VM adding 3 CPUs to the request ",
    "StartAt": "DetermineSize",
    "States": { 
        "DetermineSize": { 
            "Type": "Pass",
            "Variable": "$.cpu",
            "newcpu.$": "States.MathAdd($.cpu,3)",
            "Result": { 
                "vm_memory": "2048",
                "number_of_sockets": "$.newcpu"
            },
            "Next": "Provision"
        },
        "Provision": {
            "Type": "Task",
            "Resource": "manageiq://provision_execute",
            "Next": "Finished"
        },
        "Finished": { 
            "Type": "Succeed"
        }
    }
} 
