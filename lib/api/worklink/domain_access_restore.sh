######################################################################
#<
#
# Function:
#	p6_aws_worklink_domain_access_restore(fleet_arn, domain_name)
#
#  Args:
#	fleet_arn - 
#	domain_name - 
#
#>
######################################################################
p6_aws_worklink_domain_access_restore() {
    local fleet_arn="$1"
    local domain_name="$2"
    shift 2

    p6_run_write_cmd aws worklink restore-domain-access --fleet-arn $fleet_arn --domain-name $domain_name "$@"
}