######################################################################
#<
#
# Function:
#	p6_aws_connect_user_hierarchy_structure_describe(instance_id)
#
#  Args:
#	instance_id - 
#
#>
######################################################################
p6_aws_connect_user_hierarchy_structure_describe() {
    local instance_id="$1"
    shift 1

    p6_run_read_cmd aws connect describe-user-hierarchy-structure --instance-id $instance_id "$@"
}