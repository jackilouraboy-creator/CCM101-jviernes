#!/bin/bash
# CloudNova automated database backup
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$SCRIPT_DIR/backups"
STAMP="$(date +%F_%H-%M-%S)"
FILE="$BACKUP_DIR/wordpress_$STAMP.sql"

mkdir -p "$BACKUP_DIR"

# Root password is read from inside the container, so none is stored in this script
docker exec wp_db sh -c 'mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" wordpress' > "$FILE"

# Keep only the last 7 days of backups
find "$BACKUP_DIR" -name "wordpress_*.sql" -mtime +7 -delete

echo "$(date): backup OK -> $FILE" >> "$BACKUP_DIR/backup.log"
