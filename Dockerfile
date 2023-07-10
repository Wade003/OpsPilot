FROM python:3.10
WORKDIR /apps

ADD ./requirements.txt ./requirements.txt
RUN pip3 install -r ./requirements.txt

ADD ./actions ./actions
ADD ./channels ./channels
ADD ./compoments ./compoments
ADD ./endpoints.yml ./endpoints.yml
ADD ./credentials.yml ./credentials.yml
