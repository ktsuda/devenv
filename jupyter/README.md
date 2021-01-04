# jupyter

## modules

- jupyter
- notebook
- numpy
- scipy
- pandas
- sklearn
- matplotlib

## Building image

```
docker-compose build
```

## Start the container

```
docker-compose up -d
```

And open `localhost:8888` to access the Jupyter Notebook Web UI.

## Adding a module

```
docker-compose run --rm jupyter poetry add <module_name>
```

With this command, the following two files will be updated.

- `poetry.lock`
- `pyproject.toml`

## Remark

This docker image disables login token for jupyter notebook.
NEVER deploy this container to a public space.
