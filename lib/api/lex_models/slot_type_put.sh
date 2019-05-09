p6_aws_lex_models_slot_type_put() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws lex-models put-slot-type --name $name "$@"
}
