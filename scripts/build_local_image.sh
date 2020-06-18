set -e

pushd images/$1
docker build -t codebuild-images/$1:latest .
popd
