p6_aws_opsworks_user_profile_update() {
    local iam_user_arn="$1"
    shift 1

    p6_log_or_run aws opsworks update-user-profile --iam-user-arn $iam_user_arn "$@"
}
