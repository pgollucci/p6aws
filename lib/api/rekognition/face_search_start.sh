######################################################################
#<
#
# Function:
#	p6_aws_rekognition_face_search_start(video, collection_id)
#
#  Args:
#	video - 
#	collection_id - 
#
#>
######################################################################
p6_aws_rekognition_face_search_start() {
    local video="$1"
    local collection_id="$2"
    shift 2

    p6_run_write_cmd aws rekognition start-face-search --video $video --collection-id $collection_id "$@"
}