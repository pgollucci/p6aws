######################################################################
#<
#
# Function:
#      = p6_aws_machinelearning_ml_model_delete(ml_model_id)
#
# Arg(s):
#    ml_model_id - 
#
#
#>
######################################################################
p6_aws_machinelearning_ml_model_delete() {
    local ml_model_id="$1"
    shift 1

    p6_run_write_cmd aws machinelearning delete-ml-model --ml-model-id $ml_model_id "$@"
}