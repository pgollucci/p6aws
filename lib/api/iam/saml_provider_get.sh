p6_aws_iam_saml_provider_get() {
    local saml_provider_arn="$1"
    shift 1

    p6_run_read_cmd aws iam get-saml-provider --saml-provider-arn $saml_provider_arn "$@"
}
