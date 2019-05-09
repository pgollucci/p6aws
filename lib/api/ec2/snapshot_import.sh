p6_aws_ec2_snapshot_import() {

    p6_log_or_run aws ec2 import-snapshot "$@"
}
