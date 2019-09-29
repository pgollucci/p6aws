######################################################################
#<
#
# Function:
#      = p6_aws_ssm_patch_baseline_delete(baseline_id)
#
# Arg(s):
#    baseline_id - 
#
#
#>
######################################################################
p6_aws_ssm_patch_baseline_delete() {
    local baseline_id="$1"
    shift 1

    p6_run_write_cmd aws ssm delete-patch-baseline --baseline-id $baseline_id "$@"
}