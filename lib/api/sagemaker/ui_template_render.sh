p6_aws_sagemaker_ui_template_render() {
    local ui_template="$1"
    local task="$2"
    local role_arn="$3"
    shift 3

    p6_log_or_run aws sagemaker render-ui-template --ui-template $ui_template --task $task --role-arn $role_arn "$@"
}
