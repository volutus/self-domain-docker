pushd /home/flask/self-domain-docker
git pull origin master
docker compose down flask-app
docker compose up flask-app -d
popd