p6_aws_comprehend_training_entity_recognizer_stop() {
    local entity_recognizer_arn="$1"
    shift 1

    p6_run_write_cmd aws comprehend stop-training-entity-recognizer --entity-recognizer-arn $entity_recognizer_arn "$@"
}
