p6_aws_es_tags_remove() {
    local arn="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws es remove-tags --arn $arn --tag-keys $tag_keys "$@"
}
