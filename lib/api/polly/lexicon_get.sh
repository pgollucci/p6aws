p6_aws_polly_lexicon_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws polly get-lexicon --name $name "$@"
}
