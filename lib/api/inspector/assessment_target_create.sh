p6_aws_inspector_assessment_target_create() {
    local assessment_target_name="$1"
    shift 1

    p6_log_and_run aws inspector create-assessment-target --assessment-target-name $assessment_target_name "$@"
}
