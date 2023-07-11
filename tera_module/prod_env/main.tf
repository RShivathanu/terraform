module "instance_provisioning" {
	source      = "../module"
	sgname      = var.sgname
	cidr        = var.cidr
	machinetype = var.machinetype
	mytag       = var.mytag
	amiid       = var.amiid
	keyname     = var.keyname
}