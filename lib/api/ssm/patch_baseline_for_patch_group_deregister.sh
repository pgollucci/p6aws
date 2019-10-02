######################################################################
#<
#
# Function:
#	p6_aws_ssm_patch_baseline_for_patch_group_deregister(baseline_id, patch_group)
#
#  Args:
#	baseline_id - 
#	patch_group - 
#
#>
######################################################################
p6_aws_ssm_patch_baseline_for_patch_group_deregister() {
    local baseline_id="$1"
    local patch_group="$2"
    shift 2

    p6_run_write_cmd aws ssm deregister-patch-baseline-for-patch-group --baseline-id $baseline_id --patch-group $patch_group "$@"
}