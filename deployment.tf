resource "docker_image" "devdocs" {
  name         = "devdocs:1.0"
  //keep_locally = false
}

resource "docker_container" "devdocs" {
  image = docker_image.devdocs.latest
  name  = "devdocs"
  ports {
    internal = 80
    external = 8080
  }
}