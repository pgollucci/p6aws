p6_aws_iot_account_audit_configuration_delete() {

    p6_run_write_cmd aws iot delete-account-audit-configuration "$@"
}
