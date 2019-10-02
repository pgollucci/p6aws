######################################################################
#<
#
# Function:
#	p6_aws_ssm_patch_baseline_for_patch_group_get(patch_group)
#
#  Args:
#	patch_group - 
#
#>
######################################################################
p6_aws_ssm_patch_baseline_for_patch_group_get() {
    local patch_group="$1"
    shift 1

    p6_run_read_cmd aws ssm get-patch-baseline-for-patch-group --patch-group $patch_group "$@"
}