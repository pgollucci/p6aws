######################################################################
#<
#
# Function:
#	p6_aws_iotevents_data_detector_describe(detector_model_name)
#
#  Args:
#	detector_model_name - 
#
#>
######################################################################
p6_aws_iotevents_data_detector_describe() {
    local detector_model_name="$1"
    shift 1

    p6_run_read_cmd aws iotevents-data describe-detector --detector-model-name $detector_model_name "$@"
}