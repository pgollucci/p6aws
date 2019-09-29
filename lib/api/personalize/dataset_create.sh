######################################################################
#<
#
# Function:
#      = p6_aws_personalize_dataset_create(name, schema_arn, dataset_group_arn, dataset_type)
#
# Arg(s):
#    name - 
#    schema_arn - 
#    dataset_group_arn - 
#    dataset_type - 
#
#
#>
######################################################################
p6_aws_personalize_dataset_create() {
    local name="$1"
    local schema_arn="$2"
    local dataset_group_arn="$3"
    local dataset_type="$4"
    shift 4

    p6_run_write_cmd aws personalize create-dataset --name $name --schema-arn $schema_arn --dataset-group-arn $dataset_group_arn --dataset-type $dataset_type "$@"
}