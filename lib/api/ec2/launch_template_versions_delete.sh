p6_aws_ec2_launch_template_versions_delete() {
    local versions="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-launch-template-versions --versions $versions "$@"
}
