# BSides Oslo 2019

First annual Oslo BSides will be 23. May 2019

info(at)bsidesoslo.no

## Running local environment

To run a local development environment you need Jekyll and Gulp. The easiest way to accomplish this is with Docker. Running `sh ./_serve.sh` will build a Docker image (if it's not in local repo), then start a container that mounts the current folder, and then uses Gulp to pack js, fonts and css before starting Jekyll. 

The website is available at http://localhost:4000, ctrl+c kills the container.

## Sponsors

To add sponsors, update the `sponsors` object in "_config.yaml". Add the information under the correct tier, and the logo in assets/images/sponsors.
