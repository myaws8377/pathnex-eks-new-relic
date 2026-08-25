resource "aws_eks_cluster" "pathnex" {
  name     = "Pathnex-Aug-2026"
  role_arn = "arn:aws:iam::968134752304:role/eks-cluster-role1"
  version  = "1.35"

  upgrade_policy {
    support_type = "STANDARD"
  }

  vpc_config {
    subnet_ids = [
      "subnet-060e30fbb2ffaa857",
      "subnet-096709d64d3725b7f"
    ]

    security_group_ids = [
      "sg-006c76c984d9e1309"
    ]

    endpoint_public_access  = true
    endpoint_private_access = true

    public_access_cidrs = [
      "0.0.0.0/0"
    ]
  }
  zonal_shift_config {
         enabled = false
        }
}
