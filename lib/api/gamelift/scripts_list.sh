######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_scripts_list()
#
#
#
#>
######################################################################
p6_aws_gamelift_scripts_list() {

    p6_run_read_cmd aws gamelift list-scripts "$@"
}