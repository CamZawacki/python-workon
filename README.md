# python-workon
Forever ago, I used the [virtualenvwrapper](https://github.com/python-virtualenvwrapper/virtualenvwrapper) extension to manage my python virtual enviornments. Somewhere inbetween then and now I switch to `venv`. However, everytime I step away from my python projects for a bit, I come back and expect the command 'workon' to list the enviornments and 'workon [env_name]' to activate the environment. So thats what this does.


Two things need to be added to your .bashrc for this to work. First, a path to the location of your python environments:
```bash
export PYTHON_ENV_HOME="~/environments"
```
Second, sourcing the workon script.

```bash
source <path-to-python-workon>/workon.sh
```



## Commands
This works for environments created using the command
```bash
python -m venv new_env
```

It's very stupid. The two commands are as follows:
```bash
workon
```
which does not even know if the directory is a python enviornment, it just list them. To activate an environment:
```bash
workon [env_name]
```
which tries to activate an environment with the provided name by looking for `$PYTHON_ENV_HOME/env_name/bin/activate`.

Enjoy.
