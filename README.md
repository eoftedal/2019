# BSides Oslo 2019

First annual Oslo BSides will be 23. May 2019

info(at)bsidesoslo.no

## Running local environment

To run a local development environment you need Jekyll and Gulp. The easiest way to accomplish this is with Docker. Running `sh ./_serve.sh` will build a Docker image (if it's not in local repo), then start a container that mounts the current folder, and then uses Gulp to pack js, fonts and css before starting Jekyll. 

The website is available at http://localhost:4000, ctrl+c kills the container.


## Talks

To add talks (and subsequently speaker", create a Markdown file in the "_talks" folder with in the following format:

```
---
layout: talks
title: <<< TITLE OF TALK >>>
speakers:
- name: <<< NAME OF PRESENTER >>>
  image: <<< IMAGE NAME IN SPEAKERS FOLDER >>>
  bio: |
    <<< BIO OF PRESENTER, NOTE 2 SPACE INDENTATION >>>
---

<<< DESCRIPTION OF TALK >>>
```
Add the speaker image to `/assets/images/speakers`.

**NOTE:** You can add multiple speakers!

You can add organisation to speaker, but this might be removed in the future and probably replaced with website.


If text is multi-line (like with bio or description), just start use | jump down a line, indent with two spaces and write the block of text. Example:

```
- bio: |
    Ipsum lorem...
```

Only Bio can be multi-line though.

## Sponsors

To add sponsors, update the `sponsors` object in "_config.yaml". Add the information under the correct tier, and the logo in assets/images/sponsors.
