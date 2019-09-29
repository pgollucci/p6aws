######################################################################
#<
#
# Function:
#      = p6_aws_personalize_recipes_list()
#
#
#
#>
######################################################################
p6_aws_personalize_recipes_list() {

    p6_run_read_cmd aws personalize list-recipes "$@"
}