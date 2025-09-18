FROM python:3
RUN mkdir -p /home/pyth
COPY . /home/pyth
RUN pip install flask
EXPOSE 5000
CMD ["python", "pyth.py"]
