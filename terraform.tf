terraform {
  required_providers {
    kind = {
      source = "justenwalker/kind"
      version = "0.17.0"
    }
  }
}


terraform {
  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = "1.0.0-rc.3"
    }
  }
}