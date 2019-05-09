p6_aws_iam_mfa_devices_list() {

    p6_run_read_cmd aws iam list-mfa-devices "$@"
}
