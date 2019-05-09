p6_aws_ecr_login_get() {

    p6_run_read_cmd aws ecr get-login "$@"
}
