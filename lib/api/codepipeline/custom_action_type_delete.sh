######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_custom_action_type_delete(category, provider, action_version)
#
# Arg(s):
#    category - 
#    provider - 
#    action_version - 
#
#
#>
######################################################################
p6_aws_codepipeline_custom_action_type_delete() {
    local category="$1"
    local provider="$2"
    local action_version="$3"
    shift 3

    p6_run_write_cmd aws codepipeline delete-custom-action-type --category $category --provider $provider --action-version $action_version "$@"
}