p6_aws_sagemaker_labeling_job_create() {
    local labeling_job_name="$1"
    local label_attribute_name="$2"
    local input_config="$3"
    local output_config="$4"
    local role_arn="$5"
    local human_task_config="$6"
    shift 6

    p6_run_write_cmd aws sagemaker create-labeling-job --labeling-job-name $labeling_job_name --label-attribute-name $label_attribute_name --input-config $input_config --output-config $output_config --role-arn $role_arn --human-task-config $human_task_config "$@"
}
