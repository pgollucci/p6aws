######################################################################
#<
#
# Function:
#      = p6_aws_ecr_layer_upload_complete(repository_name, upload_id, layer_digests)
#
# Arg(s):
#    repository_name - 
#    upload_id - 
#    layer_digests - 
#
#
#>
######################################################################
p6_aws_ecr_layer_upload_complete() {
    local repository_name="$1"
    local upload_id="$2"
    local layer_digests="$3"
    shift 3

    p6_run_write_cmd aws ecr complete-layer-upload --repository-name $repository_name --upload-id $upload_id --layer-digests $layer_digests "$@"
}