p6_aws_iam_open_id_connect_provider_get() {
    local open_id_connect_provider_arn="$1"
    shift 1

    p6_run_read_cmd aws iam get-open-id-connect-provider --open-id-connect-provider-arn $open_id_connect_provider_arn "$@"
}
