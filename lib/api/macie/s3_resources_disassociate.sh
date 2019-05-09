p6_aws_macie_s3_resources_disassociate() {
    local associated_s3_resources="$1"
    shift 1

    p6_log_or_run aws macie disassociate-s3-resources --associated-s3-resources $associated_s3_resources "$@"
}
