output "eksclusterrole_arn" {
  value = module.roles["eksclusterrole-eks"].role_arn
}
output "eksnodegrouprole_arn" {
  value = module.roles["eksnodegrouprole-ec2"].role_arn
}
