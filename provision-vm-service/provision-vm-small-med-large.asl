{
  "Comment": "Provision VM with choice for small medium large",
  "StartAt": "DetermineSize",
  "States": {
    "DetermineSize": {
      "Type": "Choice",
      "Choices": [
        {
          "Variable": "$.size",
          "StringEquals": "small",
          "Next": "SmallSizeState"
        },
        {
          "Variable": "$.size",
          "StringEquals": "medium",
          "Next": "MediumSizeState"
        },
        {
          "Variable": "$.size",
          "StringEquals": "large",
          "Next": "LargeSizeState"
        }
      ],
      "Default": "SmallSizeState"
    },
    "SmallSizeState": {
      "Type": "Pass",
      "Result": {
        "vm_memory": "2048",
        "number_of_sockets": "1"
      },
      "Next": "Provision"
    },
    "MediumSizeState": {
      "Type": "Pass",
      "Result": {
        "vm_memory": "4096",
        "number_of_sockets": "2"
      },
      "Next": "Provision"
    },
    "LargeSizeState": {
      "Type": "Pass",
      "Result": {
        "vm_memory": "8192",
        "number_of_sockets": "4"
      },
      "Next": "Provision"
    },
    "Provision": {
      "Type": "Task",
      "Resource": "manageiq://provision_execute",
      "Next": "Finished"
    },
    "SendEmail": {
      "Type": "Task",
      "Resource": "manageiq://email",
      "Parameters": {
        "To": "user@example.com",
        "From": "noreply@manageiq.org",
        "Title": "Your provisioning has completed",
        "Body": "Your provisioning request has completed"
      },
      "Next": "Finished"
    },
    "Finished": {
      "Type": "Succeed"
    }
  }
}
