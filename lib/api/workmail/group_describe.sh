######################################################################
#<
#
# Function:
#      = p6_aws_workmail_group_describe(organization_id, group_id)
#
# Arg(s):
#    organization_id - 
#    group_id - 
#
#
#>
######################################################################
p6_aws_workmail_group_describe() {
    local organization_id="$1"
    local group_id="$2"
    shift 2

    p6_run_read_cmd aws workmail describe-group --organization-id $organization_id --group-id $group_id "$@"
}