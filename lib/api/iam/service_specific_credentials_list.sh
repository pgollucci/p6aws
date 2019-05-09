p6_aws_iam_service_specific_credentials_list() {

    p6_run_read_cmd aws iam list-service-specific-credentials "$@"
}
