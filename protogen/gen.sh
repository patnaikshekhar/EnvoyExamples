protoc --go_out=. \
    -I ./data-plane-api \
    -I ./googleapis \
    -I ./protoc-gen-validate \
    ./data-plane-api/envoy/service/accesslog/v2/als.proto

protoc --go_out=. \
    -I ./data-plane-api \
    -I ./googleapis \
    -I ./protoc-gen-validate \
    ./data-plane-api/envoy/api/v2/core/*.proto
