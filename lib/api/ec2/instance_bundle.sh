######################################################################
#<
#
# Function:
#      = p6_aws_ec2_instance_bundle(instance_id)
#
# Arg(s):
#    instance_id - 
#
#
#>
######################################################################
p6_aws_ec2_instance_bundle() {
    local instance_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 bundle-instance --instance-id $instance_id "$@"
}