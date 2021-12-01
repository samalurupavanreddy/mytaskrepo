resource "aws_ecs_cluster" "mytask-cluster" {
  name = "ecs-cluster-for-mytask"
}

resource "aws_ecs_service" "demo-ecs-service-1" {
  name            = "task-app"
  cluster         = aws_ecs_cluster.mytask-cluster.id
  task_definition = aws_ecs_task_definition.demo-ecs-task-definition.arn
  launch_type     = "FARGATE"
  network_configuration {
    subnets          = ["subnet-038b6352205841e73"]
    assign_public_ip = true
  }
  desired_count = 1
}

resource "aws_ecs_task_definition" "demo-ecs-task-definition" {
  family                   = "ecs-task-definition-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  memory                   = "1024"
  cpu                      = "512"
  execution_role_arn       = "arn:aws:iam::735898103157:role/cluster-role"
  container_definitions    = <<EOF
[
  {
    "name": "demo-container",
    "image": "nginx",
    "memory": 1024,
    "cpu": 512,
    "essential": true,
    "entryPoint": ["/"],
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ]
  }
]
EOF
}