# generate name

Github Action that generates a unique (username-like) name.

```
docker run -it generate-name:latest
::set-output name=name::PressurizersPrussians
```

## YAML

```
- name: Generate Name
  id: generate_name
  uses: bengreenier-actions/generate-name@master
```

Will yield outputs:

- `name`: contains the a random (english) username (no spaces)

And can be further accessed in yaml with:

```
- name: Echo Name
  run: echo ${{ steps.generate_name.outputs.name }}
```

Where `generate_name` matches the `id` of the step that ran the command.

## License

MIT
