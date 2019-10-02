######################################################################
#<
#
# Function:
#	p6_aws_greengrass_group_version_create(group_id)
#
#  Args:
#	group_id - 
#
#>
######################################################################
p6_aws_greengrass_group_version_create() {
    local group_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-group-version --group-id $group_id "$@"
}