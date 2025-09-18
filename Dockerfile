FROM python:3
RUN mkdir -p /home/pyth
COPY . /home/pyth
EXPOSE 5000
CMD ["python", "pyth.py"]
