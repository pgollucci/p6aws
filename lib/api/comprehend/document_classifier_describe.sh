######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_document_classifier_describe(document_classifier_arn)
#
# Arg(s):
#    document_classifier_arn - 
#
#
#>
######################################################################
p6_aws_comprehend_document_classifier_describe() {
    local document_classifier_arn="$1"
    shift 1

    p6_run_read_cmd aws comprehend describe-document-classifier --document-classifier-arn $document_classifier_arn "$@"
}