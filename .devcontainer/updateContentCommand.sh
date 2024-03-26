#!/bin/sh

cat <<EOF >> .env
SECRET_KEY=$SECRET_KEY
ALLOWED_HOSTS=*
DEBUG=True
DB_HOST=$POSTGRES_HOST
DB_PORT=3306
DB_DATABASE=$POSTGRES_DB
DB_USERNAME=$POSTGRES_USER
DB_PASSWORD=$POSTGRES_PASSWORD
EOF

echo "alias fly='flyctl'" >> ~/.bashrc
echo "alias fly='flyctl'" >> ~/.zshrc
