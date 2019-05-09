p6_aws_ec2_placement_group_delete() {
    local group_name="$1"
    shift 1

    p6_log_or_run aws ec2 delete-placement-group --group-name $group_name "$@"
}
