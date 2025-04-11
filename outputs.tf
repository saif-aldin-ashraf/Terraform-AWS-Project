// Outputs already defined in main.tf

output "LB-DNS" {
  value = module.LoadBalancer-External.LoadBalancer-DNS
}
