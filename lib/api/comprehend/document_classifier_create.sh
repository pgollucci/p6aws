######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_document_classifier_create(document_classifier_name, data_access_role_arn, input_data_config, language_code)
#
# Arg(s):
#    document_classifier_name - 
#    data_access_role_arn - 
#    input_data_config - 
#    language_code - 
#
#
#>
######################################################################
p6_aws_comprehend_document_classifier_create() {
    local document_classifier_name="$1"
    local data_access_role_arn="$2"
    local input_data_config="$3"
    local language_code="$4"
    shift 4

    p6_run_write_cmd aws comprehend create-document-classifier --document-classifier-name $document_classifier_name --data-access-role-arn $data_access_role_arn --input-data-config $input_data_config --language-code $language_code "$@"
}