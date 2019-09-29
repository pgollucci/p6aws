######################################################################
#<
#
# Function:
#      = p6_aws_worklink_website_authorization_provider_disassociate(fleet_arn, authorization_provider_id)
#
# Arg(s):
#    fleet_arn - 
#    authorization_provider_id - 
#
#
#>
######################################################################
p6_aws_worklink_website_authorization_provider_disassociate() {
    local fleet_arn="$1"
    local authorization_provider_id="$2"
    shift 2

    p6_run_write_cmd aws worklink disassociate-website-authorization-provider --fleet-arn $fleet_arn --authorization-provider-id $authorization_provider_id "$@"
}