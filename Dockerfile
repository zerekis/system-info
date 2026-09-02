FROM python:3.13-slim

WORKDIR /usr/src/app

COPY app.py .
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

ENV APP_ENV=production
ENV APP_PORT=8080

EXPOSE 8080

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

CMD ["python", "app.py"]
