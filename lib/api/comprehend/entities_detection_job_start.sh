######################################################################
#<
#
# Function:
#	p6_aws_comprehend_entities_detection_job_start(input_data_config, output_data_config, data_access_role_arn, language_code)
#
#  Args:
#	input_data_config - 
#	output_data_config - 
#	data_access_role_arn - 
#	language_code - 
#
#>
######################################################################
p6_aws_comprehend_entities_detection_job_start() {
    local input_data_config="$1"
    local output_data_config="$2"
    local data_access_role_arn="$3"
    local language_code="$4"
    shift 4

    p6_run_write_cmd aws comprehend start-entities-detection-job --input-data-config $input_data_config --output-data-config $output_data_config --data-access-role-arn $data_access_role_arn --language-code $language_code "$@"
}