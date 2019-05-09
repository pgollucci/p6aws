p6_aws_securityhub_invitations_delete() {

    p6_run_write_cmd aws securityhub delete-invitations "$@"
}
