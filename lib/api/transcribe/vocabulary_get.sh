p6_aws_transcribe_vocabulary_get() {
    local vocabulary_name="$1"
    shift 1

    p6_log_and_run aws transcribe get-vocabulary --vocabulary-name $vocabulary_name "$@"
}
