######################################################################
#<
#
# Function:
#      = p6_aws_ec2_scheduled_instances_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_scheduled_instances_describe() {

    p6_run_read_cmd aws ec2 describe-scheduled-instances "$@"
}