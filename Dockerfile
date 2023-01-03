FROM nimlang/nim:1.6.10-regular

LABEL maintainer="Cas van Cooten (@chvancooten)"

RUN apt update
RUN apt install -y python3-pip gcc-mingw-w64
RUN pip3 install argparse==1.4.0 pycryptodome==3.16.0 pe_tools==0.3.10 requests==2.28.1 toml==0.10.2
RUN nimble install -y winim nimcrypto ptr_math parsetoml puppy
