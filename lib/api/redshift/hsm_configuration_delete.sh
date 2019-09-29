######################################################################
#<
#
# Function:
#      = p6_aws_redshift_hsm_configuration_delete(hsm_configuration_identifier)
#
# Arg(s):
#    hsm_configuration_identifier - 
#
#
#>
######################################################################
p6_aws_redshift_hsm_configuration_delete() {
    local hsm_configuration_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift delete-hsm-configuration --hsm-configuration-identifier $hsm_configuration_identifier "$@"
}