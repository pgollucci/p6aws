######################################################################
#<
#
# Function:
#	p6_aws_personalize_solution_version_create(solution_arn)
#
#  Args:
#	solution_arn - 
#
#>
######################################################################
p6_aws_personalize_solution_version_create() {
    local solution_arn="$1"
    shift 1

    p6_run_write_cmd aws personalize create-solution-version --solution-arn $solution_arn "$@"
}