resource "aws_security_group" "aws_security_group" {
		name        = var.sgname
		description = "Allow SSH and HTTP"

		ingress {
			description = "ssh"
			from_port   = 22
			to_port     = 22
			protocol    = "tcp"
			cidr_blocks = var.cidr
		}

		ingress {
			description = "http"
			from_port   = 80
			to_port     = 80
			protocol    = "tcp"
			cidr_blocks = var.cidr
		}

		egress {
			from_port   = 0
			to_port     = 0
			protocol    = "-1"
			cidr_blocks = var.cidr
		}

		tags = {
			name = var.sgname
			}
}