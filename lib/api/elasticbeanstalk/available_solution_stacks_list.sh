######################################################################
#<
#
# Function:
#      = p6_aws_elasticbeanstalk_available_solution_stacks_list()
#
#
#
#>
######################################################################
p6_aws_elasticbeanstalk_available_solution_stacks_list() {

    p6_run_read_cmd aws elasticbeanstalk list-available-solution-stacks "$@"
}