p6_aws_configservice_evaluations_put() {
    local result_token="$1"
    shift 1

    p6_run_write_cmd aws configservice put-evaluations --result-token $result_token "$@"
}
