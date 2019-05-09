p6_aws_polly_lexicon_put() {
    local name="$1"
    local content="$2"
    shift 2

    p6_log_or_run aws polly put-lexicon --name $name --content $content "$@"
}
