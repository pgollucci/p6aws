######################################################################
#<
#
# Function:
#      = p6_aws_personalize_solutions_list()
#
#
#
#>
######################################################################
p6_aws_personalize_solutions_list() {

    p6_run_read_cmd aws personalize list-solutions "$@"
}