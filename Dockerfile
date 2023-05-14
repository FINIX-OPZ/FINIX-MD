FROM quay.io/finih/finih:latest

RUN git clone https://github.com/FINIX-OPZ/FINIX-MD /root/FINIX-MD
WORKDIR /root/FINIX-MD/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
