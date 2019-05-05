provider "docker" {

# registry_auth {
#   address = "hub.docker.com"
#   config_file = ".auth.json"
# }
}

#data "docker_registry_image" "apline" {
# name = "alpine:latest"
#}

resource "docker_image" "ansible" {
  name          = "${var.image}"
  keep_locally = false
  #pull_triggers = ["${data.docker_registry_image.ansible.sha256_digest}"]
}
