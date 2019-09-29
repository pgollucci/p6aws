######################################################################
#<
#
# Function:
#      = p6_aws_rekognition_collection_create(collection_id)
#
# Arg(s):
#    collection_id - 
#
#
#>
######################################################################
p6_aws_rekognition_collection_create() {
    local collection_id="$1"
    shift 1

    p6_run_write_cmd aws rekognition create-collection --collection-id $collection_id "$@"
}