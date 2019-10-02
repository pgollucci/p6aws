######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_realtime_endpoint_delete(ml_model_id)
#
#  Args:
#	ml_model_id - 
#
#>
######################################################################
p6_aws_machinelearning_realtime_endpoint_delete() {
    local ml_model_id="$1"
    shift 1

    p6_run_write_cmd aws machinelearning delete-realtime-endpoint --ml-model-id $ml_model_id "$@"
}