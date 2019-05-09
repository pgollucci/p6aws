p6_aws_personalize_solution_describe() {
    local solution_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-solution --solution-arn $solution_arn "$@"
}
