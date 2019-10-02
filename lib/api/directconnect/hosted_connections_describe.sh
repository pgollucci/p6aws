######################################################################
#<
#
# Function:
#	p6_aws_directconnect_hosted_connections_describe(connection_id)
#
#  Args:
#	connection_id - 
#
#>
######################################################################
p6_aws_directconnect_hosted_connections_describe() {
    local connection_id="$1"
    shift 1

    p6_run_read_cmd aws directconnect describe-hosted-connections --connection-id $connection_id "$@"
}