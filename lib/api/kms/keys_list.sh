p6_aws_kms_keys_list() {

    p6_run_read_cmd aws kms list-keys "$@"
}
