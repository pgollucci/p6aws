p6_aws_cognito_idp_user_import_job_start() {
    local user_pool_id="$1"
    local job_id="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp start-user-import-job --user-pool-id $user_pool_id --job-id $job_id "$@"
}
