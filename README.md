# terraform-aws-eks-iam-resources
##### This is small module to create below IAM resources needed to create AWS EKS Cluster
1. IAM Role for EKS to be used while creating the cluster
2. IAM Role for EC2 to be used while creating the Node Group
3. Policues will be attached with the Roles as per requirement

##### Pass a value to the variable `name` be attached as a prefix with the role names

##### Example
```
module "eks_iam_resources" {
    source = "kmayer10/aws/eks-iam-resources"
    name   = "kmayer"
}
```

##### Upcoming Enhancement
1. Role for Fargate profile
2. Role to be attached with the external EC2 Server to access the Cluster once created
