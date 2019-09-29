######################################################################
#<
#
# Function:
#      = p6_aws_ec2_instance_credit_specifications_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_instance_credit_specifications_describe() {

    p6_run_read_cmd aws ec2 describe-instance-credit-specifications "$@"
}