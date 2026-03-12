pushd /home/flask/self-domain-docker
git pull origin master
docker compose down db && docker compose up db
popd