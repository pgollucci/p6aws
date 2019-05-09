p6_aws_macie_s3_resources_associate() {
    local s3_resources="$1"
    shift 1

    p6_log_or_run aws macie associate-s3-resources --s3-resources $s3_resources "$@"
}
