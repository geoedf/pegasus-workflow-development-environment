# Pegasus Development Environment

Use this environment to get a feel for the Pegasus 5.0 Python API, develop, and run
small workflows from a jupyter notebook or terminal. Nested docker 
containers are supported.

*Latest version of Docker is required.*

## Usage
1. `git clone https://github.com/pegasus-isi/pegasus-workflow-development-environment.git`
2. `cd pegasus-workflow-development-environment`
3. `sudo chown :808 ./shared-data && chmod 775 ./shared-data && chmod g+s ./shared-data`
4. `docker pull ryantanaka/pegasus-wf-dev-env`
5. `docker container run -p 8888:8888 --privileged --mount type=bind,source="$(pwd)"/shared-data,target=/home/scitech/shared-data ryantanaka/pegasus-wf-dev-env`
6. In a browser window, go to `localhost:8888`, and enter `scitech` as the password.

At this point you can develop workflows using Jupyter notebooks, the Jupyter terminal,
or from an IDE assuming the workflow file is in the `shared-data` directory
which is mounted into the container. 

