FROM gitpod/workspace-full
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
RUN brew install ansible jq terraform kops watch
RUN pip install awscli

RUN git clone git@github.com:1ambda/terraform-all-in-one.git
RUN cd terraform-all-one

# Remove .gitigonre to index generated files
RUN rm .gitignore