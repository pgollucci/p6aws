######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_instance_stop(instance_id)
#
# Arg(s):
#    instance_id - 
#
#
#>
######################################################################
p6_aws_opsworks_instance_stop() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks stop-instance --instance-id $instance_id "$@"
}