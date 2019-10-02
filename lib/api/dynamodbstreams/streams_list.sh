######################################################################
#<
#
# Function:
#	p6_aws_dynamodbstreams_streams_list()
#
#>
######################################################################
p6_aws_dynamodbstreams_streams_list() {

    p6_run_read_cmd aws dynamodbstreams list-streams "$@"
}