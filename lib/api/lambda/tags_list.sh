p6_aws_lambda_tags_list() {
    local resource="$1"
    shift 1

    p6_run_read_cmd aws lambda list-tags --resource $resource "$@"
}
