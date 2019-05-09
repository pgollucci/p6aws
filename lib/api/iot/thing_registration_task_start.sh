p6_aws_iot_thing_registration_task_start() {
    local template_body="$1"
    local input_file_bucket="$2"
    local input_file_key="$3"
    local role_arn="$4"
    shift 4

    p6_log_or_run aws iot start-thing-registration-task --template-body $template_body --input-file-bucket $input_file_bucket --input-file-key $input_file_key --role-arn $role_arn "$@"
}
