######################################################################
#<
#
# Function:
#      = p6_aws_iotevents_detector_models_list()
#
#
#
#>
######################################################################
p6_aws_iotevents_detector_models_list() {

    p6_run_read_cmd aws iotevents list-detector-models "$@"
}