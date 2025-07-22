#!/bin/bash

# Deploy script
set -e

ENVIRONMENT=${1:-staging}

echo "🚀 Deploying to $ENVIRONMENT..."

if [ "$ENVIRONMENT" = "production" ]; then
    echo "⚠️  Production deployment - extra verification needed"
    read -p "Continue? (y/N): " confirm
    [[ $confirm == [yY] ]] || exit 1
fi

# Build images
docker-compose -f docker-compose.$ENVIRONMENT.yml build

# Run migrations
docker-compose -f docker-compose.$ENVIRONMENT.yml run --rm backend python manage.py migrate

# Deploy
docker-compose -f docker-compose.$ENVIRONMENT.yml up -d

echo "✅ Deployment completed!"
