#!/bin/bash
ssh -v circleci@136.144.176.117 << EOF

echo '1. Updating sources'
cd /server/tools/
git clean -fdx --exclude=".env"
git fetch
git checkout --force master
git pull origin master

echo "2. Run docker compose"
docker-compose up -d --build

EOF