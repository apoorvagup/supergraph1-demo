# FROM node:18-bullseye-slim
# RUN ls -lart

# RUN apt-get update && apt-get install -y && useradd -u 5017 rover

# RUN chown -R rover:rover /home
# RUN apt-get install curl -y
# #RUN chown -R rover:rover /root
# USER rover
# RUN curl -sSL https://rover.apollo.dev/nix/latest | sh


FROM node:18-bullseye-slim

RUN ls -lart

RUN apt-get update && apt-get install -y && apt-get install curl -y && useradd -m rover

RUN echo "rover:rover" | chpasswd

USER rover
RUN curl -sSL https://rover.apollo.dev/nix/latest | sh
