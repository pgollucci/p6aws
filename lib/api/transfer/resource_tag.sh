p6_aws_transfer_resource_tag() {
    local arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws transfer tag-resource --arn $arn --tags $tags "$@"
}
