######################################################################
#<
#
# Function:
#      = p6_aws_deploy_on_premises_instance_deregister(instance_name)
#
# Arg(s):
#    instance_name - 
#
#
#>
######################################################################
p6_aws_deploy_on_premises_instance_deregister() {
    local instance_name="$1"
    shift 1

    p6_run_write_cmd aws deploy deregister-on-premises-instance --instance-name $instance_name "$@"
}