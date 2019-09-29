######################################################################
#<
#
# Function:
#      = p6_aws_inspector_assessment_target_create(assessment_target_name)
#
# Arg(s):
#    assessment_target_name - 
#
#
#>
######################################################################
p6_aws_inspector_assessment_target_create() {
    local assessment_target_name="$1"
    shift 1

    p6_run_read_cmd aws inspector create-assessment-target --assessment-target-name $assessment_target_name "$@"
}