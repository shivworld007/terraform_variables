

resource "azurerm_resource_group" "block1" {
  for_each = var.rg_1      #used for looping a set of strings, remove comment in-order to use
  name     = each.value    #used for looping, remove comment in-order to use, but make sure to comment next line
  #name = var.rg_1
  #location = "East US"     #Now not using hardcoded location, remove comment in-order to use, but make sure to comment next line
  location = var.location_1
}

