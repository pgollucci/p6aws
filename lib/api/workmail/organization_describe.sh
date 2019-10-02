######################################################################
#<
#
# Function:
#	p6_aws_workmail_organization_describe(organization_id)
#
#  Args:
#	organization_id - 
#
#>
######################################################################
p6_aws_workmail_organization_describe() {
    local organization_id="$1"
    shift 1

    p6_run_read_cmd aws workmail describe-organization --organization-id $organization_id "$@"
}