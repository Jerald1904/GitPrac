from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hi, I'm ALBERT JERALD M from Chennai, Tamil Nadu. Email ID: albertjerald19@gmail.com Ph.no: 8072545136"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

