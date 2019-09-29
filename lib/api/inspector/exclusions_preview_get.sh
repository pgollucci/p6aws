######################################################################
#<
#
# Function:
#      = p6_aws_inspector_exclusions_preview_get(assessment_template_arn, preview_token)
#
# Arg(s):
#    assessment_template_arn - 
#    preview_token - 
#
#
#>
######################################################################
p6_aws_inspector_exclusions_preview_get() {
    local assessment_template_arn="$1"
    local preview_token="$2"
    shift 2

    p6_run_read_cmd aws inspector get-exclusions-preview --assessment-template-arn $assessment_template_arn --preview-token $preview_token "$@"
}