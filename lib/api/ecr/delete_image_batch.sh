######################################################################
#<
#
# Function:
#      = p6_aws_ecr_delete_image_batch(repository_name, image_ids)
#
# Arg(s):
#    repository_name - 
#    image_ids - 
#
#
#>
######################################################################
p6_aws_ecr_delete_image_batch() {
    local repository_name="$1"
    local image_ids="$2"
    shift 2

    p6_run_write_cmd aws ecr batch-delete-image --repository-name $repository_name --image-ids $image_ids "$@"
}