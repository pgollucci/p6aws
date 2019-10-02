######################################################################
#<
#
# Function:
#	p6_aws_kinesis_stream_consumer_deregister()
#
#>
######################################################################
p6_aws_kinesis_stream_consumer_deregister() {

    p6_run_write_cmd aws kinesis deregister-stream-consumer "$@"
}