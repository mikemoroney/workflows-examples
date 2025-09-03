
{
  "Comment": "Execute a REST API call",
  "StartAt": "Test",
  "States": {
    "Test": {
      "Type": "Task",
      "Resource": "floe://http",
      "Parameters": {
        "Method": "GET",
        "Url": "https://www.w3schools.com/xml/simple.xml",
        "Headers": {
          "Accept": "text/xml"
        }
      },
      "End": true
    }
  }
}


