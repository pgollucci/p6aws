p6_aws_iam_client_id_to_open_id_connect_provider_add() {
    local open_id_connect_provider_arn="$1"
    local client_id="$2"
    shift 2

    p6_run_write_cmd aws iam add-client-id-to-open-id-connect-provider --open-id-connect-provider-arn $open_id_connect_provider_arn --client-id $client_id "$@"
}
