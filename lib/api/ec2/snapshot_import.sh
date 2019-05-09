p6_aws_ec2_snapshot_import() {

    p6_run_write_cmd aws ec2 import-snapshot "$@"
}
