p6_aws_iam_server_certificate_update() {
    local server_certificate_name="$1"
    shift 1

    p6_log_or_run aws iam update-server-certificate --server-certificate-name $server_certificate_name "$@"
}
