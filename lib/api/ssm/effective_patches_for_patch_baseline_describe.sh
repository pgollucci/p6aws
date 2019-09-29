######################################################################
#<
#
# Function:
#      = p6_aws_ssm_effective_patches_for_patch_baseline_describe(baseline_id)
#
# Arg(s):
#    baseline_id - 
#
#
#>
######################################################################
p6_aws_ssm_effective_patches_for_patch_baseline_describe() {
    local baseline_id="$1"
    shift 1

    p6_run_read_cmd aws ssm describe-effective-patches-for-patch-baseline --baseline-id $baseline_id "$@"
}