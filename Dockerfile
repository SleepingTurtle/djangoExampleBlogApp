FROM python:3.12-alpine

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONBUFFERED=1

RUN apk update
RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir

COPY . .

WORKDIR /app/mysite

ENTRYPOINT [ "python"] 
CMD ["/app/mysite/manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000