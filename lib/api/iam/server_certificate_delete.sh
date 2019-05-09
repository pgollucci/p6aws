p6_aws_iam_server_certificate_delete() {
    local server_certificate_name="$1"
    shift 1

    p6_run_write_cmd aws iam delete-server-certificate --server-certificate-name $server_certificate_name "$@"
}
