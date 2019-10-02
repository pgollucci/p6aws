######################################################################
#<
#
# Function:
#	p6_aws_greengrass_group_version_get(group_id, group_version_id)
#
#  Args:
#	group_id - 
#	group_version_id - 
#
#>
######################################################################
p6_aws_greengrass_group_version_get() {
    local group_id="$1"
    local group_version_id="$2"
    shift 2

    p6_run_read_cmd aws greengrass get-group-version --group-id $group_id --group-version-id $group_version_id "$@"
}