p6_aws_iam_virtual_mfa_devices_list() {

    p6_run_read_cmd aws iam list-virtual-mfa-devices "$@"
}
