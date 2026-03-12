pushd /home/flask/self-domain-docker
git pull origin master
docker compose restart db
popd