p6_aws_inspector_assessment_target_update() {
    local assessment_target_arn="$1"
    local assessment_target_name="$2"
    shift 2

    p6_log_and_run aws inspector update-assessment-target --assessment-target-arn $assessment_target_arn --assessment-target-name $assessment_target_name "$@"
}
