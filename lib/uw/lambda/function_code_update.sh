p6_aws_lambda_publish() {
        local function_name="$1"
        shift 1

    cond_log_and_run aws lambda update-function-code --function-name $function_name --publish "$@"
}

p6_aws_lambda_run() {
        local function_name="$1"
        shift 1

    cond_log_and_run aws lambda update-function-code --function-name $function_name --dry-run "$@"
}

