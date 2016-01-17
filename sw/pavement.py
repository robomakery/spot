import os

from paver.easy import *
from paver.setuputils import setup

setup(
    name="Spot",
    packages=['spot'],
    version="0.1.0",
    url="http://robomakery.com",
    author="Dylan Vaughn",
    author_email="dylan@robomakery.com"
)

@task
def docker_build():
    """Builds the docker container"""
    os.system("docker build -t spot .")

@task
def docker_run():
    """Runs the docker container"""
    os.system("docker run -p 11311:11311 -it spot")

@task
def docker_rm_containers():
    """Removes all containers"""
    os.system("docker rm $(docker ps -a -q)") # TODO: only remove spot containers

@task
def docker_rm_images():
    """Removes all images"""
    os.system("docker rmi $(docker images -q)") # TODO: only remove spot images
