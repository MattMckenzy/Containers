docker buildx build --platform=linux/amd64,linux/arm64 --push -t "mattmckenzy/debbuild:latest" -f ".dockerfile" .
