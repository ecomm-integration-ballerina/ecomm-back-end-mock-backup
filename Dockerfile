FROM ballerina/ballerina:0.980.1
LABEL maintainer="rajkumarr@wso2.com"

COPY target/ecomm-back-end-mock.balx /home/ballerina
COPY ecomm-back-end-mock/ballerina.conf /home/ballerina

COPY dependencies/packages/dependencies/* /ballerina/runtime/bre/lib/
COPY dependencies/packages/balo/* /ballerina/runtime/lib/repo/

CMD ballerina run ecomm-back-end-mock.balx
