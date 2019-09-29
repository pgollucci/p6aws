######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_enabled_standards_get()
#
#
#
#>
######################################################################
p6_aws_securityhub_enabled_standards_get() {

    p6_run_read_cmd aws securityhub get-enabled-standards "$@"
}