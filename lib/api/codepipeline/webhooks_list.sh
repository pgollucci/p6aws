######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_webhooks_list()
#
#
#
#>
######################################################################
p6_aws_codepipeline_webhooks_list() {

    p6_run_read_cmd aws codepipeline list-webhooks "$@"
}