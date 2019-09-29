######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_registration_task_start(template_body, input_file_bucket, input_file_key, role_arn)
#
# Arg(s):
#    template_body - 
#    input_file_bucket - 
#    input_file_key - 
#    role_arn - 
#
#
#>
######################################################################
p6_aws_iot_thing_registration_task_start() {
    local template_body="$1"
    local input_file_bucket="$2"
    local input_file_key="$3"
    local role_arn="$4"
    shift 4

    p6_run_write_cmd aws iot start-thing-registration-task --template-body $template_body --input-file-bucket $input_file_bucket --input-file-key $input_file_key --role-arn $role_arn "$@"
}