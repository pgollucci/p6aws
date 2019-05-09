p6_aws_personalize_algorithm_describe() {
    local algorithm_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-algorithm --algorithm-arn $algorithm_arn "$@"
}
