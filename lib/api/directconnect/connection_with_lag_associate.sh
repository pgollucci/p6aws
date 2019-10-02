######################################################################
#<
#
# Function:
#	p6_aws_directconnect_connection_with_lag_associate(connection_id, lag_id)
#
#  Args:
#	connection_id - 
#	lag_id - 
#
#>
######################################################################
p6_aws_directconnect_connection_with_lag_associate() {
    local connection_id="$1"
    local lag_id="$2"
    shift 2

    p6_run_write_cmd aws directconnect associate-connection-with-lag --connection-id $connection_id --lag-id $lag_id "$@"
}