FROM nimlang/nim:1.6.10-regular

LABEL maintainer="Cas van Cooten (@chvancooten)"

RUN apt update
RUN apt install -y python3-pip gcc-mingw-w64
RUN pip3 install argparse==1.4.0 pycryptodome==3.16.0 pe_tools==0.3.10 requests==2.28.1 toml==0.10.2
RUN nimble install -y nimcrypto@0.5.4 parsetoml@0.7.0 pixie@5.0.6 ptr_math@0.3.0 puppy@2.0.3 winim@3.9.0 winregistry@1.0.0
