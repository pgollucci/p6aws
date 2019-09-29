######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_document_classification_jobs_list()
#
#
#
#>
######################################################################
p6_aws_comprehend_document_classification_jobs_list() {

    p6_run_read_cmd aws comprehend list-document-classification-jobs "$@"
}