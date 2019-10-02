######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_size_constraint_set_get(size_constraint_set_id)
#
#  Args:
#	size_constraint_set_id - 
#
#>
######################################################################
p6_aws_waf_regional_size_constraint_set_get() {
    local size_constraint_set_id="$1"
    shift 1

    p6_run_read_cmd aws waf-regional get-size-constraint-set --size-constraint-set-id $size_constraint_set_id "$@"
}