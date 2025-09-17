


m flask import Flask, render_template_string

app = Flask(__name__)

# Simple HTML frontend
HTML_PAGE = """
<!DOCTYPE html>
<html>
<head>
    <title>My Python Frontend</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; margin-top: 50px; }
        h1 { color: #2e86de; }
        button { padding: 10px 20px; font-size: 16px; }
    </style>
</head>
<body>
    <h1>🚀 Welcome to My Python Frontend</h1>
    <p>This app is running inside a Docker container with Python (latest).</p>
    <button onclick="alert('Hello from Flask!')">Click Me</button>
</body>
</html>
"""

@app.route("/")
def home():
    return render_template_string(HTML_PAGE)
