#!/usr/bin/env bash
# exit on error
set -o errexit

pip install --upgrade pip setuptools wheel
pip install -r requirements.txt

# --- THE DEBUG HACK ---
echo "👀 DEBUG: WHAT FOLDERS ARE HERE?"
ls -la
echo "👀 DEBUG: WHAT IS INSIDE MYAPP?"
ls -la myapp/
echo "👀 DEBUG: WHERE ARE THE STATIC FOLDERS?"
find . -type d -name "static"
# ----------------------

python manage.py collectstatic --no-input
python manage.py migrate