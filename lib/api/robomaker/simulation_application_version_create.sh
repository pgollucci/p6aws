######################################################################
#<
#
# Function:
#      = p6_aws_robomaker_simulation_application_version_create(application)
#
# Arg(s):
#    application - 
#
#
#>
######################################################################
p6_aws_robomaker_simulation_application_version_create() {
    local application="$1"
    shift 1

    p6_run_write_cmd aws robomaker create-simulation-application-version --application $application "$@"
}