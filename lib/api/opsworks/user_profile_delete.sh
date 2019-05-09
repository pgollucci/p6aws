p6_aws_opsworks_user_profile_delete() {
    local iam_user_arn="$1"
    shift 1

    p6_log_or_run aws opsworks delete-user-profile --iam-user-arn $iam_user_arn "$@"
}
