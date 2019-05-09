p6_aws_macie_s3_resources_list() {

    p6_run_read_cmd aws macie list-s3-resources "$@"
}
