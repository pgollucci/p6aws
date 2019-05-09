p6_aws_apigateway_client_certificate_get() {
    local client_certificate_id="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-client-certificate --client-certificate-id $client_certificate_id "$@"
}
