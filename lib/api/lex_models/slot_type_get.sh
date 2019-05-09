p6_aws_lex_models_slot_type_get() {
    local name="$1"
    local slot_type_version="$2"
    shift 2

    p6_log_and_run aws lex-models get-slot-type --name $name --slot-type-version $slot_type_version "$@"
}
