p6_aws_ec2_launch_template_delete() {

    p6_log_or_run aws ec2 delete-launch-template "$@"
}
