p6_aws_lambda_resource_tag() {
    local resource="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws lambda tag-resource --resource $resource --tags $tags "$@"
}
