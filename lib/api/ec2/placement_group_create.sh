p6_aws_ec2_placement_group_create() {

    p6_run_write_cmd aws ec2 create-placement-group "$@"
}
