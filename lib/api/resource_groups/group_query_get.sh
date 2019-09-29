######################################################################
#<
#
# Function:
#      = p6_aws_resource_groups_group_query_get(group_name)
#
# Arg(s):
#    group_name - 
#
#
#>
######################################################################
p6_aws_resource_groups_group_query_get() {
    local group_name="$1"
    shift 1

    p6_run_read_cmd aws resource-groups get-group-query --group-name $group_name "$@"
}