p6_aws_apigateway_client_certificate_delete() {
    local client_certificate_id="$1"
    shift 1

    p6_run_write_cmd aws apigateway delete-client-certificate --client-certificate-id $client_certificate_id "$@"
}
