######################################################################
#<
#
# Function:
#      = p6_aws_workspaces_ip_groups_disassociate(directory_id, group_ids)
#
# Arg(s):
#    directory_id - 
#    group_ids - 
#
#
#>
######################################################################
p6_aws_workspaces_ip_groups_disassociate() {
    local directory_id="$1"
    local group_ids="$2"
    shift 2

    p6_run_write_cmd aws workspaces disassociate-ip-groups --directory-id $directory_id --group-ids $group_ids "$@"
}