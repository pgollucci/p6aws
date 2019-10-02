######################################################################
#<
#
# Function:
#	p6_aws_codepipeline_action_types_list()
#
#>
######################################################################
p6_aws_codepipeline_action_types_list() {

    p6_run_read_cmd aws codepipeline list-action-types "$@"
}