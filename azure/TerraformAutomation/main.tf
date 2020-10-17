module "create_res_grp" {
    source      = "./modules/resource_group"
    resgrp    = "${var.resgrpname}"
    location  = "${var.rglocation}"   
}

module "create_appservice" {
  source                   = "./modules/appservice"
  resgrp                   = "${module.create_res_grp.name}"
  location                 = "${var.rglocation}"
  appservicename           = "${var.appservice_name}"
  appservice_plan          = "${var.appservice_plan}"
  tier                     = "${var.appservice_plan_tier}"
  size                     = "${var.appservice_plan_size}"
}
module "create_cosmosdb" {
  source                   = "./modules/cosmosdb"
  resgrp                   = "${module.create_res_grp.name}"
  location                 = "${var.rglocation}"
  cosdbname                = "${var.cosdbname}"
  offer_type               = "${var.offer_type}"
  kind                     = "${var.kind}"
  failover_location        ="${var.failover_location}"
}