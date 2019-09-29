######################################################################
#<
#
# Function:
#      = p6_aws_machinelearning_batch_prediction_create(batch_prediction_id, ml_model_id, batch_prediction_data_source_id, output_uri)
#
# Arg(s):
#    batch_prediction_id - 
#    ml_model_id - 
#    batch_prediction_data_source_id - 
#    output_uri - 
#
#
#>
######################################################################
p6_aws_machinelearning_batch_prediction_create() {
    local batch_prediction_id="$1"
    local ml_model_id="$2"
    local batch_prediction_data_source_id="$3"
    local output_uri="$4"
    shift 4

    p6_run_write_cmd aws machinelearning create-batch-prediction --batch-prediction-id $batch_prediction_id --ml-model-id $ml_model_id --batch-prediction-data-source-id $batch_prediction_data_source_id --output-uri $output_uri "$@"
}