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
          "Next": "Winner"
          },
          {
          "Variable": "States.Base64Encode($.input_string)",
          "StringEquals": "SGVsbG8gV29ybGQK",
          "Next": "Winner"
          }
        ],
        "Default": "Loser"
    },
    "Winner": { 
      Type : Succeed
    },
  "Loser": { 
    Type : Fail
  }
  }
  }
