######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_aws_organizations_access_enable()
#
#>
######################################################################
p6_aws_servicecatalog_aws_organizations_access_enable() {

    p6_run_write_cmd aws servicecatalog enable-aws-organizations-access "$@"
}