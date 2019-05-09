p6_aws_opsworks_access_grant() {
    local instance_id="$1"
    shift 1

    p6_log_or_run aws opsworks grant-access --instance-id $instance_id "$@"
}
