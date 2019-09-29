######################################################################
#<
#
# Function:
#      = p6_aws_iotevents_data_detectors_list(detector_model_name)
#
# Arg(s):
#    detector_model_name - 
#
#
#>
######################################################################
p6_aws_iotevents_data_detectors_list() {
    local detector_model_name="$1"
    shift 1

    p6_run_read_cmd aws iotevents-data list-detectors --detector-model-name $detector_model_name "$@"
}