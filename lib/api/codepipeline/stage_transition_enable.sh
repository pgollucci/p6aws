######################################################################
#<
#
# Function:
#	p6_aws_codepipeline_stage_transition_enable(pipeline_name, stage_name, transition_type)
#
#  Args:
#	pipeline_name - 
#	stage_name - 
#	transition_type - 
#
#>
######################################################################
p6_aws_codepipeline_stage_transition_enable() {
    local pipeline_name="$1"
    local stage_name="$2"
    local transition_type="$3"
    shift 3

    p6_run_write_cmd aws codepipeline enable-stage-transition --pipeline-name $pipeline_name --stage-name $stage_name --transition-type $transition_type "$@"
}