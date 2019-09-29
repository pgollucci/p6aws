######################################################################
#<
#
# Function:
#      = p6_aws_iotevents_detector_model_delete(detector_model_name)
#
# Arg(s):
#    detector_model_name - 
#
#
#>
######################################################################
p6_aws_iotevents_detector_model_delete() {
    local detector_model_name="$1"
    shift 1

    p6_run_write_cmd aws iotevents delete-detector-model --detector-model-name $detector_model_name "$@"
}