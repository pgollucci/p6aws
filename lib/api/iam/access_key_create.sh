p6_aws_iam_access_key_create() {

    p6_log_or_run aws iam create-access-key "$@"
}
