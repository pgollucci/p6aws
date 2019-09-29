######################################################################
#<
#
# Function:
#      = p6_aws_workspaces_rules_of_ip_group_update(group_id, user_rules)
#
# Arg(s):
#    group_id - 
#    user_rules - 
#
#
#>
######################################################################
p6_aws_workspaces_rules_of_ip_group_update() {
    local group_id="$1"
    local user_rules="$2"
    shift 2

    p6_run_write_cmd aws workspaces update-rules-of-ip-group --group-id $group_id --user-rules $user_rules "$@"
}