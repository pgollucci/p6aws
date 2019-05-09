p6_aws_iam_open_id_connect_provider_create() {
    local url="$1"
    local thumbprint_list="$2"
    shift 2

    p6_log_or_run aws iam create-open-id-connect-provider --url $url --thumbprint-list $thumbprint_list "$@"
}
