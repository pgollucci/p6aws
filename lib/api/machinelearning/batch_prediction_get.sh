######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_batch_prediction_get(batch_prediction_id)
#
#  Args:
#	batch_prediction_id - 
#
#>
######################################################################
p6_aws_machinelearning_batch_prediction_get() {
    local batch_prediction_id="$1"
    shift 1

    p6_run_read_cmd aws machinelearning get-batch-prediction --batch-prediction-id $batch_prediction_id "$@"
}