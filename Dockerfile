FROM python:2.7.18-stretch

LABEL Auth: Krikbayev Rustam 
LABEL Email: "rkrikbaev@gmail.com"
ENV REFRESHED_AT 2023-04-20

# Install any needed packages specified in requirements.txt
COPY ./requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt 

# Copy the current directory contents into the container at /app
RUN mkdir app
WORKDIR /app
