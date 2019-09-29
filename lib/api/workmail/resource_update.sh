######################################################################
#<
#
# Function:
#      = p6_aws_workmail_resource_update(organization_id, resource_id)
#
# Arg(s):
#    organization_id - 
#    resource_id - 
#
#
#>
######################################################################
p6_aws_workmail_resource_update() {
    local organization_id="$1"
    local resource_id="$2"
    shift 2

    p6_run_write_cmd aws workmail update-resource --organization-id $organization_id --resource-id $resource_id "$@"
}