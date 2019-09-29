######################################################################
#<
#
# Function:
#      = p6_aws_machinelearning_ml_model_create(ml_model_id, ml_model_type, training_data_source_id)
#
# Arg(s):
#    ml_model_id - 
#    ml_model_type - 
#    training_data_source_id - 
#
#
#>
######################################################################
p6_aws_machinelearning_ml_model_create() {
    local ml_model_id="$1"
    local ml_model_type="$2"
    local training_data_source_id="$3"
    shift 3

    p6_run_write_cmd aws machinelearning create-ml-model --ml-model-id $ml_model_id --ml-model-type $ml_model_type --training-data-source-id $training_data_source_id "$@"
}