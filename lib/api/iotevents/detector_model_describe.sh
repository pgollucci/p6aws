######################################################################
#<
#
# Function:
#	p6_aws_iotevents_detector_model_describe(detector_model_name)
#
#  Args:
#	detector_model_name - 
#
#>
######################################################################
p6_aws_iotevents_detector_model_describe() {
    local detector_model_name="$1"
    shift 1

    p6_run_read_cmd aws iotevents describe-detector-model --detector-model-name $detector_model_name "$@"
}