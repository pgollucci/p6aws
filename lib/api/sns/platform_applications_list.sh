######################################################################
#<
#
# Function:
#	p6_aws_sns_platform_applications_list()
#
#>
######################################################################
p6_aws_sns_platform_applications_list() {

    p6_run_read_cmd aws sns list-platform-applications "$@"
}