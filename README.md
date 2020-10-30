# Github action: Inline envsubst

This GitHub Action allows you to run [envsubst](https://linux.die.net/man/1/envsubst) against a file/list of files, with optional pattern specificity.

Relies on your workflow job running in a Linux VM and therefore does not use docker containers.

## Example usage in Github actions workflow

```yml
steps:
  - name: Inject version number into files
    uses: dominicwatson/github-action-envsubst@v1
    with:
      files: manifest.json package.json static/bundle.mf
      patterns: $VERSION_NUMBER
    env:
      VERSION_NUMBER: ${{ steps.anotherstep.outputs.version_number }}
```

## Inputs

### `files`

Required. One or more files, separated by a space, that will have envsubst performed on them.

### `patterns`

Optional. Restrict the substitution to a strict set of patterns, rather than attempting to match any patterns found. Patterns separated by a space.

## License

This project is licensed under the GPLv2 License - see the [LICENSE.txt](https://github.com/pixl8/github-action-box-install/blob/stable/LICENSE.txt) file for details.

## Authors

The project is maintained by [Dominic Watson](https://github.com/DominicWatson).