p6_aws_resourcegroupstaggingapi_tag_values_get() {
    local key="$1"
    shift 1

    p6_log_and_run aws resourcegroupstaggingapi get-tag-values --key $key "$@"
}
