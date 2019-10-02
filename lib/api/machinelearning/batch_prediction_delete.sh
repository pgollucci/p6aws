######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_batch_prediction_delete(batch_prediction_id)
#
#  Args:
#	batch_prediction_id - 
#
#>
######################################################################
p6_aws_machinelearning_batch_prediction_delete() {
    local batch_prediction_id="$1"
    shift 1

    p6_run_write_cmd aws machinelearning delete-batch-prediction --batch-prediction-id $batch_prediction_id "$@"
}