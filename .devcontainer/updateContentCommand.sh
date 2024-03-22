#!/bin/sh

cat <<EOF >> .env
SECRET_KEY=$SECRET_KEY
POSTGRES_USER=$POSTGRES_USER
POSTGRES_DB=$POSTGRES_DB
POSTGRES_PASSWORD=$POSTGRES_PASSWORD
POSTGRES_HOST=localhost
DEBUG=True
ALLOWED_HOSTS=*
EOF

echo "alias fly='flyctl'" >> ~/.bashrc
echo "alias fly='flyctl'" >> ~/.zshrc

pip install -r requirements.txt
python manage.py migrate
