p6_aws_polly_lexicon_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws polly delete-lexicon --name $name "$@"
}
