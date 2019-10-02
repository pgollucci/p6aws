######################################################################
#<
#
# Function:
#	p6_aws_worklink_identity_provider_configuration_update(fleet_arn, identity_provider_type)
#
#  Args:
#	fleet_arn - 
#	identity_provider_type - 
#
#>
######################################################################
p6_aws_worklink_identity_provider_configuration_update() {
    local fleet_arn="$1"
    local identity_provider_type="$2"
    shift 2

    p6_run_write_cmd aws worklink update-identity-provider-configuration --fleet-arn $fleet_arn --identity-provider-type $identity_provider_type "$@"
}