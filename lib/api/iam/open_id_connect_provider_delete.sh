p6_aws_iam_open_id_connect_provider_delete() {
    local open_id_connect_provider_arn="$1"
    shift 1

    p6_log_or_run aws iam delete-open-id-connect-provider --open-id-connect-provider-arn $open_id_connect_provider_arn "$@"
}
