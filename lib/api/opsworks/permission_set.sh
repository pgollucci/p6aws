p6_aws_opsworks_permission_set() {
    local stack_id="$1"
    local iam_user_arn="$2"
    shift 2

    p6_log_or_run aws opsworks set-permission --stack-id $stack_id --iam-user-arn $iam_user_arn "$@"
}
