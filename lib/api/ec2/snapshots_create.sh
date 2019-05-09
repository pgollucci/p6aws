p6_aws_ec2_snapshots_create() {
    local instance_specification="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-snapshots --instance-specification $instance_specification "$@"
}
