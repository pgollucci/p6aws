p6_aws_ec2_tags_create() {
    local resources="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws ec2 create-tags --resources $resources --tags $tags "$@"
}
