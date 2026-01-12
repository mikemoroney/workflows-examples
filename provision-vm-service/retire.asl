{
  "Comment": "Retire",
  "StartAt": "Retire",
  "States": {
    "Retire": {
      "Type": "Task",
      "Resource": "manageiq://retire_execute",
      "End": true
    }
  }
}
