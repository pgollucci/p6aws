######################################################################
#<
#
# Function:
#	p6_aws_inspector_findings_describe(finding_arns)
#
#  Args:
#	finding_arns - 
#
#>
######################################################################
p6_aws_inspector_findings_describe() {
    local finding_arns="$1"
    shift 1

    p6_run_read_cmd aws inspector describe-findings --finding-arns $finding_arns "$@"
}