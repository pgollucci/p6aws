######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_evaluations_describe()
#
#>
######################################################################
p6_aws_machinelearning_evaluations_describe() {

    p6_run_read_cmd aws machinelearning describe-evaluations "$@"
}