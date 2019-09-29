######################################################################
#<
#
# Function:
#      = p6_aws_ssm_parameters_describe()
#
#
#
#>
######################################################################
p6_aws_ssm_parameters_describe() {

    p6_run_read_cmd aws ssm describe-parameters "$@"
}