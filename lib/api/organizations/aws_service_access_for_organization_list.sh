######################################################################
#<
#
# Function:
#	p6_aws_organizations_aws_service_access_for_organization_list()
#
#>
######################################################################
p6_aws_organizations_aws_service_access_for_organization_list() {

    p6_run_read_cmd aws organizations list-aws-service-access-for-organization "$@"
}