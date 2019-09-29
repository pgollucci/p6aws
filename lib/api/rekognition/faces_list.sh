######################################################################
#<
#
# Function:
#      = p6_aws_rekognition_faces_list(collection_id)
#
# Arg(s):
#    collection_id - 
#
#
#>
######################################################################
p6_aws_rekognition_faces_list() {
    local collection_id="$1"
    shift 1

    p6_run_read_cmd aws rekognition list-faces --collection-id $collection_id "$@"
}