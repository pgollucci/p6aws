######################################################################
#<
#
# Function:
#      = p6_aws_iotanalytics_dataset_content_create(dataset_name)
#
# Arg(s):
#    dataset_name - 
#
#
#>
######################################################################
p6_aws_iotanalytics_dataset_content_create() {
    local dataset_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics create-dataset-content --dataset-name $dataset_name "$@"
}