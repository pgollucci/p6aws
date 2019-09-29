######################################################################
#<
#
# Function:
#      = p6_aws_personalize_solution_create(name, dataset_group_arn)
#
# Arg(s):
#    name - 
#    dataset_group_arn - 
#
#
#>
######################################################################
p6_aws_personalize_solution_create() {
    local name="$1"
    local dataset_group_arn="$2"
    shift 2

    p6_run_write_cmd aws personalize create-solution --name $name --dataset-group-arn $dataset_group_arn "$@"
}