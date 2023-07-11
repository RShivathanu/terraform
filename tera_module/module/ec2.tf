resource "aws_instance" "webserver" {
	instance_type   = var.machinetype
	ami             = var.amiid
	key_name        = var.keyname

	tags = {
			Name = var.mytag
	}		
}