{
  "Comment": "Service Provisioning",
  "StartAt": "Approval",
  "States": {
    "Approval": {
      "Type": "Pass",
      "Next": "Provision"
    },
    "Provision": {
      "Type": "Task",
      "Resource": "manageiq://provision_task",
      "Parameters": {
        "request_type": "provision_via_automation_manager",
        "source_id.$": "$.dialog.dialog_terraform_template_id",
        "source_type": "ConfigurationScript",
        "options": {
          "src_configuration_script_id.$": "$.dialog.dialog_terraform_template_id",
          "src_ems_type": "embedded_terraform",
          "verbosity": [0, "Normal"],
          "log_output": ["on_error", "On Error"],
          "dialog": {
            "vm_name.$": "$.dialog.dialog_instance_name"
          }
        }
      },
      "Next": "PostProvision"
    },
    "PostProvision": {
      "Type": "Pass",
      "End": true
    }
  }
}
