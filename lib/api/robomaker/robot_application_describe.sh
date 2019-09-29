######################################################################
#<
#
# Function:
#      = p6_aws_robomaker_robot_application_describe(application)
#
# Arg(s):
#    application - 
#
#
#>
######################################################################
p6_aws_robomaker_robot_application_describe() {
    local application="$1"
    shift 1

    p6_run_read_cmd aws robomaker describe-robot-application --application $application "$@"
}