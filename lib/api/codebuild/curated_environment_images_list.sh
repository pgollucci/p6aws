######################################################################
#<
#
# Function:
#	p6_aws_codebuild_curated_environment_images_list()
#
#>
######################################################################
p6_aws_codebuild_curated_environment_images_list() {

    p6_run_read_cmd aws codebuild list-curated-environment-images "$@"
}