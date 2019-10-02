######################################################################
#<
#
# Function:
#	p6_aws_securityhub_findings_update(filters)
#
#  Args:
#	filters - 
#
#>
######################################################################
p6_aws_securityhub_findings_update() {
    local filters="$1"
    shift 1

    p6_run_write_cmd aws securityhub update-findings --filters $filters "$@"
}