######################################################################
#<
#
# Function:
#      = p6_aws_inspector_assessment_report_get(assessment_run_arn, report_file_format, report_type)
#
# Arg(s):
#    assessment_run_arn - 
#    report_file_format - 
#    report_type - 
#
#
#>
######################################################################
p6_aws_inspector_assessment_report_get() {
    local assessment_run_arn="$1"
    local report_file_format="$2"
    local report_type="$3"
    shift 3

    p6_run_read_cmd aws inspector get-assessment-report --assessment-run-arn $assessment_run_arn --report-file-format $report_file_format --report-type $report_type "$@"
}