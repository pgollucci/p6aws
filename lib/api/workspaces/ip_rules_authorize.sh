######################################################################
#<
#
# Function:
#	p6_aws_workspaces_ip_rules_authorize(group_id, user_rules)
#
#  Args:
#	group_id - 
#	user_rules - 
#
#>
######################################################################
p6_aws_workspaces_ip_rules_authorize() {
    local group_id="$1"
    local user_rules="$2"
    shift 2

    p6_run_write_cmd aws workspaces authorize-ip-rules --group-id $group_id --user-rules $user_rules "$@"
}