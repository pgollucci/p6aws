######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_findings_get()
#
#
#
#>
######################################################################
p6_aws_securityhub_findings_get() {

    p6_run_read_cmd aws securityhub get-findings "$@"
}