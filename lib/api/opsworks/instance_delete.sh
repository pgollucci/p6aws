p6_aws_opsworks_instance_delete() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks delete-instance --instance-id $instance_id "$@"
}
