FROM python:3
# set fixed UID and GID - see github.com/hexops/dockerfile
ARG UID=10000
ARG GID=10001

RUN addgroup --gid ${GID} appgroup
RUN adduser --uid ${UID} --disabled-password --home /app --shell /bin/sh --ingroup appgroup appuser

WORKDIR /app
COPY requirements.txt .

RUN pip install -r requirements.txt
COPY app.py ./
EXPOSE 8080
USER appuser
ENTRYPOINT ["python3", "app.py"]