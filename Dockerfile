FROM python:3-alpine

# RUN apt-get clean \
#     && apt-get -y update

WORKDIR /app
COPY app.py ./
RUN pip install flask

EXPOSE 5000
CMD ["python", "app.py" ]