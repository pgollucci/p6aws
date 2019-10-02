######################################################################
#<
#
# Function:
#	p6_aws_ssm_available_patches_describe()
#
#>
######################################################################
p6_aws_ssm_available_patches_describe() {

    p6_run_read_cmd aws ssm describe-available-patches "$@"
}