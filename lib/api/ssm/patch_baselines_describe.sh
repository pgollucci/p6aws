######################################################################
#<
#
# Function:
#	p6_aws_ssm_patch_baselines_describe()
#
#>
######################################################################
p6_aws_ssm_patch_baselines_describe() {

    p6_run_read_cmd aws ssm describe-patch-baselines "$@"
}