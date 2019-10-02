######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_user_import_job_create(job_name, user_pool_id, cloud_watch_logs_role_arn)
#
#  Args:
#	job_name - 
#	user_pool_id - 
#	cloud_watch_logs_role_arn - 
#
#>
######################################################################
p6_aws_cognito_idp_user_import_job_create() {
    local job_name="$1"
    local user_pool_id="$2"
    local cloud_watch_logs_role_arn="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp create-user-import-job --job-name $job_name --user-pool-id $user_pool_id --cloud-watch-logs-role-arn $cloud_watch_logs_role_arn "$@"
}