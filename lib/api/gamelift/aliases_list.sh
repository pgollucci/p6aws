######################################################################
#<
#
# Function:
#	p6_aws_gamelift_aliases_list()
#
#>
######################################################################
p6_aws_gamelift_aliases_list() {

    p6_run_read_cmd aws gamelift list-aliases "$@"
}