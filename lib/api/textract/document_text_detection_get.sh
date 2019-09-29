######################################################################
#<
#
# Function:
#      = p6_aws_textract_document_text_detection_get(job_id)
#
# Arg(s):
#    job_id - 
#
#
#>
######################################################################
p6_aws_textract_document_text_detection_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws textract get-document-text-detection --job-id $job_id "$@"
}