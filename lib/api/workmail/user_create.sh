######################################################################
#<
#
# Function:
#	p6_aws_workmail_user_create(organization_id, name, display_name, password)
#
#  Args:
#	organization_id - 
#	name - 
#	display_name - 
#	password - 
#
#>
######################################################################
p6_aws_workmail_user_create() {
    local organization_id="$1"
    local name="$2"
    local display_name="$3"
    local password="$4"
    shift 4

    p6_run_write_cmd aws workmail create-user --organization-id $organization_id --name $name --display-name $display_name --password $password "$@"
}