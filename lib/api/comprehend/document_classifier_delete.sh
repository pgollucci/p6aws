######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_document_classifier_delete(document_classifier_arn)
#
# Arg(s):
#    document_classifier_arn - 
#
#
#>
######################################################################
p6_aws_comprehend_document_classifier_delete() {
    local document_classifier_arn="$1"
    shift 1

    p6_run_write_cmd aws comprehend delete-document-classifier --document-classifier-arn $document_classifier_arn "$@"
}