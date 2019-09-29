######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_custom_action_type_create(category, provider, input_artifact_details, output_artifact_details, action_version)
#
# Arg(s):
#    category - 
#    provider - 
#    input_artifact_details - 
#    output_artifact_details - 
#    action_version - 
#
#
#>
######################################################################
p6_aws_codepipeline_custom_action_type_create() {
    local category="$1"
    local provider="$2"
    local input_artifact_details="$3"
    local output_artifact_details="$4"
    local action_version="$5"
    shift 5

    p6_run_write_cmd aws codepipeline create-custom-action-type --category $category --provider $provider --input-artifact-details $input_artifact_details --output-artifact-details $output_artifact_details --action-version $action_version "$@"
}