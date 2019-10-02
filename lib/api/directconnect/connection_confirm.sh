######################################################################
#<
#
# Function:
#	p6_aws_directconnect_connection_confirm(connection_id)
#
#  Args:
#	connection_id - 
#
#>
######################################################################
p6_aws_directconnect_connection_confirm() {
    local connection_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect confirm-connection --connection-id $connection_id "$@"
}