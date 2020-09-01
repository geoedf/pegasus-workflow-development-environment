# GeoEDF Development Environment

Use this container to develop and test your connectors and processors before submitting 
the code as a PR to the official GeoEDF repos. This container lets you do the following:

1. Transform your connector or processor code into a Singularity container just like the 
GeoEDF CI/CD process does.
2. Run workflows that utilize your new plugin in combination with GeoEDF connectors and 
processors that have already been published.

*This container is adapted from the Pegasus Development Environment*

*Latest version of Docker is required. You will also need to run this container in privileged 
mode*

## Usage
1. `git clone https://github.com/geoedf/pegasus-workflow-development-environment.git`
2. `cd pegasus-workflow-development-environment`
3. `sudo chown :808 ./shared-data && chmod 775 ./shared-data && chmod g+s ./shared-data`
4. `docker build -t geoedf/geoedf-dev-env`
5. `docker run -p 8888:8888 --privileged --mount type=bind,source="$(pwd)"/shared-data,target=/home/scitech/shared-data geoedf/geoedf-dev-env`
6. In a browser window, go to `localhost:8888`, and enter `scitech` as the password.
7. Find the GeoEDF.ipynb Jupyter notebook in `sample-geoedf-wf` and follow the instructions there to try out a sample GeoEDF workflow.
8. Adapt this notebook to test your own workflows.
