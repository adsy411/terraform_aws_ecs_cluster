[
  {
    "name": "Jira-Container",
    "image": "${app_image}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "sourceVolume": "jira-prod",
    "containerPath": "/opt",
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "ecs/Jira-Container",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    ""
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ]
  }
]