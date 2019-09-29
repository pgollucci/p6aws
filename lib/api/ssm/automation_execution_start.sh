######################################################################
#<
#
# Function:
#      = p6_aws_ssm_automation_execution_start(document_name)
#
# Arg(s):
#    document_name - 
#
#
#>
######################################################################
p6_aws_ssm_automation_execution_start() {
    local document_name="$1"
    shift 1

    p6_run_write_cmd aws ssm start-automation-execution --document-name $document_name "$@"
}