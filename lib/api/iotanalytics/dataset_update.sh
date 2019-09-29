######################################################################
#<
#
# Function:
#      = p6_aws_iotanalytics_dataset_update(dataset_name, actions)
#
# Arg(s):
#    dataset_name - 
#    actions - 
#
#
#>
######################################################################
p6_aws_iotanalytics_dataset_update() {
    local dataset_name="$1"
    local actions="$2"
    shift 2

    p6_run_write_cmd aws iotanalytics update-dataset --dataset-name $dataset_name --actions $actions "$@"
}