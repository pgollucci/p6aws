p6_aws_lambda_resource_untag() {
    local resource="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws lambda untag-resource --resource $resource --tag-keys $tag_keys "$@"
}
