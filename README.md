# Codespaces Template for Django, PostGres and Fly.io

This template can be used to create a development container for a Django application. It includes Django, Postgres, and the Fly.io command line application for pushing the application onto fly.io.

It is based on the following [Django Template
](https://github.com/github/codespaces-django)

On creating a new Codespace, the container should automatically pip install the requirements.txt file and run django manage.py migrate. It will also write a .env file from the Github Secrets repository which, which you will have to set yourself to create environmental variables within the container. These could include the Django SECRET_KEY as well as Postgres configuration variables.

It will also run the Django test server on creation.

Finally, it also includes the flyctl command line to allow you to deploy the application to the fly.io. Instructions can be found [here](https://fly.io/docs/django/)

Using github actions to continiously deploy changes to the application on commit pushes can be found [here](https://fly.io/docs/app-guides/continuous-deployment-with-github-actions/)
