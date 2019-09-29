######################################################################
#<
#
# Function:
#      = p6_aws_workmail_group_create(organization_id, name)
#
# Arg(s):
#    organization_id - 
#    name - 
#
#
#>
######################################################################
p6_aws_workmail_group_create() {
    local organization_id="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws workmail create-group --organization-id $organization_id --name $name "$@"
}