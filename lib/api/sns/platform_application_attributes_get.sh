######################################################################
#<
#
# Function:
#	p6_aws_sns_platform_application_attributes_get(platform_application_arn)
#
#  Args:
#	platform_application_arn - 
#
#>
######################################################################
p6_aws_sns_platform_application_attributes_get() {
    local platform_application_arn="$1"
    shift 1

    p6_run_read_cmd aws sns get-platform-application-attributes --platform-application-arn $platform_application_arn "$@"
}