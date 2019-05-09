p6_aws_redshift_tags_create() {
    local resource_name="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws redshift create-tags --resource-name $resource_name --tags $tags "$@"
}
