p6_aws_securityhub_from_master_account_disassociate() {

    p6_log_or_run aws securityhub disassociate-from-master-account "$@"
}
