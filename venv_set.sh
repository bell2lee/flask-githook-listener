#!/bin/bash

url="./youtube"
# virtual env

sudo rm -rf "$url"

git clone https://github.com/bell2lee/youtube-survey-tool.git youtube

sudo python3 -m venv "$url/venv"
source "$url/venv/bin/activate"

pip install --upgrade pip
pip install -r "$url/requirements.txt"

cp ./settings.py "$url/youtube_survey_tool/settings.py"

python "$url/manage.py" makemigrations
python "$url/manage.py" migrate