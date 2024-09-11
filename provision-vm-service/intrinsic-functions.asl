{ 
  "Comment": "example",
  "StartAt": "State1",
  "States": { 
    "State1": { 
      "Type": "Pass",
      "Parameters": { 
        "output.$": "States.Format('input was {} and {}', $.input1, $.input2)"
      },
      "End": true
    } 
  }
}
