from flask import Flask
import subprocess

app = Flask(__name__)

@app.route('/')
def hello_world():
    subprocess.call(['./venv_set.sh'], shell=True)

    return 'success'


if __name__ == '__main__':
    app.run()
