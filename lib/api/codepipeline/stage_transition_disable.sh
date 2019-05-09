p6_aws_codepipeline_stage_transition_disable() {
    local pipeline_name="$1"
    local stage_name="$2"
    local transition_type="$3"
    local reason="$4"
    shift 4

    p6_run_write_cmd aws codepipeline disable-stage-transition --pipeline-name $pipeline_name --stage-name $stage_name --transition-type $transition_type --reason $reason "$@"
}
