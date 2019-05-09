p6_aws_cognito_identity_resource_tag() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws cognito-identity tag-resource --resource-arn $resource_arn "$@"
}
