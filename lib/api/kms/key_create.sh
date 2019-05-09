p6_aws_kms_key_create() {

    p6_run_write_cmd aws kms create-key "$@"
}
