{
  "Comment": "NotExist",
  "StartAt": "NotExist",
  "States": {
    "NotExist": {
      "Type": "Task",
      "Resource": "docker://docker-na.artifactory.swg-devops.com/hyc-cp4mcm-team-scratch-docker-local/aiops-backup-restore/notexist:latest",
      "End": true,
      "Catch": [
        {
          "ErrorEquals": [ "ErrImagePull", "ImagePullBackOff" ],
          "Next": "ImageFailState"
        }
      ]
    },
    "ImageFailState": {
      "Type": "Fail",
      "Error": "ImageFailStateError",
      "Cause": "ImageFailed"
    }
  }
}
