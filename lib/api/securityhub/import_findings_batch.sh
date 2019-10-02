######################################################################
#<
#
# Function:
#	p6_aws_securityhub_import_findings_batch(findings)
#
#  Args:
#	findings - 
#
#>
######################################################################
p6_aws_securityhub_import_findings_batch() {
    local findings="$1"
    shift 1

    p6_run_write_cmd aws securityhub batch-import-findings --findings $findings "$@"
}