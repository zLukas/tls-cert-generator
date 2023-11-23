variable access_key {
  type        = string
}

variable secret_key {
  type        = string
}

variable region {
  type        = string
}

 variable policy {
  type = object({
    name = string
    actions = list(string)
    resources = list(string)
  })
 }

variable pool {
    type        = string
}

variable user {
  type = object({
    name = string
    email = string
  })
}