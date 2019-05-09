p6_aws_ec2_launch_template_version_create() {
    local launch_template_data="$1"
    shift 1

    p6_log_or_run aws ec2 create-launch-template-version --launch-template-data $launch_template_data "$@"
}
