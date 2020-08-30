# Base Image
FROM python:3.8

# Create and set working directory
RUN mkdir /app/
WORKDIR /app

# Add current directory code to working directory
ADD . /app/

# Add default enviroment vairables
ENV PYTHONUNBUFFERED 1
ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

# Set project enviroment vairables
# grab these via Python's os.environ
# these are 100% optional here
ENV PORT=8000

# Iinstall system dependencies
#RUN apt-get update && apt-get install -y --no-install-recommends \
#    tzdata \
#    python3-setuptools \
#    python3-pip \
#    python3-dev \
#    python3-venv && \
#    apt-get clean && \
#    rm -rf /var/lib/apt/lists/*

# Install enviroment dependencies
#RUN pip3 install --upgrade pip
#RUN pip3 install pipenv
#
## Install project dependencies
#RUN pipenv install --skip-lock --system --dev

RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/


EXPOSE 8000
CMD gunicorn cfehome.wsgi:application -w 4 --threads 2 --bind 0.0.0.0:$PORT
