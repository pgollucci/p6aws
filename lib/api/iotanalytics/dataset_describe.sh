######################################################################
#<
#
# Function:
#	p6_aws_iotanalytics_dataset_describe(dataset_name)
#
#  Args:
#	dataset_name - 
#
#>
######################################################################
p6_aws_iotanalytics_dataset_describe() {
    local dataset_name="$1"
    shift 1

    p6_run_read_cmd aws iotanalytics describe-dataset --dataset-name $dataset_name "$@"
}