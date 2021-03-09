######################################################################
#<
#
# Function: p6_aws_codepipeline_svc_list()
#
#>
######################################################################
p6_aws_codepipeline_svc_list() {

    p6_aws_cmd codepipeline \
	       list-pipelines \
	       --output text \
	       --query "'pipelines[].[name, version, created, updated]'"
}