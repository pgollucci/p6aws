######################################################################
#<
#
# Function:
#	p6_aws_codebuild_builds_list()
#
#>
######################################################################
p6_aws_codebuild_builds_list() {

    p6_run_read_cmd aws codebuild list-builds "$@"
}