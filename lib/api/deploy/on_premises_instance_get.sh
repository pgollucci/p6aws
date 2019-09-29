######################################################################
#<
#
# Function:
#      = p6_aws_deploy_on_premises_instance_get(instance_name)
#
# Arg(s):
#    instance_name - 
#
#
#>
######################################################################
p6_aws_deploy_on_premises_instance_get() {
    local instance_name="$1"
    shift 1

    p6_run_read_cmd aws deploy get-on-premises-instance --instance-name $instance_name "$@"
}