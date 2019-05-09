p6_aws_personalize_feature_transformation_describe() {
    local feature_transformation_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-feature-transformation --feature-transformation-arn $feature_transformation_arn "$@"
}
