{
  "Comment": "Tests that the input equals hello world or Hello World",
  "StartAt": "CheckInput",
  "States": {
      "CheckInput": {
        "Type": "Choice",
        "Choices": [
          {
          "Variable": "States.Base64Encode($.input_string)",
          "StringEquals": "aGVsbG8gd29ybGQK",
          "Next": "SuccessState"
          },
          {
          "Variable": "States.Base64Encode($.input_string)",
          "StringEquals": "SGVsbG8gV29ybGQK",
          "Next": "SuccessState"
          }
        ],
        "Default": "FailState"
      },
      "SuccessState": { 
        "Type" : "Succeed"
      },
      "FailState": { 
        "Type" : "Fail",
        "Error": "xxxxxx input_string is not what we expected xxxxxxx"
      }
  }
  }
