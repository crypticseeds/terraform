output "vpc_id" {
  value = module.networking.vpc_id
}

output "jenkins_public_ip" {
  value = module.ec2.jenkins_public_ip
}

# Commented out outputs for resources not currently in use
/*
output "sonarqube_public_ip" {
  value = module.ec2.sonarqube_public_ip
}

output "argocd_public_ip" {
  value = module.ec2.argocd_public_ip
}

output "nexus_public_ip" {
  value = module.ec2.nexus_public_ip
}

*/

output "eks_cluster_endpoint" {
  value = module.eks.endpoint
}

output "load_balancer_url" {
  value       = module.lb.nlb_dns_name
  description = "The URL of the load balancer"
}

output "rds_endpoint" {
  value       = module.rds.endpoint
  description = "The connection endpoint for the RDS instance"
}