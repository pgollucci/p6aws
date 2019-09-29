######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_script_create()
#
#
#
#>
######################################################################
p6_aws_gamelift_script_create() {

    p6_run_write_cmd aws gamelift create-script "$@"
}