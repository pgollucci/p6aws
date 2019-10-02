######################################################################
#<
#
# Function:
#	p6_aws_rekognition_faces_by_image_search(collection_id)
#
#  Args:
#	collection_id - 
#
#>
######################################################################
p6_aws_rekognition_faces_by_image_search() {
    local collection_id="$1"
    shift 1

    p6_run_write_cmd aws rekognition search-faces-by-image --collection-id $collection_id "$@"
}