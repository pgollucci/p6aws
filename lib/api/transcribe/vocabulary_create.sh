p6_aws_transcribe_vocabulary_create() {
    local vocabulary_name="$1"
    local language_code="$2"
    shift 2

    p6_run_write_cmd aws transcribe create-vocabulary --vocabulary-name $vocabulary_name --language-code $language_code "$@"
}
