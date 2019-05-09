p6_aws_sts_caller_identity_get() {

    p6_log_and_run aws sts get-caller-identity "$@"
}
