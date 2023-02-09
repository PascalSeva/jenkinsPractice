
FROM python:3.10-alpine


COPY requirements.txt /app/requirements.txt

#switch working directory. this works like change directory, cd command in terminal
WORKDIR /app

#install the dependencyies and packages in the requirements.txt file
RUN pip install -r requirements.txt

#copy every content from the local file to the image
COPY . ./app/


#runs apps in the container
#any docker image must have an ENTRYPOINT or CMD declaration for a container to start
ENTRYPOINT [ "python" ]

#appends the list of parameters to the 
#to perform the command that runs the application
#ex. works like running python app.py
CMD [ "app.py" ]