FROM nimlang/nim:1.6.12-regular

LABEL maintainer="Cas van Cooten (@chvancooten)"

RUN apt update
RUN apt install -y python3-pip gcc-mingw-w64
RUN pip3 install argparse==1.4.0 pycryptodome==3.17 pe_tools==0.3.10 requests==2.28.2 toml==0.10.2
RUN nimble install -y nimcrypto@0.6.0 parsetoml@0.7.1 pixie@5.0.6 ptr_math@0.3.0 puppy@2.1.0 winim@3.9.2 winregistry@2.0.0
