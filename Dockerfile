FROM python:3
RUN mkdir -p /home/pyth
COPY . /home/pyth
CMD ["python", "pyth.py"]
