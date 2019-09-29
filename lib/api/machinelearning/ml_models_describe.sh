######################################################################
#<
#
# Function:
#      = p6_aws_machinelearning_ml_models_describe()
#
#
#
#>
######################################################################
p6_aws_machinelearning_ml_models_describe() {

    p6_run_read_cmd aws machinelearning describe-ml-models "$@"
}