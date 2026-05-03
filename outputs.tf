output "alb_dns_name" {
  description = "Public DNS name of the Application Load Balancer — use this as the API base URL"
  value       = aws_lb.main.dns_name
}

output "name_prefix" {
  description = "Common resource name prefix"
  value       = local.name_prefix
}

output "ecr_urls" {
  description = "ECR repository URLs for each service"
  value = {
    eureka_server = aws_ecr_repository.eureka_server.repository_url
    api_gateway   = aws_ecr_repository.api_gateway.repository_url
    user_service  = aws_ecr_repository.user_service.repository_url
    book_service  = aws_ecr_repository.book_service.repository_url
  }
}

output "sqs_queue_url" {
  description = "SQS queue URL for user-name-change events"
  value       = aws_sqs_queue.user_name_changes.url
}


output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.main.name
}

output "ecs_service_names" {
  description = "ECS service names by component"
  value = {
    eureka_server = aws_ecs_service.eureka_server.name
    api_gateway   = aws_ecs_service.api_gateway.name
    user_service  = aws_ecs_service.user_service.name
    book_service  = aws_ecs_service.book_service.name
  }
}
