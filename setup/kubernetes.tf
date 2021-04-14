variable "hosted_zone_id" {
  # jzbruno.com
  default = "Z03466303880S6GVD9LTS"
}

variable "ami_id" {
  # Amazon Linux 2 in us-east-1
  default = "ami-0742b4e673072066f"
}

variable "key_pair_name" {
  default = "jzbruno"
}

variable "fqdn" {
  default = "interview-k8s.jzbruno.com"
}

variable "instance_type" {
  default = "t3a.large"
}

resource "aws_route53_record" "interview_k8s" {
  zone_id = var.hosted_zone_id
  name    = var.fqdn
  type    = "A"
  ttl     = "60"
  records = [aws_instance.interview_k8s.public_ip]
}

resource "aws_security_group" "interview_k8s" {
  name   = "interview-k8s"
  vpc_id = aws_vpc.interview.id

  ingress {
    description = "https"
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "interview-k8s"
  }
}

resource "aws_instance" "interview_k8s" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name                    = var.key_pair_name
  subnet_id                   = aws_subnet.interview_use1a_pub.id
  vpc_security_group_ids      = [aws_security_group.interview_k8s.id]

  root_block_device {
    volume_size = 50
  }

  user_data = <<-EOF
  #!/usr/bin/env bash

  set -euo pipefail

  export K3S_KUBECONFIG_MODE="644"
  export INSTALL_K3S_EXEC="--tls-san ${var.fqdn}"

  curl -sfL https://get.k3s.io | sh -
  kubectl config view --flatten | sed "s/127.0.0.1/${var.fqdn}/g" > /home/ec2-user/kubeconfig
  EOF

  tags = {
    Name = "inteview-k8s"
  }
}
