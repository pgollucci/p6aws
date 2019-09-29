######################################################################
#<
#
# Function:
#      = p6_aws_apigatewaymanagementapi_to_connection_post(data, connection_id)
#
# Arg(s):
#    data - 
#    connection_id - 
#
#
#>
######################################################################
p6_aws_apigatewaymanagementapi_to_connection_post() {
    local data="$1"
    local connection_id="$2"
    shift 2

    p6_run_write_cmd aws apigatewaymanagementapi post-to-connection --data $data --connection-id $connection_id "$@"
}