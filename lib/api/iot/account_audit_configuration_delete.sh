p6_aws_iot_account_audit_configuration_delete() {

    p6_log_or_run aws iot delete-account-audit-configuration "$@"
}
