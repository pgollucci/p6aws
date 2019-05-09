p6_aws_iam_server_certificates_list() {

    p6_run_read_cmd aws iam list-server-certificates "$@"
}
