```bash
$ sudo apt-get install python3-venv
$ python3 -m venv venv
$ source venv/bin/activate
$ deactivate
```

```bash
$ python -m pip install <package>
```

## Testing

```bash
$ python -m unittest discover
$ coverage run -m unittest discover
$ coverage report -m
```

## Lint

```bash
$ pylint --recursive=y ./src
```
