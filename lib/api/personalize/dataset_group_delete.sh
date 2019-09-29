######################################################################
#<
#
# Function:
#      = p6_aws_personalize_dataset_group_delete(dataset_group_arn)
#
# Arg(s):
#    dataset_group_arn - 
#
#
#>
######################################################################
p6_aws_personalize_dataset_group_delete() {
    local dataset_group_arn="$1"
    shift 1

    p6_run_write_cmd aws personalize delete-dataset-group --dataset-group-arn $dataset_group_arn "$@"
}