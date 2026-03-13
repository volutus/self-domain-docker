pushd /home/flask/self-domain-docker
git pull origin master
docker compose down --volumes
docker compose up -d --force-recreate --no-deps --build --pull always
popd