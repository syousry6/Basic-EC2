#########################################################
# Security group for AD writer. All traffic from my IP.
#########################################################

resource "aws_security_group" "secgroup_adwriter" {

	name = "SECGROUP-ADWRITER"

	vpc_id = var.vpc_id

	ingress {
		from_port = 1
		to_port = 65535
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}

	tags = {
		Name = "SECGROUP-ADWRITER"
	}

}