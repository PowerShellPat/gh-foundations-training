export GH_USERNAME='powershellpat'
export GH_TOKEN=''
export GH_IMAGE_NAME='gh-foundations-training-hello-world'
export GH_VER='1.0.1'

echo $GH_TOKEN | docker login ghcr.io -u $GH_USERNAME --password-stdin

docker tag $GH_IMAGE_NAME ghcr.io/$GH_USERNAME/$GH_IMAGE_NAME/$GH_VER

docker push ghcr.io/$GH_USERNAME/$GH_IMAGE_NAME/$GH_VER

To link image to a repo, add this file to Dockerfile:
LABEL org.opencontainers.image.source https://github.com/OWNER/REPO