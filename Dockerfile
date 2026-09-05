#get image

FROM python:3.9-slim 

# working directory

WORKDIR /app

# copy code 
COPY . .

# Build commands for app

RUN pip install -r requirements.txt 

#expose the port
EXPOSE 80

#serve the app
CMD ["python","run.py"]
