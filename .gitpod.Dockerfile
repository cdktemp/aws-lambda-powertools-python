# See here all gitpod images available: https://hub.docker.com/r/gitpod/workspace-python-3.12/tags
# Current python version: 3.12
FROM gitpod/workspace-python-3.12@sha256:af70f52d175b81a9d3814c052ec89a34ae1b2b8982f17c92e36fe30017a26701

WORKDIR /app
ADD . /app

# Installing pre-commit as system package and not user package. Git needs this to execute pre-commit hooks.
RUN export PIP_USER=no
# pre-commit v3.7.1
RUN python3 -m pip install --require-hashes -r .gitpod_requirements.txt