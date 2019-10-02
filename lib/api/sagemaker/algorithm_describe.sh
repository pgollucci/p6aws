######################################################################
#<
#
# Function:
#	p6_aws_sagemaker_algorithm_describe(algorithm_name)
#
#  Args:
#	algorithm_name - 
#
#>
######################################################################
p6_aws_sagemaker_algorithm_describe() {
    local algorithm_name="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-algorithm --algorithm-name $algorithm_name "$@"
}