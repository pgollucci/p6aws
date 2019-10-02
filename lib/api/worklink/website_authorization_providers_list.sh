######################################################################
#<
#
# Function:
#	p6_aws_worklink_website_authorization_providers_list(fleet_arn)
#
#  Args:
#	fleet_arn - 
#
#>
######################################################################
p6_aws_worklink_website_authorization_providers_list() {
    local fleet_arn="$1"
    shift 1

    p6_run_read_cmd aws worklink list-website-authorization-providers --fleet-arn $fleet_arn "$@"
}