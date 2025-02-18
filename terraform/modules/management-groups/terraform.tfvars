root_id   = "44a926b2-f8ee-464b-b28a-5e6124f2bb56"
root_name = "Tenant Root Group"
mg_prefix = "mg"
default_location = "germanywestcentral"

landing_zones = {
  "lz20" = {
    parent          = "root"
    archetype_id    = "mg-lz20"
    parameters ={}
  }
  "mteh" = {
    parent          = "lz20"
    archetype_id    = "mg-mteh"
    subscription_ids = [] # Multiple subscriptions
    access_control = {
      "Reader" = [
        "8052da73-37ba-49be-8552-f8fee282d734"
      ]
    }
  }
  "mteh-security" = {
    parent          = "lz20"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01" = {
    parent          = "mteh"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02" = {
    parent          = "mteh"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-avdtm" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-dra" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-net" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-blktm" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-dtg" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-sqldb" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-CAT" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-finops" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-wintel" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-devops" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = [""]
  }
  "env02-mdt" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-zrb" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env02-zua" = {
    parent          = "env02"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "mteh-decom" = {
    parent          = "mteh"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "mteh-shared" = {
    parent          = "mteh"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "identity" = {
    parent          = "mteh-shared"
    archetype_id    = "customer-online2"
    subscription_ids = []
    display_name    = "Identity"
  }
  "connectivity" = {
    parent          = "mteh-shared"
    archetype_id    = "customer-online2"
    subscription_ids = []
    display_name   = "Connectivity"
  }
  "management" = {
    parent          = "mteh-shared"
    archetype_id    = "customer-online2"
    subscription_ids = []
    display_name =  "Management"
  }
  "env01-avdtm" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-dra" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-sqldb" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-blktm" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-dtg" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-wintel" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-budget" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-mdt" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-zrb" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-devops" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-net" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
  "env01-zua" = {
    parent          = "env01"
    archetype_id    = "customer-online2"
    subscription_ids = []
  }
 }

