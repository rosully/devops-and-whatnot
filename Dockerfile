FROM python:3-alpine

# RUN apt-get clean \
#     && apt-get -y update

WORKDIR /app
COPY app.py ./
# TODO - add dockerignore --> include app.py and requirements.txt
# COPY . ./
# RUN pip install --> will look for requirements.txt?
RUN pip install flask

EXPOSE 5000
CMD ["python", "app.py" ]