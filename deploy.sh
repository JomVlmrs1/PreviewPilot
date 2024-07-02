#!/bin/bash

# Path to your Flask application directory
FLASK_APP_DIR="/path/to/your/flask/app"

# Ensure the directory structure and necessary files exist
mkdir -p $FLASK_APP_DIR/static
mkdir -p $FLASK_APP_DIR/templates
mkdir -p $FLASK_APP_DIR/uploads

# Copy files to the Flask application directory
cp app.py $FLASK_APP_DIR
cp requirements.txt $FLASK_APP_DIR
cp deploy.sh $FLASK_APP_DIR
cp -r static/* $FLASK_APP_DIR/static/
cp -r templates/* $FLASK_APP_DIR/templates/

# Change directory to your Flask application
cd $FLASK_APP_DIR

# Perform Git operations
git add .
git commit -m "Update: Deploy changes"
git push origin main  # Replace 'main' with your branch name if diffe