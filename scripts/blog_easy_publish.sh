#!/bin/bash

cd /home/khirod/blog
pipenv shell
pelican
cp -R /home/khirod/blog/output/* /home/khirod/web
cd /home/khirod/web
git add .
git commit -m "Script Publish"
git push origin main

