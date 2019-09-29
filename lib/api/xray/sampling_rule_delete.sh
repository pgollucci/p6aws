######################################################################
#<
#
# Function:
#      = p6_aws_xray_sampling_rule_delete()
#
#
#
#>
######################################################################
p6_aws_xray_sampling_rule_delete() {

    p6_run_write_cmd aws xray delete-sampling-rule "$@"
}