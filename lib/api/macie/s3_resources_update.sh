p6_aws_macie_s3_resources_update() {
    local s3_resources_update="$1"
    shift 1

    p6_run_write_cmd aws macie update-s3-resources --s3-resources-update $s3_resources_update "$@"
}
