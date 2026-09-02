FROM python:3.13-slim

WORKDIR /usr/src/app

COPY app.py .
COPY entrypoint.sh .

RUN chmod +x entrypoint.sh

ENV APP_ENV=production
ENV APP_PORT=10000

EXPOSE 10000

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

CMD ["python", "app.py"]
