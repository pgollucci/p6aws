######################################################################
#<
#
# Function:
#	p6_aws_ssm_patches_enable_non_security(baseline_id)
#
#  Args:
#	baseline_id - 
#
#>
######################################################################
p6_aws_ssm_patches_enable_non_security() {
        local baseline_id="$1"
        shift 1

    cond_log_and_run aws ssm update-patch-baseline --baseline-id $baseline_id --approved-patches-enable-non-security "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_ssm_replace(window_id, window_target_id, window_id, window_task_id, window_id, baseline_id)
#
#  Args:
#	window_id - 
#	window_target_id - 
#	window_id - 
#	window_task_id - 
#	window_id - 
#	baseline_id - 
#
#>
######################################################################
p6_aws_ssm_replace() {
        local baseline_id="$1"
        shift 1

    cond_log_and_run aws ssm update-patch-baseline --baseline-id $baseline_id --replace "$@"
}