######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_instance_start(instance_id)
#
# Arg(s):
#    instance_id - 
#
#
#>
######################################################################
p6_aws_opsworks_instance_start() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks start-instance --instance-id $instance_id "$@"
}