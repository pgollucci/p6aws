p6_aws_sms_server_catalog_delete() {

    p6_log_or_run aws sms delete-server-catalog "$@"
}
