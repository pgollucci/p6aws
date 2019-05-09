p6_aws_cognito_idp_user_import_jobs_list() {
    local user_pool_id="$1"
    local max_results="$2"
    shift 2

    p6_run_read_cmd aws cognito-idp list-user-import-jobs --user-pool-id $user_pool_id --max-results $max_results "$@"
}
