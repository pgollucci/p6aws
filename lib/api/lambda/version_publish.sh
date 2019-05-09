p6_aws_lambda_version_publish() {
    local function_name="$1"
    shift 1

    p6_log_or_run aws lambda publish-version --function-name $function_name "$@"
}
