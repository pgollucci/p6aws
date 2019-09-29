######################################################################
#<
#
# Function:
#      = p6_aws_iot_account_audit_configuration_update()
#
#
#
#>
######################################################################
p6_aws_iot_account_audit_configuration_update() {

    p6_run_write_cmd aws iot update-account-audit-configuration "$@"
}