######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_stream_consumer_describe()
#
#
#
#>
######################################################################
p6_aws_kinesis_stream_consumer_describe() {

    p6_run_read_cmd aws kinesis describe-stream-consumer "$@"
}