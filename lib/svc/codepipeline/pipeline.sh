######################################################################
#<
#
# Function: p6_aws_svc_codepipeline_list()
#
#>
######################################################################
p6_aws_svc_codepipeline_list() {

	p6_aws_cli_cmd codepipeline \
		list-pipelines \
		--output text \
		--query "'pipelines[].[name, version, created, updated]'"
}
