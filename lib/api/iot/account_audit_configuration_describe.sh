######################################################################
#<
#
# Function:
#	p6_aws_iot_account_audit_configuration_describe()
#
#>
######################################################################
p6_aws_iot_account_audit_configuration_describe() {

    p6_run_read_cmd aws iot describe-account-audit-configuration "$@"
}