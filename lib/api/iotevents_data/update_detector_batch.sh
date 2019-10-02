######################################################################
#<
#
# Function:
#	p6_aws_iotevents_data_update_detector_batch(detectors)
#
#  Args:
#	detectors - 
#
#>
######################################################################
p6_aws_iotevents_data_update_detector_batch() {
    local detectors="$1"
    shift 1

    p6_run_write_cmd aws iotevents-data batch-update-detector --detectors $detectors "$@"
}