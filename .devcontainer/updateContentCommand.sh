#!/bin/sh

echo "SECRET_KEY=$SECRET_KEY" >> .env
echo "POSTGRES_USER=$POSTGRES_USER" >> .env
echo "POSTGRES_DB=$POSTGRES_DB" >> .env
echo "POSTGRES_PASSWORD=$POSTGRES_PASSWORD" >> .env
echo "POSTGRES_HOST=localhost" >> .env
echo "DEBUG=True" >> .env
echo "ALLOWED_HOSTS=*" >> .env

echo "alias fly='flyctl'" >> ~/.bashrc
echo "alias fly='flyctl'" >> ~/.zshrc

pip install -r requirements.txt
python manage.py migrate
