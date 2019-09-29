######################################################################
#<
#
# Function:
#      = p6_aws_xray_sampling_rules_get()
#
#
#
#>
######################################################################
p6_aws_xray_sampling_rules_get() {

    p6_run_read_cmd aws xray get-sampling-rules "$@"
}