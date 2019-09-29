######################################################################
#<
#
# Function:
#      = p6_aws_license_manager_count_hard_limit(license_configuration_arn)
#
# Arg(s):
#    license_configuration_arn - 
#
#
#>
######################################################################
p6_aws_license_manager_count_hard_limit() {
        local license_configuration_arn="$1"
        shift 1

    cond_log_and_run aws license-manager update-license-configuration --license-configuration-arn $license_configuration_arn --license-count-hard-limit "$@"
}
