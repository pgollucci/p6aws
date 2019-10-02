######################################################################
#<
#
# Function:
#	p6_aws_ssm_default_patch_baseline_get()
#
#>
######################################################################
p6_aws_ssm_default_patch_baseline_get() {

    p6_run_read_cmd aws ssm get-default-patch-baseline "$@"
}