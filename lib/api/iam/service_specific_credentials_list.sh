p6_aws_iam_service_specific_credentials_list() {

    p6_log_and_run aws iam list-service-specific-credentials "$@"
}
