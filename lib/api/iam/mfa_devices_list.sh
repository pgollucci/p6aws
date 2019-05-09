p6_aws_iam_mfa_devices_list() {

    p6_log_and_run aws iam list-mfa-devices "$@"
}
