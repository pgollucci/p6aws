p6_aws_cognito_idp_user_pools_list() {

    p6_run_read_cmd aws cognito-idp list-user-pools "$@"
}
