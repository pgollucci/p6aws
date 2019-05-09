p6_aws_translate_terminology_import() {
    local name="$1"
    local merge_strategy="$2"
    local data_file="$3"
    shift 3

    p6_log_or_run aws translate import-terminology --name $name --merge-strategy $merge_strategy --data-file $data_file "$@"
}
