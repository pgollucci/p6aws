######################################################################
#<
#
# Function:
#      = p6_aws_workmail_resources_list(organization_id)
#
# Arg(s):
#    organization_id - 
#
#
#>
######################################################################
p6_aws_workmail_resources_list() {
    local organization_id="$1"
    shift 1

    p6_run_read_cmd aws workmail list-resources --organization-id $organization_id "$@"
}