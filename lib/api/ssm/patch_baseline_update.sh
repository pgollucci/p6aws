######################################################################
#<
#
# Function:
#      = p6_aws_ssm_patch_baseline_update(baseline_id)
#
# Arg(s):
#    baseline_id - 
#
#
#>
######################################################################
p6_aws_ssm_patch_baseline_update() {
    local baseline_id="$1"
    shift 1

    p6_run_write_cmd aws ssm update-patch-baseline --baseline-id $baseline_id "$@"
}