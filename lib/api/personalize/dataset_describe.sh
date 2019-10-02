######################################################################
#<
#
# Function:
#	p6_aws_personalize_dataset_describe(dataset_arn)
#
#  Args:
#	dataset_arn - 
#
#>
######################################################################
p6_aws_personalize_dataset_describe() {
    local dataset_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-dataset --dataset-arn $dataset_arn "$@"
}