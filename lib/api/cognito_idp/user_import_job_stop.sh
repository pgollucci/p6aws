######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_user_import_job_stop(user_pool_id, job_id)
#
#  Args:
#	user_pool_id - 
#	job_id - 
#
#>
######################################################################
p6_aws_cognito_idp_user_import_job_stop() {
    local user_pool_id="$1"
    local job_id="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp stop-user-import-job --user-pool-id $user_pool_id --job-id $job_id "$@"
}