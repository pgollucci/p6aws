######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_aws_organizations_access_status_get()
#
#>
######################################################################
p6_aws_servicecatalog_aws_organizations_access_status_get() {

    p6_run_read_cmd aws servicecatalog get-aws-organizations-access-status "$@"
}