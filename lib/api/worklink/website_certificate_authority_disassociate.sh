######################################################################
#<
#
# Function:
#	p6_aws_worklink_website_certificate_authority_disassociate(fleet_arn, website_ca_id)
#
#  Args:
#	fleet_arn - 
#	website_ca_id - 
#
#>
######################################################################
p6_aws_worklink_website_certificate_authority_disassociate() {
    local fleet_arn="$1"
    local website_ca_id="$2"
    shift 2

    p6_run_write_cmd aws worklink disassociate-website-certificate-authority --fleet-arn $fleet_arn --website-ca-id $website_ca_id "$@"
}