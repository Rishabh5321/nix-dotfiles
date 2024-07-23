{ pkgs, ... }:

let
  compose = pkgs.dockerTools.servicesFromCompose {
    name = "example-compose";
    composeFile = ../../docker/docker-compose.yaml;
  };
in
{
  services.docker.containers = compose.services;
}
