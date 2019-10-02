######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_batch_prediction_update(batch_prediction_id, batch_prediction_name)
#
#  Args:
#	batch_prediction_id - 
#	batch_prediction_name - 
#
#>
######################################################################
p6_aws_machinelearning_batch_prediction_update() {
    local batch_prediction_id="$1"
    local batch_prediction_name="$2"
    shift 2

    p6_run_write_cmd aws machinelearning update-batch-prediction --batch-prediction-id $batch_prediction_id --batch-prediction-name $batch_prediction_name "$@"
}