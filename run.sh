docker rm -vf envoy
docker run \
    --name envoy \
    --net host \
    -l trace \
    -v $(pwd)/$1:/etc/envoy/envoy.yaml \
    -v $(pwd)/log:/log \
    envoyproxy/envoy