p6_aws_mturk_review_policy_results_for_hit_list() {
    local hit_id="$1"
    shift 1

    p6_run_read_cmd aws mturk list-review-policy-results-for-hit --hit-id $hit_id "$@"
}
