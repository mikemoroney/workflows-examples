{
  "Comment": "Tests that the input equals hello world or Hello World",
  "StartAt": "CheckInput",
  "States": {
      "EncodeInput" : {
        "Type": "Pass",
        "Variable": "$.input_string",
        "Result": { 
            "encoded.$" : "States.Base64Encode($.input_string)"
        }
      },
      "CheckInput": {
        "Type": "Choice",
        "Choices": [
          {
          "Variable": "$.encoded",
          "StringEquals": "aGVsbG8gd29ybGQK",
          "Next": "SuccessState"
          },
          {
          "Variable": "$.encoded",
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
