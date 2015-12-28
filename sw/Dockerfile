FROM ros:jade-ros-base
MAINTAINER Dylan Vaughn dylan@robomakery.com

# update to latest packages
RUN apt-get update && apt-get upgrade -y

# install robot packages
RUN apt-get install -y ros-jade-robot=1.2.0-0*

# install perception packages
RUN apt-get install -y ros-jade-perception=1.2.0-0*

# bootstrap
ADD bootstrap.sh /bootstrap.sh

RUN chmod 755 /bootstrap.sh && bash /bootstrap.sh
