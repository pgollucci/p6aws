######################################################################
#<
#
# Function:
#	p6_aws_kinesisvideo_stream_describe()
#
#>
######################################################################
p6_aws_kinesisvideo_stream_describe() {

    p6_run_read_cmd aws kinesisvideo describe-stream "$@"
}