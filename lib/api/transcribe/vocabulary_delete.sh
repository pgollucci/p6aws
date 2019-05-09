p6_aws_transcribe_vocabulary_delete() {
    local vocabulary_name="$1"
    shift 1

    p6_log_or_run aws transcribe delete-vocabulary --vocabulary-name $vocabulary_name "$@"
}
