######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_dominant_language_detection_job_start(input_data_config, output_data_config, data_access_role_arn)
#
# Arg(s):
#    input_data_config - 
#    output_data_config - 
#    data_access_role_arn - 
#
#
#>
######################################################################
p6_aws_comprehend_dominant_language_detection_job_start() {
    local input_data_config="$1"
    local output_data_config="$2"
    local data_access_role_arn="$3"
    shift 3

    p6_run_write_cmd aws comprehend start-dominant-language-detection-job --input-data-config $input_data_config --output-data-config $output_data_config --data-access-role-arn $data_access_role_arn "$@"
}