######################################################################
#<
#
# Function:
#	p6_aws_comprehend_document_classification_job_start(document_classifier_arn, input_data_config, output_data_config, data_access_role_arn)
#
#  Args:
#	document_classifier_arn - 
#	input_data_config - 
#	output_data_config - 
#	data_access_role_arn - 
#
#>
######################################################################
p6_aws_comprehend_document_classification_job_start() {
    local document_classifier_arn="$1"
    local input_data_config="$2"
    local output_data_config="$3"
    local data_access_role_arn="$4"
    shift 4

    p6_run_write_cmd aws comprehend start-document-classification-job --document-classifier-arn $document_classifier_arn --input-data-config $input_data_config --output-data-config $output_data_config --data-access-role-arn $data_access_role_arn "$@"
}