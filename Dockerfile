FROM ballerina/ballerina:0.980.1
LABEL maintainer="dev@ballerina.io"

COPY target/ecomm-back-end-mock.balx /home/ballerina
COPY ecomm-back-end-mock/ballerina.conf /home/ballerina

CMD ballerina run ecomm-back-end-mock.balx
