p6_aws_personalize_solution_delete() {
    local solution_arn="$1"
    shift 1

    p6_run_write_cmd aws personalize delete-solution --solution-arn $solution_arn "$@"
}
