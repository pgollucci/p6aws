######################################################################
#<
#
# Function:
#	p6_aws_rekognition_text_detect()
#
#>
######################################################################
p6_aws_rekognition_text_detect() {

    p6_run_write_cmd aws rekognition detect-text "$@"
}