######################################################################
#<
#
# Function:
#	p6_aws_ssm_ops_item_update(ops_item_id)
#
#  Args:
#	ops_item_id - 
#
#>
######################################################################
p6_aws_ssm_ops_item_update() {
    local ops_item_id="$1"
    shift 1

    p6_run_write_cmd aws ssm update-ops-item --ops-item-id $ops_item_id "$@"
}