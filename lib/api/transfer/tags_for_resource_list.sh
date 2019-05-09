p6_aws_transfer_tags_for_resource_list() {
    local arn="$1"
    shift 1

    p6_log_and_run aws transfer list-tags-for-resource --arn $arn "$@"
}
