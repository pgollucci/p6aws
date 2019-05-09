p6_aws_kms_key_create() {

    p6_log_or_run aws kms create-key "$@"
}
