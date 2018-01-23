#!/bin/bash
cd /home/eoak/clm
git pull origin master
source clm_env/bin/activate
pip install -r reqs.txt
python manage.py migrate
deactivate
sudo systemctl restart gunicorn
echo 'Server Updated and Restarted'
