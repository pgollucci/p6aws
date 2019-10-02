######################################################################
#<
#
# Function:
#	p6_aws_rekognition_collection_describe(collection_id)
#
#  Args:
#	collection_id - 
#
#>
######################################################################
p6_aws_rekognition_collection_describe() {
    local collection_id="$1"
    shift 1

    p6_run_read_cmd aws rekognition describe-collection --collection-id $collection_id "$@"
}