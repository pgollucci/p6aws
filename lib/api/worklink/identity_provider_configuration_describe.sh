######################################################################
#<
#
# Function:
#	p6_aws_worklink_identity_provider_configuration_describe(fleet_arn)
#
#  Args:
#	fleet_arn - 
#
#>
######################################################################
p6_aws_worklink_identity_provider_configuration_describe() {
    local fleet_arn="$1"
    shift 1

    p6_run_read_cmd aws worklink describe-identity-provider-configuration --fleet-arn $fleet_arn "$@"
}