######################################################################
#<
#
# Function:
#	p6_aws_personalize_recipe_describe(recipe_arn)
#
#  Args:
#	recipe_arn - 
#
#>
######################################################################
p6_aws_personalize_recipe_describe() {
    local recipe_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-recipe --recipe-arn $recipe_arn "$@"
}