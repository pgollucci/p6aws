######################################################################
#<
#
# Function:
#      = p6_aws_rekognition_moderation_labels_detect()
#
#
#
#>
######################################################################
p6_aws_rekognition_moderation_labels_detect() {

    p6_run_write_cmd aws rekognition detect-moderation-labels "$@"
}