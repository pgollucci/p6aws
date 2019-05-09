p6_aws_acm_certificate_renew() {
    local certificate_arn="$1"
    shift 1

    p6_run_write_cmd aws acm renew-certificate --certificate-arn $certificate_arn "$@"
}
