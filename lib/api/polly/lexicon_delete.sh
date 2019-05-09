p6_aws_polly_lexicon_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws polly delete-lexicon --name $name "$@"
}
