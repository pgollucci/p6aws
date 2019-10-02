######################################################################
#<
#
# Function:
#	p6_aws_directconnect_lag_update(lag_id)
#
#  Args:
#	lag_id - 
#
#>
######################################################################
p6_aws_directconnect_lag_update() {
    local lag_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect update-lag --lag-id $lag_id "$@"
}