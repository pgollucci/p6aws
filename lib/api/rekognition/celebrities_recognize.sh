######################################################################
#<
#
# Function:
#	p6_aws_rekognition_celebrities_recognize()
#
#>
######################################################################
p6_aws_rekognition_celebrities_recognize() {

    p6_run_write_cmd aws rekognition recognize-celebrities "$@"
}