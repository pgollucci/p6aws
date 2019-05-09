p6_aws_mediastore_resource_untag() {
    local resource="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws mediastore untag-resource --resource $resource --tag-keys $tag_keys "$@"
}
