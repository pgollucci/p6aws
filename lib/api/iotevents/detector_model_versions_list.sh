######################################################################
#<
#
# Function:
#      = p6_aws_iotevents_detector_model_versions_list(detector_model_name)
#
# Arg(s):
#    detector_model_name - 
#
#
#>
######################################################################
p6_aws_iotevents_detector_model_versions_list() {
    local detector_model_name="$1"
    shift 1

    p6_run_read_cmd aws iotevents list-detector-model-versions --detector-model-name $detector_model_name "$@"
}