######################################################################
#<
#
# Function:
#      = p6_aws_application_insights_applications_list()
#
#
#
#>
######################################################################
p6_aws_application_insights_applications_list() {

    p6_run_read_cmd aws application-insights list-applications "$@"
}