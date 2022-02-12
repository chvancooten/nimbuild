FROM nimlang/nim:1.6.2-regular

LABEL maintainer="Cas van Cooten (@chvancooten)"

RUN apt install -y python3-pip gcc-mingw-w64
RUN python3 -m pip install argparse==1.4.0 pycryptodome==3.10.1 pe_tools==0.3.10 requests==2.26.0 toml==0.10.2
RUN nimble install -y winim nimcrypto ptr_math parsetoml puppy
