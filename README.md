# canvas-ltm-docker

Package canvas-ltm in a docker container

## Publishing a new release

Go to [https://github.com/instructure/canvas-lms/releases](https://github.com/instructure/canvas-lms/releases) and
grab the name of a release.

Then go to `.github/workflows/main.yml` and grab the release tag, discard the `release/` prefix, and put that value
under `jobs.strategy.matrix.canvas_lms_release.

For example:

```yaml
jobs:
# ...
    strategy:
      matrix:
        # E.g. for "release/2020-04-25.06"
        canvas_lms_release: ["2020-04-25.05"]
```
