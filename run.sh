docker rm -vf envoy
docker run \
    --name envoy \
    -p 9901:9901 \
    -p 8080:80 \
    -l trace \
    -v $(pwd)/$1:/etc/envoy/envoy.yaml \
    -v $(pwd)/log:/log \
    envoyproxy/envoy