######################################################################
#<
#
# Function:
#      = p6_aws_worklink_domain_access_revoke(fleet_arn, domain_name)
#
# Arg(s):
#    fleet_arn - 
#    domain_name - 
#
#
#>
######################################################################
p6_aws_worklink_domain_access_revoke() {
    local fleet_arn="$1"
    local domain_name="$2"
    shift 2

    p6_run_write_cmd aws worklink revoke-domain-access --fleet-arn $fleet_arn --domain-name $domain_name "$@"
}