######################################################################
#<
#
# Function:
#	p6_aws_ecr_image_tag_mutability_put(repository_name, image_tag_mutability)
#
#  Args:
#	repository_name - 
#	image_tag_mutability - 
#
#>
######################################################################
p6_aws_ecr_image_tag_mutability_put() {
    local repository_name="$1"
    local image_tag_mutability="$2"
    shift 2

    p6_run_write_cmd aws ecr put-image-tag-mutability --repository-name $repository_name --image-tag-mutability $image_tag_mutability "$@"
}