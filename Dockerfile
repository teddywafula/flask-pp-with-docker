# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
# instructs docker to use this directory
WORKDIR /app
# copy the requirements.txt file into our working directory /app
COPY requirements.txt requirements.txt
# the modules are installed into the image
RUN pip3 install -r requirements.txt
#add our source code into the image
COPY . .
EXPOSE 8000
# tell Docker what command we want to run when our image is executed inside a container
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]