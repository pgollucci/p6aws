######################################################################
#<
#
# Function:
#      = p6_aws_iotanalytics_dataset_delete(dataset_name)
#
# Arg(s):
#    dataset_name - 
#
#
#>
######################################################################
p6_aws_iotanalytics_dataset_delete() {
    local dataset_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics delete-dataset --dataset-name $dataset_name "$@"
}