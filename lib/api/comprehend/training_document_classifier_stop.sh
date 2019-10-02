######################################################################
#<
#
# Function:
#	p6_aws_comprehend_training_document_classifier_stop(document_classifier_arn)
#
#  Args:
#	document_classifier_arn - 
#
#>
######################################################################
p6_aws_comprehend_training_document_classifier_stop() {
    local document_classifier_arn="$1"
    shift 1

    p6_run_write_cmd aws comprehend stop-training-document-classifier --document-classifier-arn $document_classifier_arn "$@"
}