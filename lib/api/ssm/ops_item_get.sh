######################################################################
#<
#
# Function:
#	p6_aws_ssm_ops_item_get(ops_item_id)
#
#  Args:
#	ops_item_id - 
#
#>
######################################################################
p6_aws_ssm_ops_item_get() {
    local ops_item_id="$1"
    shift 1

    p6_run_read_cmd aws ssm get-ops-item --ops-item-id $ops_item_id "$@"
}