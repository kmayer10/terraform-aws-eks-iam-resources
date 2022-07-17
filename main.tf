module "roles" {
  for_each = toset(["${var.name}-eksclusterrole-eks","${var.name}-eksnodegrouprole-ec2"])
  source = "kmayer10/role/aws"
  version = "1.0.1"
  role = each.value
}
module "clusterrole_attach_policy" {
  source = "kmayer10/policy-attachment/aws"
  version = "1.0.1"
  role = module.roles["eksclusterrole-eks"].role_name
  policies = "AmazonEKSClusterPolicy,AmazonEKSVPCResourceController"
}
module "nodegrouprole_attach_policy" {
  source = "kmayer10/policy-attachment/aws"
  version = "1.0.1"
  role = module.roles["eksnodegrouprole-ec2"].role_name
  policies = "AmazonEC2ContainerRegistryReadOnly,AmazonEKSWorkerNodePolicy,AmazonEKS_CNI_Policy"
}
