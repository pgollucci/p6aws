p6_aws_ecr_authorization_token_get() {

    p6_log_and_run aws ecr get-authorization-token "$@"
}
