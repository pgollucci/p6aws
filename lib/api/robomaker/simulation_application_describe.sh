######################################################################
#<
#
# Function:
#	p6_aws_robomaker_simulation_application_describe(application)
#
#  Args:
#	application - 
#
#>
######################################################################
p6_aws_robomaker_simulation_application_describe() {
    local application="$1"
    shift 1

    p6_run_read_cmd aws robomaker describe-simulation-application --application $application "$@"
}