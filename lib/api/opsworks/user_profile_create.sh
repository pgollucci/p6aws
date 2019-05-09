p6_aws_opsworks_user_profile_create() {
    local iam_user_arn="$1"
    shift 1

    p6_log_or_run aws opsworks create-user-profile --iam-user-arn $iam_user_arn "$@"
}
