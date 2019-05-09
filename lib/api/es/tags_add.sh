p6_aws_es_tags_add() {
    local arn="$1"
    local tag_list="$2"
    shift 2

    p6_log_or_run aws es add-tags --arn $arn --tag-list $tag_list "$@"
}
