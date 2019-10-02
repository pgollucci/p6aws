######################################################################
#<
#
# Function:
#	p6_aws_xray_sampling_rule_update(sampling_rule_update)
#
#  Args:
#	sampling_rule_update - 
#
#>
######################################################################
p6_aws_xray_sampling_rule_update() {
    local sampling_rule_update="$1"
    shift 1

    p6_run_write_cmd aws xray update-sampling-rule --sampling-rule-update $sampling_rule_update "$@"
}