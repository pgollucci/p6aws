p6_aws_sms_app_replication_stop() {

    p6_log_or_run aws sms stop-app-replication "$@"
}
