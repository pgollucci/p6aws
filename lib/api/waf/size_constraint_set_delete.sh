######################################################################
#<
#
# Function:
#	p6_aws_waf_size_constraint_set_delete(size_constraint_set_id, change_token)
#
#  Args:
#	size_constraint_set_id - 
#	change_token - 
#
#>
######################################################################
p6_aws_waf_size_constraint_set_delete() {
    local size_constraint_set_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf delete-size-constraint-set --size-constraint-set-id $size_constraint_set_id --change-token $change_token "$@"
}