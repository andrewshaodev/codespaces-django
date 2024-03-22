#!/bin/sh

cat <<EOF >> .env
SECRET_KEY=$SECRET_KEY
DEBUG=True
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=""
DB_USERNAME=""
DB_PASSWORD=""
EOF

echo "alias fly='flyctl'" >> ~/.bashrc
echo "alias fly='flyctl'" >> ~/.zshrc

pip install -r requirements.txt
python manage.py migrate
