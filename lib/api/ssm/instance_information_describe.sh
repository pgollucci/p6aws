######################################################################
#<
#
# Function:
#      = p6_aws_ssm_instance_information_describe()
#
#
#
#>
######################################################################
p6_aws_ssm_instance_information_describe() {

    p6_run_read_cmd aws ssm describe-instance-information "$@"
}