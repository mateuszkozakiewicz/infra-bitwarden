sudo sqlite3 /srv/bitwarden-data/db.sqlite3 ".backup '/srv/bitwarden-backup/$(date "+%Y.%m.%d-%H.%M.%S") db.sqlite3'"
