p6_aws_elbv2_ssl_policies_describe() {

    p6_run_read_cmd aws elbv2 describe-ssl-policies "$@"
}
