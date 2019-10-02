######################################################################
#<
#
# Function:
#	p6_aws_organizations_organization_create()
#
#>
######################################################################
p6_aws_organizations_organization_create() {

    p6_run_write_cmd aws organizations create-organization "$@"
}