######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_time_based_auto_scaling_describe(instance_ids)
#
# Arg(s):
#    instance_ids - 
#
#
#>
######################################################################
p6_aws_opsworks_time_based_auto_scaling_describe() {
    local instance_ids="$1"
    shift 1

    p6_run_read_cmd aws opsworks describe-time-based-auto-scaling --instance-ids $instance_ids "$@"
}