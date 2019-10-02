######################################################################
#<
#
# Function:
#	p6_aws_directconnect_hosted_connection_associate(connection_id, parent_connection_id)
#
#  Args:
#	connection_id - 
#	parent_connection_id - 
#
#>
######################################################################
p6_aws_directconnect_hosted_connection_associate() {
    local connection_id="$1"
    local parent_connection_id="$2"
    shift 2

    p6_run_write_cmd aws directconnect associate-hosted-connection --connection-id $connection_id --parent-connection-id $parent_connection_id "$@"
}