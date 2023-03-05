FROM python:3.11
ENV PYTHONUNBUFFERED 1

RUN bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

RUN mkdir -p /src
WORKDIR /src
COPY ./python3/requirements.txt /src/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt --no-cache-dir --default-timeout=1000

COPY ./python3/ /src/
