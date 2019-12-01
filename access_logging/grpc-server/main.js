const grpc = require('grpc')
const alsMessages = require('./static_codegen/envoy/service/accesslog/v2/als_pb')
const alsService = require('./static_codegen/envoy/service/accesslog/v2/als_grpc_pb')

function streamAccessLogs() {

}

function main() {
    const server = new grpc.Server()
    server.addService(alsService.AccessLogServiceService, { })
    server.bind('0.0.0.0:50051', grpc.ServerCredentials.createInsecure())
}

main()

