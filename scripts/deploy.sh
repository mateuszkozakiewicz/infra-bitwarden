rsync -avz --quiet --exclude 'deploy' --exclude '.travis.yml' $TRAVIS_BUILD_DIR/ build@$BITWARDEN_HOST:/srv/bitwarden
ssh build@$BITWARDEN_HOST 'cd /srv/bitwarden; ./backup-db.sh; docker-compose up -d'
