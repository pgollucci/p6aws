######################################################################
#<
#
# Function:
#	p6_aws_iot_audit_findings_list()
#
#>
######################################################################
p6_aws_iot_audit_findings_list() {

    p6_run_read_cmd aws iot list-audit-findings "$@"
}