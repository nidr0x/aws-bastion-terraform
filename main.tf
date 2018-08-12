provider "aws" {
  region = "eu-west-1"
}

resource "aws_key_pair" "nidr0x" {
  key_name   = "nidr0x"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDkTsB/kRyUJ/nCDf9w0Gv9xPQksxSZKeB/upj/HgoKTR65oXMYsyFx7c8LSVWckOZXg0GREBOx0QJ+DzwYo3dGsRSnPuPyeWIXanZg1RBJhkEW5G49HeC7fhYXTJCWcRbfFZV5xVeJJAS/sgHCl4qVH0Ul4V2murkoDCd2nMoLX130pcnzVgVBw9Uus9GpcgiodPbbMSefd4SKyHI6jmNQRjLAEiFrML3aUTnBSPJGEeoGlifgzUgCB4zGqgxz/T+UT6xbOhteK3QQnOZDcLr15TpsvG/J3VktsQZKWNhHSKgAMPzs56TGzvPRhx42hEldteBStcKSui6Khv4Nz/ar"
}
