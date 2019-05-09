p6_aws_ec2_tags_delete() {
    local resources="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-tags --resources $resources "$@"
}
