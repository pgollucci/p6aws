p6_aws_ec2_tags_delete() {
    local resources="$1"
    shift 1

    p6_log_or_run aws ec2 delete-tags --resources $resources "$@"
}
