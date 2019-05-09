p6_aws_opsworks_access_grant() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks grant-access --instance-id $instance_id "$@"
}
