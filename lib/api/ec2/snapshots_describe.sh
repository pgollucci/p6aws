p6_aws_ec2_snapshots_describe() {

    p6_run_read_cmd aws ec2 describe-snapshots "$@"
}
