# BSides Oslo 2019

First annual Oslo BSides will be 23. May 2019

info(at)bsidesoslo.no

## Running local environment

To run a local development environment you need Jekyll and Gulp. The easiest way to accomplish this is with Docker. Running `sh ./_serve.sh` will build a Docker image (if it's not in local repo), then start a container that mounts the current folder, and then uses Gulp to pack js, fonts and css before starting Jekyll. 

The website is available at http://localhost:4000, ctrl+c kills the container.


## Speakers

To add , update the `spakers` array in "_config.yaml". Add the information under the correct tier, and the logo in assets/images/spakers.

The object looks like this:
```
- name: <SPEAKER NAME - REQUIRED>
 image: <NAME OF THE IMAGE IN FOLDER - REQUIRED>
 organization: <WHO THE SPEAKERS REPRESENTS - OPTIONAL>
 bio: <BIO FOR SPEAKER - NOT IN USE, YET>
 title: <TITLE OF THE TALK - NOT IN USE, YET>
 description <DESCRIPTION OF THE TALK - NOT IN USE, YET>
 ```

 The order of the properties does not matter.

If text is multi-line (like with bio or description), just start use | jump down a line, indent with two spaces and write the block of text. Example:

```
- bio: |
    Ipsum lorem...
```

Line changes will be converted to HTML by 

## Sponsors

To add sponsors, update the `sponsors` object in "_config.yaml". Add the information under the correct tier, and the logo in assets/images/sponsors.
