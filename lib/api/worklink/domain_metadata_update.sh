######################################################################
#<
#
# Function:
#	p6_aws_worklink_domain_metadata_update(fleet_arn, domain_name)
#
#  Args:
#	fleet_arn - 
#	domain_name - 
#
#>
######################################################################
p6_aws_worklink_domain_metadata_update() {
    local fleet_arn="$1"
    local domain_name="$2"
    shift 2

    p6_run_write_cmd aws worklink update-domain-metadata --fleet-arn $fleet_arn --domain-name $domain_name "$@"
}