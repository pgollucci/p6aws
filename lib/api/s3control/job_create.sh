p6_aws_s3control_job_create() {
    local account_id="$1"
    local operation="$2"
    local report="$3"
    local manifest="$4"
    local priority="$5"
    local role_arn="$6"
    shift 6

    p6_run_write_cmd aws s3control create-job --account-id $account_id --operation $operation --report $report --manifest $manifest --priority $priority --role-arn $role_arn "$@"
}
