IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
docker build . -t eduardoshanahan/git_gitextras:$IMAGE_VERSION
docker build . -t eduardoshanahan/git_gitextras:latest