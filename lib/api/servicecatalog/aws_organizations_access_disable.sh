######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_aws_organizations_access_disable()
#
#
#
#>
######################################################################
p6_aws_servicecatalog_aws_organizations_access_disable() {

    p6_run_write_cmd aws servicecatalog disable-aws-organizations-access "$@"
}