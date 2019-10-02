######################################################################
#<
#
# Function:
#	p6_aws_ecr_images_describe(repository_name)
#
#  Args:
#	repository_name - 
#
#>
######################################################################
p6_aws_ecr_images_describe() {
    local repository_name="$1"
    shift 1

    p6_run_read_cmd aws ecr describe-images --repository-name $repository_name "$@"
}