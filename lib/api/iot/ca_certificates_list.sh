p6_aws_iot_ca_certificates_list() {

    p6_run_read_cmd aws iot list-ca-certificates "$@"
}
