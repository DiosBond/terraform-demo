terraform {
  required_providers {
    kind = {
      source = "justenwalker/kind"
      version = "0.17.0"
    }
        flux = {
      source  = "fluxcd/flux"
      version = "1.0.0-rc.3"
    }
  }
}

