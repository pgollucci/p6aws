######################################################################
#<
#
# Function:
#      = p6_aws_textract_document_text_detection_start(document_location)
#
# Arg(s):
#    document_location - 
#
#
#>
######################################################################
p6_aws_textract_document_text_detection_start() {
    local document_location="$1"
    shift 1

    p6_run_write_cmd aws textract start-document-text-detection --document-location $document_location "$@"
}