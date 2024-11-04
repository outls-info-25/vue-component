FROM node:latest

COPY .bashrc /root/.bashrc

WORKDIR /code

CMD ["bash"]