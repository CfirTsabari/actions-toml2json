FROM python:alpine3.17

COPY LICENSE README.md /

RUN pip3 install toml

COPY entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]