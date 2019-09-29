######################################################################
#<
#
# Function:
#      = p6_aws_ssm_managed_instance_deregister(instance_id)
#
# Arg(s):
#    instance_id - 
#
#
#>
######################################################################
p6_aws_ssm_managed_instance_deregister() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws ssm deregister-managed-instance --instance-id $instance_id "$@"
}