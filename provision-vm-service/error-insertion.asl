{
    "Comment": "Invalid ASL File",
    "StartAt": "DetermineSize",
    "States": { 
        "DetermineSize": { 
            "Type": "Fake",
            "Variable": "$.cpu",
            "newcpu.$": "States.FakeMaths($.cpu,3)",
            "Result": { 
                "vm_memory": "2048",
                "number_of_sockets": "$.newcpu"
            },
            "Next": "Provision"
        },
        "Provision": {
            "Type": "MadeUp",
            "Resource": "manageiq://provision_execute",
            "Next": "Finished"
        },
        "Finished": { 
            "Type": "Succeed"
        }
    }
} 
