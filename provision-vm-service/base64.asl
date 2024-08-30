{
  "Comment": "Tests that the input equals hello world or Hello World",
  "StartAt": "CheckInput",
  "States": {
      "CheckInput": {
        "Type": "Choice",
        "Choices": [
          {
          "Variable": "States.Base64Encode($.input_string)",
          "StringEquals": "xxxxxxxxx",
          "Next": "Winner"
          },
          {
          "Variable": "States.Base64Encode($.input_string)",
          "StringEquals": "yyyyyyyyy",
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
