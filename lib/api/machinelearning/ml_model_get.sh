######################################################################
#<
#
# Function:
#      = p6_aws_machinelearning_ml_model_get(ml_model_id)
#
# Arg(s):
#    ml_model_id - 
#
#
#>
######################################################################
p6_aws_machinelearning_ml_model_get() {
    local ml_model_id="$1"
    shift 1

    p6_run_read_cmd aws machinelearning get-ml-model --ml-model-id $ml_model_id "$@"
}