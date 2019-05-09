p6_aws_sms_server_catalog_import() {

    p6_log_or_run aws sms import-server-catalog "$@"
}
