p6_aws_ec2_placement_group_delete() {
    local group_name="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-placement-group --group-name $group_name "$@"
}
