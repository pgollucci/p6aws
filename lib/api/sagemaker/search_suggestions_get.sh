p6_aws_sagemaker_search_suggestions_get() {
    local resource="$1"
    shift 1

    p6_log_and_run aws sagemaker get-search-suggestions --resource $resource "$@"
}
