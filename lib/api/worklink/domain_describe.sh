######################################################################
#<
#
# Function:
#	p6_aws_worklink_domain_describe(fleet_arn, domain_name)
#
#  Args:
#	fleet_arn - 
#	domain_name - 
#
#>
######################################################################
p6_aws_worklink_domain_describe() {
    local fleet_arn="$1"
    local domain_name="$2"
    shift 2

    p6_run_read_cmd aws worklink describe-domain --fleet-arn $fleet_arn --domain-name $domain_name "$@"
}