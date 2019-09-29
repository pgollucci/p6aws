######################################################################
#<
#
# Function:
#      = p6_aws_connect_user_hierarchy_group_describe(hierarchy_group_id, instance_id)
#
# Arg(s):
#    hierarchy_group_id - 
#    instance_id - 
#
#
#>
######################################################################
p6_aws_connect_user_hierarchy_group_describe() {
    local hierarchy_group_id="$1"
    local instance_id="$2"
    shift 2

    p6_run_read_cmd aws connect describe-user-hierarchy-group --hierarchy-group-id $hierarchy_group_id --instance-id $instance_id "$@"
}