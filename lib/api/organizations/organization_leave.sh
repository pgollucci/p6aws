######################################################################
#<
#
# Function:
#      = p6_aws_organizations_organization_leave()
#
#
#
#>
######################################################################
p6_aws_organizations_organization_leave() {

    p6_run_write_cmd aws organizations leave-organization "$@"
}