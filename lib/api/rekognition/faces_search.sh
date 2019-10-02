######################################################################
#<
#
# Function:
#	p6_aws_rekognition_faces_search(collection_id, face_id)
#
#  Args:
#	collection_id - 
#	face_id - 
#
#>
######################################################################
p6_aws_rekognition_faces_search() {
    local collection_id="$1"
    local face_id="$2"
    shift 2

    p6_run_write_cmd aws rekognition search-faces --collection-id $collection_id --face-id $face_id "$@"
}