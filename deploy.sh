rsync -avz --quiet --exclude '.travis.yml' --exclude 'deploy_rsa.enc' --exclude '.env.template' --exclude 'deploy.sh' $TRAVIS_BUILD_DIR/ build@$BITWARDEN_HOST:/srv/bitwarden
ssh build@$BITWARDEN_HOST 'cd /srv/bitwarden; ./backup-db.sh; docker-compose up -d'
