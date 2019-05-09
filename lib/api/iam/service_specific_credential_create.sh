p6_aws_iam_service_specific_credential_create() {
    local user_name="$1"
    local service_name="$2"
    shift 2

    p6_log_or_run aws iam create-service-specific-credential --user-name $user_name --service-name $service_name "$@"
}
