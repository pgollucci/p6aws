p6_aws_transcribe_vocabulary_create() {
    local vocabulary_name="$1"
    local language_code="$2"
    local phrases="$3"
    shift 3

    p6_log_or_run aws transcribe create-vocabulary --vocabulary-name $vocabulary_name --language-code $language_code --phrases $phrases "$@"
}
