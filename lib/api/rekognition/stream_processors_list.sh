######################################################################
#<
#
# Function:
#	p6_aws_rekognition_stream_processors_list()
#
#>
######################################################################
p6_aws_rekognition_stream_processors_list() {

    p6_run_read_cmd aws rekognition list-stream-processors "$@"
}