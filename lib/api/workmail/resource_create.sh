######################################################################
#<
#
# Function:
#	p6_aws_workmail_resource_create(organization_id, name, type)
#
#  Args:
#	organization_id - 
#	name - 
#	type - 
#
#>
######################################################################
p6_aws_workmail_resource_create() {
    local organization_id="$1"
    local name="$2"
    local type="$3"
    shift 3

    p6_run_write_cmd aws workmail create-resource --organization-id $organization_id --name $name --type $type "$@"
}